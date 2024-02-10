(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1707573214)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl234477_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241038 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl234477_ __tmp241038))
           (let ()
             (declare (not safe))
             (table-set! _tbl234477_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234477_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234477_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234477_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl234477_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx234460_ . _args234462_)
        (let ((__tmp241040
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234462_)
                     (gxc#compile-e__0 _stx234460_)
                     (let ((_arg1234467_ (car _args234462_))
                           (_rest234469_ (cdr _args234462_)))
                       (if (null? _rest234469_)
                           (gxc#compile-e__1 _stx234460_ _arg1234467_)
                           (let ((_arg2234472_ (car _rest234469_))
                                 (_rest234474_ (cdr _rest234469_)))
                             (if (null? _rest234474_)
                                 (gxc#compile-e__2
                                  _stx234460_
                                  _arg1234467_
                                  _arg2234472_)
                                 (apply gxc#compile-e
                                        _stx234460_
                                        _arg1234467_
                                        _arg2234472_
                                        _rest234474_))))))))
              (__tmp241039 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp241040
           gxc#current-compile-methods
           __tmp241039))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl234457_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241041 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl234457_ __tmp241041))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234457_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234457_ '%#call gxc#basic-expression-type-call%))
           _tbl234457_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx234440_ . _args234442_)
        (let ((__tmp241043
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234442_)
                     (gxc#compile-e__0 _stx234440_)
                     (let ((_arg1234447_ (car _args234442_))
                           (_rest234449_ (cdr _args234442_)))
                       (if (null? _rest234449_)
                           (gxc#compile-e__1 _stx234440_ _arg1234447_)
                           (let ((_arg2234452_ (car _rest234449_))
                                 (_rest234454_ (cdr _rest234449_)))
                             (if (null? _rest234454_)
                                 (gxc#compile-e__2
                                  _stx234440_
                                  _arg1234447_
                                  _arg2234452_)
                                 (apply gxc#compile-e
                                        _stx234440_
                                        _arg1234447_
                                        _arg2234452_
                                        _rest234454_))))))))
              (__tmp241042 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp241043
           gxc#current-compile-methods
           __tmp241042))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl234437_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241044 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl234437_ __tmp241044))
           (let ()
             (declare (not safe))
             (table-set! _tbl234437_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234437_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234437_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234437_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234437_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234437_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234437_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234437_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234437_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234437_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234437_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234437_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl234437_ '%#set! gxc#collect-body-setq%))
           _tbl234437_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx234420_ . _args234422_)
        (let ((__tmp241046
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234422_)
                     (gxc#compile-e__0 _stx234420_)
                     (let ((_arg1234427_ (car _args234422_))
                           (_rest234429_ (cdr _args234422_)))
                       (if (null? _rest234429_)
                           (gxc#compile-e__1 _stx234420_ _arg1234427_)
                           (let ((_arg2234432_ (car _rest234429_))
                                 (_rest234434_ (cdr _rest234429_)))
                             (if (null? _rest234434_)
                                 (gxc#compile-e__2
                                  _stx234420_
                                  _arg1234427_
                                  _arg2234432_)
                                 (apply gxc#compile-e
                                        _stx234420_
                                        _arg1234427_
                                        _arg2234432_
                                        _rest234434_))))))))
              (__tmp241045 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp241046
           gxc#current-compile-methods
           __tmp241045))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl234417_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241047 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl234417_ __tmp241047))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234417_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234417_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234417_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234417_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234417_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234417_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234417_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234417_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234417_ '%#ref gxc#basic-expression-type-ref%))
           _tbl234417_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx234400_ . _args234402_)
        (let ((__tmp241049
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234402_)
                     (gxc#compile-e__0 _stx234400_)
                     (let ((_arg1234407_ (car _args234402_))
                           (_rest234409_ (cdr _args234402_)))
                       (if (null? _rest234409_)
                           (gxc#compile-e__1 _stx234400_ _arg1234407_)
                           (let ((_arg2234412_ (car _rest234409_))
                                 (_rest234414_ (cdr _rest234409_)))
                             (if (null? _rest234414_)
                                 (gxc#compile-e__2
                                  _stx234400_
                                  _arg1234407_
                                  _arg2234412_)
                                 (apply gxc#compile-e
                                        _stx234400_
                                        _arg1234407_
                                        _arg2234412_
                                        _rest234414_))))))))
              (__tmp241048 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp241049
           gxc#current-compile-methods
           __tmp241048))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl234397_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241050 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl234397_ __tmp241050))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234397_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234397_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234397_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234397_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl234397_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx234380_ . _args234382_)
        (let ((__tmp241052
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234382_)
                     (gxc#compile-e__0 _stx234380_)
                     (let ((_arg1234387_ (car _args234382_))
                           (_rest234389_ (cdr _args234382_)))
                       (if (null? _rest234389_)
                           (gxc#compile-e__1 _stx234380_ _arg1234387_)
                           (let ((_arg2234392_ (car _rest234389_))
                                 (_rest234394_ (cdr _rest234389_)))
                             (if (null? _rest234394_)
                                 (gxc#compile-e__2
                                  _stx234380_
                                  _arg1234387_
                                  _arg2234392_)
                                 (apply gxc#compile-e
                                        _stx234380_
                                        _arg1234387_
                                        _arg2234392_
                                        _rest234394_))))))))
              (__tmp241051 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp241052
           gxc#current-compile-methods
           __tmp241051))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx234283_)
        (let* ((___stx238958238959_ _stx234283_)
               (_g234286234306_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx238958238959_)))))
          (let ((___kont238960238961_
                 (lambda (_L234350_ _L234351_)
                   (let ((_sym234369_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234351_))))
                     (if (let ((__tmp241053 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp241053 _sym234369_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym234369_))
                         (let ((_type234370234372_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L234350_))))
                           (if _type234370234372_
                               (let ((_type234375_ _type234370234372_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym234369_
                                  _type234375_))
                               '#f))))))
                (___kont238962238963_ (lambda () '#!void)))
            (let ((___match238991238992_
                   (lambda (_e234292234318_
                            _hd234291234321_
                            _tl234290234323_
                            _e234295234326_
                            _hd234294234329_
                            _tl234293234331_
                            _e234298234334_
                            _hd234297234337_
                            _tl234296234339_
                            _e234301234342_
                            _hd234300234345_
                            _tl234299234347_)
                     (let ((_L234350_ _hd234300234345_)
                           (_L234351_ _hd234297234337_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L234351_))
                           (___kont238960238961_ _L234350_ _L234351_)
                           (___kont238962238963_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx238958238959_))
                  (let ((_e234292234318_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx238958238959_))))
                    (let ((_tl234290234323_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234292234318_)))
                          (_hd234291234321_
                           (let ()
                             (declare (not safe))
                             (##car _e234292234318_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234290234323_))
                          (let ((_e234295234326_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234290234323_))))
                            (let ((_tl234293234331_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234295234326_)))
                                  (_hd234294234329_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234295234326_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd234294234329_))
                                  (let ((_e234298234334_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd234294234329_))))
                                    (let ((_tl234296234339_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234298234334_)))
                                          (_hd234297234337_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234298234334_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234296234339_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234293234331_))
                                              (let ((_e234301234342_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234293234331_))))
                                                (let ((_tl234299234347_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234301234342_)))
                                                      (_hd234300234345_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234301234342_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234299234347_))
                                                      (___match238991238992_
                                                       _e234292234318_
                                                       _hd234291234321_
                                                       _tl234290234323_
                                                       _e234295234326_
                                                       _hd234294234329_
                                                       _tl234293234331_
                                                       _e234298234334_
                                                       _hd234297234337_
                                                       _tl234296234339_
                                                       _e234301234342_
                                                       _hd234300234345_
                                                       _tl234299234347_)
                                                      (___kont238962238963_))))
                                              (___kont238962238963_))
                                          (___kont238962238963_))))
                                  (___kont238962238963_))))
                          (___kont238962238963_))))
                  (___kont238962238963_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx234139_)
        (let* ((___stx238994238995_ _stx234139_)
               (_g234142234173_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx238994238995_)))))
          (let ((___kont238996238997_
                 (lambda (_L234255_ _L234256_)
                   (let ((_sym234272_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234256_))))
                     (if (let ((__tmp241054 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp241054 _sym234272_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym234272_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym234272_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym234272_))
                             (let ((_type234273234275_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L234255_))))
                               (if _type234273234275_
                                   (let ((_type234278_ _type234273234275_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym234272_
                                      _type234278_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L234255_)))))
                (___kont238998238999_
                 (lambda (_L234202_ _L234203_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L234202_)))))
            (let ((___match239027239028_
                   (lambda (_e234148234223_
                            _hd234147234226_
                            _tl234146234228_
                            _e234151234231_
                            _hd234150234234_
                            _tl234149234236_
                            _e234154234239_
                            _hd234153234242_
                            _tl234152234244_
                            _e234157234247_
                            _hd234156234250_
                            _tl234155234252_)
                     (let ((_L234255_ _hd234156234250_)
                           (_L234256_ _hd234153234242_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L234256_))
                           (___kont238996238997_ _L234255_ _L234256_)
                           (___kont238998238999_
                            _hd234156234250_
                            _hd234150234234_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx238994238995_))
                  (let ((_e234148234223_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx238994238995_))))
                    (let ((_tl234146234228_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234148234223_)))
                          (_hd234147234226_
                           (let ()
                             (declare (not safe))
                             (##car _e234148234223_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234146234228_))
                          (let ((_e234151234231_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234146234228_))))
                            (let ((_tl234149234236_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234151234231_)))
                                  (_hd234150234234_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234151234231_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd234150234234_))
                                  (let ((_e234154234239_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd234150234234_))))
                                    (let ((_tl234152234244_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234154234239_)))
                                          (_hd234153234242_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234154234239_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234152234244_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234149234236_))
                                              (let ((_e234157234247_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234149234236_))))
                                                (let ((_tl234155234252_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234157234247_)))
                                                      (_hd234156234250_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234157234247_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234155234252_))
                                                      (___match239027239028_
                                                       _e234148234223_
                                                       _hd234147234226_
                                                       _tl234146234228_
                                                       _e234151234231_
                                                       _hd234150234234_
                                                       _tl234149234236_
                                                       _e234154234239_
                                                       _hd234153234242_
                                                       _tl234152234244_
                                                       _e234157234247_
                                                       _hd234156234250_
                                                       _tl234155234252_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g234142234173_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g234142234173_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234149234236_))
                                              (let ((_e234168234194_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234149234236_))))
                                                (let ((_tl234166234199_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234168234194_)))
                                                      (_hd234167234197_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234168234194_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234166234199_))
                                                      (___kont238998238999_
                                                       _hd234167234197_
                                                       _hd234150234234_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g234142234173_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g234142234173_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234149234236_))
                                      (let ((_e234168234194_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234149234236_))))
                                        (let ((_tl234166234199_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234168234194_)))
                                              (_hd234167234197_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234168234194_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234166234199_))
                                              (___kont238998238999_
                                               _hd234167234197_
                                               _hd234150234234_)
                                              (let ()
                                                (declare (not safe))
                                                (_g234142234173_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234142234173_))))))
                          (let () (declare (not safe)) (_g234142234173_)))))
                  (let () (declare (not safe)) (_g234142234173_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx233924_)
        (letrec ((_collect-e233926_
                  (lambda (_hd234083_ _expr234084_)
                    (let* ((___stx239050239051_ _hd234083_)
                           (_g234087234097_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx239050239051_)))))
                      (let ((___kont239052239053_
                             (lambda (_L234117_)
                               (let ((_sym234128_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L234117_))))
                                 (if (let ((__tmp241055
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (table-ref __tmp241055 _sym234128_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym234128_))
                                     (let ((_type234129234131_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr234084_))))
                                       (if _type234129234131_
                                           (let ((_type234134_
                                                  _type234129234131_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym234128_
                                              _type234134_
                                              '#t))
                                           '#f))))))
                            (___kont239054239055_ (lambda () '#!void)))
                        (let ((___match239063239064_
                               (lambda (_e234092234109_
                                        _hd234091234112_
                                        _tl234090234114_)
                                 (let ((_L234117_ _hd234091234112_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L234117_))
                                       (___kont239052239053_ _L234117_)
                                       (___kont239054239055_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx239050239051_))
                              (let ((_e234092234109_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx239050239051_))))
                                (let ((_tl234090234114_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234092234109_)))
                                      (_hd234091234112_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234092234109_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234090234114_))
                                      (___match239063239064_
                                       _e234092234109_
                                       _hd234091234112_
                                       _tl234090234114_)
                                      (___kont239054239055_))))
                              (___kont239054239055_))))))))
          (let* ((_g233928233963_
                  (lambda (_g233929233960_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g233929233960_))))
                 (_g233927234080_
                  (lambda (_g233929233966_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g233929233966_))
                        (let ((_e233935233968_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g233929233966_))))
                          (let ((_hd233934233971_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233935233968_)))
                                (_tl233933233973_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233935233968_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233933233973_))
                                (let ((_e233938233976_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233933233973_))))
                                  (let ((_hd233937233979_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233938233976_)))
                                        (_tl233936233981_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233938233976_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd233937233979_))
                                        (let ((_g241056_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd233937233979_
                                                  '0))))
                                          (begin
                                            (let ((_g241057_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g241056_)
                                                         (##vector-length
                                                          _g241056_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g241057_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g241057_)))
                                            (let ((_target233939233984_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g241056_
                                                      0)))
                                                  (_tl233941233986_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g241056_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233941233986_))
                                                  (letrec ((_loop233942233989_
                                                            (lambda (_hd233940233992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr233946233994_
                             _hd233947233996_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd233940233992_))
                          (let ((_e233943233999_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd233940233992_))))
                            (let ((_lp-hd233944234002_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233943233999_)))
                                  (_lp-tl233945234004_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233943233999_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd233944234002_))
                                  (let ((_e233952234007_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd233944234002_))))
                                    (let ((_hd233951234010_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233952234007_)))
                                          (_tl233950234012_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233952234007_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl233950234012_))
                                          (let ((_e233955234015_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl233950234012_))))
                                            (let ((_hd233954234018_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e233955234015_)))
                                                  (_tl233953234020_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e233955234015_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233953234020_))
                                                  (let ((__tmp241062
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd233954234018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr233946233994_)))
                (__tmp241061
                 (let ()
                   (declare (not safe))
                   (cons _hd233951234010_ _hd233947233996_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop233942233989_
                                                     _lp-tl233945234004_
                                                     __tmp241062
                                                     __tmp241061))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233928233963_
                                                     _g233929233966_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233928233963_
                                             _g233929233966_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233928233963_ _g233929233966_)))))
                          (let ((_expr233948234023_
                                 (reverse _expr233946233994_))
                                (_hd233949234025_ (reverse _hd233947233996_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233936233981_))
                                (let ((_e233958234028_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233936233981_))))
                                  (let ((_hd233957234031_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233958234028_)))
                                        (_tl233956234033_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233958234028_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233956234033_))
                                        ((lambda (_L234036_
                                                  _L234037_
                                                  _L234038_)
                                           (for-each
                                            _collect-e233926_
                                            (let ((__tmp241058
                                                   (lambda (_g234058234061_
                                                            _g234059234063_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g234058234061_
                                                             _g234059234063_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp241058
                                                      '()
                                                      _L234038_))
                                            (let ((__tmp241059
                                                   (lambda (_g234065234068_
                                                            _g234066234070_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g234065234068_
                                                             _g234066234070_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp241059
                                                      '()
                                                      _L234037_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp241060
                                                   (lambda (_g234072234075_
                                                            _g234073234077_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g234072234075_
                                                             _g234073234077_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp241060
                                                      '()
                                                      _L234037_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L234036_)))
                                         _hd233957234031_
                                         _expr233948234023_
                                         _hd233949234025_)
                                        (let ()
                                          (declare (not safe))
                                          (_g233928233963_ _g233929233966_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g233928233963_ _g233929233966_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop233942233989_
                                                       _target233939233984_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233928233963_
                                                     _g233929233966_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g233928233963_ _g233929233966_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g233928233963_ _g233929233966_)))))
                        (let ()
                          (declare (not safe))
                          (_g233928233963_ _g233929233966_))))))
            (declare (not safe))
            (_g233927234080_ _stx233924_)))))
    (define gxc#collect-type-call%
      (lambda (_stx233416_)
        (let* ((___stx239066239067_ _stx233416_)
               (_g233420233535_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239066239067_)))))
          (let ((___kont239068239069_
                 (lambda (_L233874_ _L233875_ _L233876_ _L233877_ _L233878_)
                   (let ((__tmp241066
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233877_)))
                         (__tmp241065
                          (let () (declare (not safe)) (gx#stx-e _L233876_)))
                         (__tmp241064
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233875_)))
                         (__tmp241063
                          (let () (declare (not safe)) (gx#stx-e _L233874_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp241066
                      __tmp241065
                      __tmp241064
                      __tmp241063))))
                (___kont239070239071_
                 (lambda (_L233702_ _L233703_ _L233704_ _L233705_)
                   (let ((__tmp241069
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233704_)))
                         (__tmp241068
                          (let () (declare (not safe)) (gx#stx-e _L233703_)))
                         (__tmp241067
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233702_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp241069
                      __tmp241068
                      __tmp241067
                      '#f))))
                (___kont239072239073_
                 (lambda (_L233572_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp241070
                           (lambda (_g233585233588_ _g233586233590_)
                             (let ()
                               (declare (not safe))
                               (cons _g233585233588_ _g233586233590_)))))
                      (declare (not safe))
                      (foldr1 __tmp241070 '() _L233572_))))))
            (let* ((___match239323239324_
                    (lambda (_e233521233540_
                             _hd233520233543_
                             _tl233519233545_
                             ___splice239074239075_
                             _target233522233548_
                             _tl233524233550_)
                      (letrec ((_loop233525233553_
                                (lambda (_hd233523233556_ _expr233529233558_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233523233556_))
                                      (let ((_e233526233561_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233523233556_))))
                                        (let ((_lp-tl233528233566_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233526233561_)))
                                              (_lp-hd233527233564_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233526233561_))))
                                          (let ((__tmp241071
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd233527233564_
                                                         _expr233529233558_))))
                                            (declare (not safe))
                                            (_loop233525233553_
                                             _lp-tl233528233566_
                                             __tmp241071))))
                                      (let ((_expr233530233569_
                                             (reverse _expr233529233558_)))
                                        (___kont239072239073_
                                         _expr233530233569_))))))
                        (let ()
                          (declare (not safe))
                          (_loop233525233553_ _target233522233548_ '())))))
                   (___match239203239204_
                    (lambda (_e233429233746_
                             _hd233428233749_
                             _tl233427233751_
                             _e233432233754_
                             _hd233431233757_
                             _tl233430233759_
                             _e233435233762_
                             _hd233434233765_
                             _tl233433233767_
                             _e233438233770_
                             _hd233437233773_
                             _tl233436233775_
                             _e233441233778_
                             _hd233440233781_
                             _tl233439233783_
                             _e233444233786_
                             _hd233443233789_
                             _tl233442233791_
                             _e233447233794_
                             _hd233446233797_
                             _tl233445233799_
                             _e233450233802_
                             _hd233449233805_
                             _tl233448233807_
                             _e233453233810_
                             _hd233452233813_
                             _tl233451233815_
                             _e233456233818_
                             _hd233455233821_
                             _tl233454233823_
                             _e233459233826_
                             _hd233458233829_
                             _tl233457233831_
                             _e233462233834_
                             _hd233461233837_
                             _tl233460233839_
                             _e233465233842_
                             _hd233464233845_
                             _tl233463233847_
                             _e233468233850_
                             _hd233467233853_
                             _tl233466233855_
                             _e233471233858_
                             _hd233470233861_
                             _tl233469233863_
                             _e233474233866_
                             _hd233473233869_
                             _tl233472233871_)
                      (let ((_L233874_ _hd233473233869_)
                            (_L233875_ _hd233464233845_)
                            (_L233876_ _hd233455233821_)
                            (_L233877_ _hd233446233797_)
                            (_L233878_ _hd233437233773_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L233878_
                               'bind-method!))
                            (___kont239068239069_
                             _L233874_
                             _L233875_
                             _L233876_
                             _L233877_
                             _L233878_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl233427233751_))
                                (let ((___splice239074239075_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl233427233751_
                                          '0))))
                                  (let ((_tl233524233550_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice239074239075_
                                            '1)))
                                        (_target233522233548_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice239074239075_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233524233550_))
                                        (___match239323239324_
                                         _e233429233746_
                                         _hd233428233749_
                                         _tl233427233751_
                                         ___splice239074239075_
                                         _target233522233548_
                                         _tl233524233550_)
                                        (let ()
                                          (declare (not safe))
                                          (_g233420233535_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g233420233535_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239066239067_))
                  (let ((_e233429233746_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239066239067_))))
                    (let ((_tl233427233751_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233429233746_)))
                          (_hd233428233749_
                           (let ()
                             (declare (not safe))
                             (##car _e233429233746_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl233427233751_))
                          (let ((_e233432233754_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl233427233751_))))
                            (let ((_tl233430233759_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233432233754_)))
                                  (_hd233431233757_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233432233754_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd233431233757_))
                                  (let ((_e233435233762_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd233431233757_))))
                                    (let ((_tl233433233767_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233435233762_)))
                                          (_hd233434233765_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233435233762_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd233434233765_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd233434233765_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233433233767_))
                                                  (let ((_e233438233770_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233433233767_))))
                                                    (let ((_tl233436233775_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233438233770_)))
                                                          (_hd233437233773_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233438233770_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233436233775_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl233430233759_))
                      (let ((_e233441233778_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl233430233759_))))
                        (let ((_tl233439233783_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233441233778_)))
                              (_hd233440233781_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233441233778_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd233440233781_))
                              (let ((_e233444233786_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd233440233781_))))
                                (let ((_tl233442233791_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233444233786_)))
                                      (_hd233443233789_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233444233786_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd233443233789_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd233443233789_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233442233791_))
                                              (let ((_e233447233794_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233442233791_))))
                                                (let ((_tl233445233799_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233447233794_)))
                                                      (_hd233446233797_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233447233794_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233445233799_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl233439233783_))
                                                          (let ((_e233450233802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl233439233783_))))
                    (let ((_tl233448233807_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233450233802_)))
                          (_hd233449233805_
                           (let ()
                             (declare (not safe))
                             (##car _e233450233802_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd233449233805_))
                          (let ((_e233453233810_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd233449233805_))))
                            (let ((_tl233451233815_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233453233810_)))
                                  (_hd233452233813_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233453233810_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd233452233813_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd233452233813_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl233451233815_))
                                          (let ((_e233456233818_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl233451233815_))))
                                            (let ((_tl233454233823_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e233456233818_)))
                                                  (_hd233455233821_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e233456233818_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233454233823_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl233448233807_))
                                                      (let ((_e233459233826_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl233448233807_))))
                (let ((_tl233457233831_
                       (let () (declare (not safe)) (##cdr _e233459233826_)))
                      (_hd233458233829_
                       (let () (declare (not safe)) (##car _e233459233826_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd233458233829_))
                      (let ((_e233462233834_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd233458233829_))))
                        (let ((_tl233460233839_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233462233834_)))
                              (_hd233461233837_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233462233834_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd233461233837_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd233461233837_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233460233839_))
                                      (let ((_e233465233842_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233460233839_))))
                                        (let ((_tl233463233847_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233465233842_)))
                                              (_hd233464233845_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233465233842_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233463233847_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233457233831_))
                                                  (let ((_e233468233850_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233457233831_))))
                                                    (let ((_tl233466233855_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233468233850_)))
                                                          (_hd233467233853_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233468233850_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd233467233853_))
                                                          (let ((_e233471233858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd233467233853_))))
                    (let ((_tl233469233863_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233471233858_)))
                          (_hd233470233861_
                           (let ()
                             (declare (not safe))
                             (##car _e233471233858_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd233470233861_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd233470233861_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl233469233863_))
                                  (let ((_e233474233866_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl233469233863_))))
                                    (let ((_tl233472233871_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233474233866_)))
                                          (_hd233473233869_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233474233866_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233472233871_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233466233855_))
                                              (___match239203239204_
                                               _e233429233746_
                                               _hd233428233749_
                                               _tl233427233751_
                                               _e233432233754_
                                               _hd233431233757_
                                               _tl233430233759_
                                               _e233435233762_
                                               _hd233434233765_
                                               _tl233433233767_
                                               _e233438233770_
                                               _hd233437233773_
                                               _tl233436233775_
                                               _e233441233778_
                                               _hd233440233781_
                                               _tl233439233783_
                                               _e233444233786_
                                               _hd233443233789_
                                               _tl233442233791_
                                               _e233447233794_
                                               _hd233446233797_
                                               _tl233445233799_
                                               _e233450233802_
                                               _hd233449233805_
                                               _tl233448233807_
                                               _e233453233810_
                                               _hd233452233813_
                                               _tl233451233815_
                                               _e233456233818_
                                               _hd233455233821_
                                               _tl233454233823_
                                               _e233459233826_
                                               _hd233458233829_
                                               _tl233457233831_
                                               _e233462233834_
                                               _hd233461233837_
                                               _tl233460233839_
                                               _e233465233842_
                                               _hd233464233845_
                                               _tl233463233847_
                                               _e233468233850_
                                               _hd233467233853_
                                               _tl233466233855_
                                               _e233471233858_
                                               _hd233470233861_
                                               _tl233469233863_
                                               _e233474233866_
                                               _hd233473233869_
                                               _tl233472233871_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233427233751_))
                                                  (let ((___splice239074239075_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233427233751_
                                                            '0))))
                                                    (let ((_tl233524233550_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239074239075_
                                                              '1)))
                                                          (_target233522233548_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239074239075_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233524233550_))
                                                          (___match239323239324_
                                                           _e233429233746_
                                                           _hd233428233749_
                                                           _tl233427233751_
                                                           ___splice239074239075_
                                                           _target233522233548_
                                                           _tl233524233550_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233420233535_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233420233535_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233427233751_))
                                              (let ((___splice239074239075_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233427233751_
                                                        '0))))
                                                (let ((_tl233524233550_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239074239075_
                                                          '1)))
                                                      (_target233522233548_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239074239075_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233524233550_))
                                                      (___match239323239324_
                                                       _e233429233746_
                                                       _hd233428233749_
                                                       _tl233427233751_
                                                       ___splice239074239075_
                                                       _target233522233548_
                                                       _tl233524233550_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233420233535_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233420233535_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233427233751_))
                                      (let ((___splice239074239075_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233427233751_
                                                '0))))
                                        (let ((_tl233524233550_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239074239075_
                                                  '1)))
                                              (_target233522233548_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239074239075_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233524233550_))
                                              (___match239323239324_
                                               _e233429233746_
                                               _hd233428233749_
                                               _tl233427233751_
                                               ___splice239074239075_
                                               _target233522233548_
                                               _tl233524233550_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233420233535_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233420233535_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl233427233751_))
                                  (let ((___splice239074239075_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl233427233751_
                                            '0))))
                                    (let ((_tl233524233550_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239074239075_
                                              '1)))
                                          (_target233522233548_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239074239075_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233524233550_))
                                          (___match239323239324_
                                           _e233429233746_
                                           _hd233428233749_
                                           _tl233427233751_
                                           ___splice239074239075_
                                           _target233522233548_
                                           _tl233524233550_)
                                          (let ()
                                            (declare (not safe))
                                            (_g233420233535_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233420233535_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl233427233751_))
                              (let ((___splice239074239075_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl233427233751_
                                        '0))))
                                (let ((_tl233524233550_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239074239075_
                                          '1)))
                                      (_target233522233548_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239074239075_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233524233550_))
                                      (___match239323239324_
                                       _e233429233746_
                                       _hd233428233749_
                                       _tl233427233751_
                                       ___splice239074239075_
                                       _target233522233548_
                                       _tl233524233550_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233420233535_)))))
                              (let ()
                                (declare (not safe))
                                (_g233420233535_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233427233751_))
                      (let ((___splice239074239075_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233427233751_ '0))))
                        (let ((_tl233524233550_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239074239075_ '1)))
                              (_target233522233548_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239074239075_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233524233550_))
                              (___match239323239324_
                               _e233429233746_
                               _hd233428233749_
                               _tl233427233751_
                               ___splice239074239075_
                               _target233522233548_
                               _tl233524233550_)
                              (let ()
                                (declare (not safe))
                                (_g233420233535_)))))
                      (let () (declare (not safe)) (_g233420233535_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233457233831_))
                                                      (if (let ((__tmp241072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp241072 'bind-method!))
                  (let ((_L233702_ _hd233464233845_)
                        (_L233703_ _hd233455233821_)
                        (_L233704_ _hd233446233797_)
                        (_L233705_ _hd233437233773_))
                    (___kont239070239071_
                     _L233702_
                     _L233703_
                     _L233704_
                     _L233705_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233427233751_))
                      (let ((___splice239074239075_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233427233751_ '0))))
                        (let ((_tl233524233550_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239074239075_ '1)))
                              (_target233522233548_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239074239075_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233524233550_))
                              (___match239323239324_
                               _e233429233746_
                               _hd233428233749_
                               _tl233427233751_
                               ___splice239074239075_
                               _target233522233548_
                               _tl233524233550_)
                              (let ()
                                (declare (not safe))
                                (_g233420233535_)))))
                      (let () (declare (not safe)) (_g233420233535_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl233427233751_))
                  (let ((___splice239074239075_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl233427233751_ '0))))
                    (let ((_tl233524233550_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239074239075_ '1)))
                          (_target233522233548_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239074239075_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233524233550_))
                          (___match239323239324_
                           _e233429233746_
                           _hd233428233749_
                           _tl233427233751_
                           ___splice239074239075_
                           _target233522233548_
                           _tl233524233550_)
                          (let () (declare (not safe)) (_g233420233535_)))))
                  (let () (declare (not safe)) (_g233420233535_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233427233751_))
                                                  (let ((___splice239074239075_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233427233751_
                                                            '0))))
                                                    (let ((_tl233524233550_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239074239075_
                                                              '1)))
                                                          (_target233522233548_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239074239075_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233524233550_))
                                                          (___match239323239324_
                                                           _e233429233746_
                                                           _hd233428233749_
                                                           _tl233427233751_
                                                           ___splice239074239075_
                                                           _target233522233548_
                                                           _tl233524233550_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233420233535_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233420233535_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl233427233751_))
                                          (let ((___splice239074239075_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl233427233751_
                                                    '0))))
                                            (let ((_tl233524233550_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239074239075_
                                                      '1)))
                                                  (_target233522233548_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239074239075_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233524233550_))
                                                  (___match239323239324_
                                                   _e233429233746_
                                                   _hd233428233749_
                                                   _tl233427233751_
                                                   ___splice239074239075_
                                                   _target233522233548_
                                                   _tl233524233550_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233420233535_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233420233535_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233427233751_))
                                      (let ((___splice239074239075_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233427233751_
                                                '0))))
                                        (let ((_tl233524233550_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239074239075_
                                                  '1)))
                                              (_target233522233548_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239074239075_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233524233550_))
                                              (___match239323239324_
                                               _e233429233746_
                                               _hd233428233749_
                                               _tl233427233751_
                                               ___splice239074239075_
                                               _target233522233548_
                                               _tl233524233550_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233420233535_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233420233535_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl233427233751_))
                                  (let ((___splice239074239075_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl233427233751_
                                            '0))))
                                    (let ((_tl233524233550_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239074239075_
                                              '1)))
                                          (_target233522233548_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239074239075_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233524233550_))
                                          (___match239323239324_
                                           _e233429233746_
                                           _hd233428233749_
                                           _tl233427233751_
                                           ___splice239074239075_
                                           _target233522233548_
                                           _tl233524233550_)
                                          (let ()
                                            (declare (not safe))
                                            (_g233420233535_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233420233535_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl233427233751_))
                          (let ((___splice239074239075_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl233427233751_
                                    '0))))
                            (let ((_tl233524233550_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice239074239075_ '1)))
                                  (_target233522233548_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice239074239075_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233524233550_))
                                  (___match239323239324_
                                   _e233429233746_
                                   _hd233428233749_
                                   _tl233427233751_
                                   ___splice239074239075_
                                   _target233522233548_
                                   _tl233524233550_)
                                  (let ()
                                    (declare (not safe))
                                    (_g233420233535_)))))
                          (let () (declare (not safe)) (_g233420233535_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl233427233751_))
                  (let ((___splice239074239075_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl233427233751_ '0))))
                    (let ((_tl233524233550_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239074239075_ '1)))
                          (_target233522233548_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239074239075_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233524233550_))
                          (___match239323239324_
                           _e233429233746_
                           _hd233428233749_
                           _tl233427233751_
                           ___splice239074239075_
                           _target233522233548_
                           _tl233524233550_)
                          (let () (declare (not safe)) (_g233420233535_)))))
                  (let () (declare (not safe)) (_g233420233535_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl233427233751_))
                                                      (let ((___splice239074239075_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl233427233751_ '0))))
                (let ((_tl233524233550_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice239074239075_ '1)))
                      (_target233522233548_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice239074239075_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl233524233550_))
                      (___match239323239324_
                       _e233429233746_
                       _hd233428233749_
                       _tl233427233751_
                       ___splice239074239075_
                       _target233522233548_
                       _tl233524233550_)
                      (let () (declare (not safe)) (_g233420233535_)))))
              (let () (declare (not safe)) (_g233420233535_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233427233751_))
                                              (let ((___splice239074239075_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233427233751_
                                                        '0))))
                                                (let ((_tl233524233550_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239074239075_
                                                          '1)))
                                                      (_target233522233548_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239074239075_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233524233550_))
                                                      (___match239323239324_
                                                       _e233429233746_
                                                       _hd233428233749_
                                                       _tl233427233751_
                                                       ___splice239074239075_
                                                       _target233522233548_
                                                       _tl233524233550_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233420233535_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233420233535_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl233427233751_))
                                          (let ((___splice239074239075_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl233427233751_
                                                    '0))))
                                            (let ((_tl233524233550_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239074239075_
                                                      '1)))
                                                  (_target233522233548_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239074239075_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233524233550_))
                                                  (___match239323239324_
                                                   _e233429233746_
                                                   _hd233428233749_
                                                   _tl233427233751_
                                                   ___splice239074239075_
                                                   _target233522233548_
                                                   _tl233524233550_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233420233535_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233420233535_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233427233751_))
                                      (let ((___splice239074239075_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233427233751_
                                                '0))))
                                        (let ((_tl233524233550_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239074239075_
                                                  '1)))
                                              (_target233522233548_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239074239075_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233524233550_))
                                              (___match239323239324_
                                               _e233429233746_
                                               _hd233428233749_
                                               _tl233427233751_
                                               ___splice239074239075_
                                               _target233522233548_
                                               _tl233524233550_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233420233535_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233420233535_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl233427233751_))
                              (let ((___splice239074239075_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl233427233751_
                                        '0))))
                                (let ((_tl233524233550_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239074239075_
                                          '1)))
                                      (_target233522233548_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239074239075_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233524233550_))
                                      (___match239323239324_
                                       _e233429233746_
                                       _hd233428233749_
                                       _tl233427233751_
                                       ___splice239074239075_
                                       _target233522233548_
                                       _tl233524233550_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233420233535_)))))
                              (let ()
                                (declare (not safe))
                                (_g233420233535_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233427233751_))
                      (let ((___splice239074239075_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233427233751_ '0))))
                        (let ((_tl233524233550_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239074239075_ '1)))
                              (_target233522233548_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239074239075_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233524233550_))
                              (___match239323239324_
                               _e233429233746_
                               _hd233428233749_
                               _tl233427233751_
                               ___splice239074239075_
                               _target233522233548_
                               _tl233524233550_)
                              (let ()
                                (declare (not safe))
                                (_g233420233535_)))))
                      (let () (declare (not safe)) (_g233420233535_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl233427233751_))
                  (let ((___splice239074239075_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl233427233751_ '0))))
                    (let ((_tl233524233550_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239074239075_ '1)))
                          (_target233522233548_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239074239075_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233524233550_))
                          (___match239323239324_
                           _e233429233746_
                           _hd233428233749_
                           _tl233427233751_
                           ___splice239074239075_
                           _target233522233548_
                           _tl233524233550_)
                          (let () (declare (not safe)) (_g233420233535_)))))
                  (let () (declare (not safe)) (_g233420233535_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233427233751_))
                                                  (let ((___splice239074239075_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233427233751_
                                                            '0))))
                                                    (let ((_tl233524233550_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239074239075_
                                                              '1)))
                                                          (_target233522233548_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239074239075_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233524233550_))
                                                          (___match239323239324_
                                                           _e233429233746_
                                                           _hd233428233749_
                                                           _tl233427233751_
                                                           ___splice239074239075_
                                                           _target233522233548_
                                                           _tl233524233550_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233420233535_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233420233535_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233427233751_))
                                              (let ((___splice239074239075_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233427233751_
                                                        '0))))
                                                (let ((_tl233524233550_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239074239075_
                                                          '1)))
                                                      (_target233522233548_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239074239075_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233524233550_))
                                                      (___match239323239324_
                                                       _e233429233746_
                                                       _hd233428233749_
                                                       _tl233427233751_
                                                       ___splice239074239075_
                                                       _target233522233548_
                                                       _tl233524233550_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233420233535_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233420233535_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl233427233751_))
                                          (let ((___splice239074239075_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl233427233751_
                                                    '0))))
                                            (let ((_tl233524233550_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239074239075_
                                                      '1)))
                                                  (_target233522233548_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239074239075_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233524233550_))
                                                  (___match239323239324_
                                                   _e233429233746_
                                                   _hd233428233749_
                                                   _tl233427233751_
                                                   ___splice239074239075_
                                                   _target233522233548_
                                                   _tl233524233550_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233420233535_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233420233535_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl233427233751_))
                                  (let ((___splice239074239075_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl233427233751_
                                            '0))))
                                    (let ((_tl233524233550_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239074239075_
                                              '1)))
                                          (_target233522233548_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239074239075_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233524233550_))
                                          (___match239323239324_
                                           _e233429233746_
                                           _hd233428233749_
                                           _tl233427233751_
                                           ___splice239074239075_
                                           _target233522233548_
                                           _tl233524233550_)
                                          (let ()
                                            (declare (not safe))
                                            (_g233420233535_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233420233535_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl233427233751_))
                          (let ((___splice239074239075_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl233427233751_
                                    '0))))
                            (let ((_tl233524233550_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice239074239075_ '1)))
                                  (_target233522233548_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice239074239075_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233524233550_))
                                  (___match239323239324_
                                   _e233429233746_
                                   _hd233428233749_
                                   _tl233427233751_
                                   ___splice239074239075_
                                   _target233522233548_
                                   _tl233524233550_)
                                  (let ()
                                    (declare (not safe))
                                    (_g233420233535_)))))
                          (let () (declare (not safe)) (_g233420233535_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233427233751_))
                      (let ((___splice239074239075_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233427233751_ '0))))
                        (let ((_tl233524233550_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239074239075_ '1)))
                              (_target233522233548_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239074239075_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233524233550_))
                              (___match239323239324_
                               _e233429233746_
                               _hd233428233749_
                               _tl233427233751_
                               ___splice239074239075_
                               _target233522233548_
                               _tl233524233550_)
                              (let ()
                                (declare (not safe))
                                (_g233420233535_)))))
                      (let () (declare (not safe)) (_g233420233535_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl233427233751_))
                                                      (let ((___splice239074239075_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl233427233751_ '0))))
                (let ((_tl233524233550_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice239074239075_ '1)))
                      (_target233522233548_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice239074239075_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl233524233550_))
                      (___match239323239324_
                       _e233429233746_
                       _hd233428233749_
                       _tl233427233751_
                       ___splice239074239075_
                       _target233522233548_
                       _tl233524233550_)
                      (let () (declare (not safe)) (_g233420233535_)))))
              (let () (declare (not safe)) (_g233420233535_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233427233751_))
                                                  (let ((___splice239074239075_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233427233751_
                                                            '0))))
                                                    (let ((_tl233524233550_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239074239075_
                                                              '1)))
                                                          (_target233522233548_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239074239075_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233524233550_))
                                                          (___match239323239324_
                                                           _e233429233746_
                                                           _hd233428233749_
                                                           _tl233427233751_
                                                           ___splice239074239075_
                                                           _target233522233548_
                                                           _tl233524233550_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233420233535_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233420233535_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233427233751_))
                                              (let ((___splice239074239075_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233427233751_
                                                        '0))))
                                                (let ((_tl233524233550_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239074239075_
                                                          '1)))
                                                      (_target233522233548_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239074239075_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233524233550_))
                                                      (___match239323239324_
                                                       _e233429233746_
                                                       _hd233428233749_
                                                       _tl233427233751_
                                                       ___splice239074239075_
                                                       _target233522233548_
                                                       _tl233524233550_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233420233535_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233420233535_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233427233751_))
                                      (let ((___splice239074239075_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233427233751_
                                                '0))))
                                        (let ((_tl233524233550_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239074239075_
                                                  '1)))
                                              (_target233522233548_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239074239075_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233524233550_))
                                              (___match239323239324_
                                               _e233429233746_
                                               _hd233428233749_
                                               _tl233427233751_
                                               ___splice239074239075_
                                               _target233522233548_
                                               _tl233524233550_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233420233535_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233420233535_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl233427233751_))
                              (let ((___splice239074239075_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl233427233751_
                                        '0))))
                                (let ((_tl233524233550_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239074239075_
                                          '1)))
                                      (_target233522233548_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239074239075_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233524233550_))
                                      (___match239323239324_
                                       _e233429233746_
                                       _hd233428233749_
                                       _tl233427233751_
                                       ___splice239074239075_
                                       _target233522233548_
                                       _tl233524233550_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233420233535_)))))
                              (let ()
                                (declare (not safe))
                                (_g233420233535_))))))
                  (let () (declare (not safe)) (_g233420233535_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx233356_)
        (let* ((___stx239326239327_ _stx233356_)
               (_g233359233372_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239326239327_)))))
          (let ((___kont239328239329_
                 (lambda (_L233400_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L233400_))))
                (___kont239330239331_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239326239327_))
                (let ((_e233364233384_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239326239327_))))
                  (let ((_tl233362233389_
                         (let () (declare (not safe)) (##cdr _e233364233384_)))
                        (_hd233363233387_
                         (let ()
                           (declare (not safe))
                           (##car _e233364233384_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233362233389_))
                        (let ((_e233367233392_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233362233389_))))
                          (let ((_tl233365233397_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233367233392_)))
                                (_hd233366233395_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233367233392_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl233365233397_))
                                (___kont239328239329_ _hd233366233395_)
                                (___kont239330239331_))))
                        (___kont239330239331_))))
                (___kont239330239331_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx233236_)
        (let* ((_g233238233255_
                (lambda (_g233239233252_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233239233252_))))
               (_g233237233353_
                (lambda (_g233239233258_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233239233258_))
                      (let ((_e233244233260_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233239233258_))))
                        (let ((_hd233243233263_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233244233260_)))
                              (_tl233242233265_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233244233260_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233242233265_))
                              (let ((_e233247233268_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233242233265_))))
                                (let ((_hd233246233271_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233247233268_)))
                                      (_tl233245233273_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233247233268_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233245233273_))
                                      (let ((_e233250233276_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233245233273_))))
                                        (let ((_hd233249233279_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233250233276_)))
                                              (_tl233248233281_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233250233276_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233248233281_))
                                              ((lambda (_L233284_ _L233285_)
                                                 (let* ((___stx239348239349_
                                                         _L233285_)
                                                        (_g233301233312_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx239348239349_)))))
                                                   (let ((___kont239350239351_
                                                          (lambda (_L233332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L233333_)
                    (let ((_$e233345_
                           (let ((__tmp241073
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L233333_))))
                             (declare (not safe))
                             (table-ref
                              gxc#basic-expression-type-annotations
                              __tmp241073
                              '#f))))
                      (if _$e233345_
                          ((lambda (_type-e233348_)
                             (_type-e233348_ _stx233236_ _L233285_))
                           _$e233345_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L233284_))))))
                 (___kont239352239353_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L233284_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match239359239360_
                                                            (lambda (_e233307233324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd233306233327_
                             _tl233305233329_)
                      (let ((_L233332_ _tl233305233329_)
                            (_L233333_ _hd233306233327_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L233333_))
                            (___kont239350239351_ _L233332_ _L233333_)
                            (___kont239352239353_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx239348239349_))
                   (let ((_e233307233324_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx239348239349_))))
                     (let ((_tl233305233329_
                            (let ()
                              (declare (not safe))
                              (##cdr _e233307233324_)))
                           (_hd233306233327_
                            (let ()
                              (declare (not safe))
                              (##car _e233307233324_))))
                       (___match239359239360_
                        _e233307233324_
                        _hd233306233327_
                        _tl233305233329_)))
                   (___kont239352239353_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd233249233279_
                                               _hd233246233271_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233238233255_
                                                 _g233239233258_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233238233255_ _g233239233258_)))))
                              (let ()
                                (declare (not safe))
                                (_g233238233255_ _g233239233258_)))))
                      (let ()
                        (declare (not safe))
                        (_g233238233255_ _g233239233258_))))))
          (declare (not safe))
          (_g233237233353_ _stx233236_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx233097_ _ann233098_)
        (let* ((_g233100233133_
                (lambda (_g233101233130_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233101233130_))))
               (_g233099233233_
                (lambda (_g233101233136_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233101233136_))
                      (let ((_e233110233138_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233101233136_))))
                        (let ((_hd233109233141_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233110233138_)))
                              (_tl233108233143_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233110233138_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233108233143_))
                              (let ((_e233113233146_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233108233143_))))
                                (let ((_hd233112233149_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233113233146_)))
                                      (_tl233111233151_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233113233146_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233111233151_))
                                      (let ((_e233116233154_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233111233151_))))
                                        (let ((_hd233115233157_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233116233154_)))
                                              (_tl233114233159_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233116233154_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233114233159_))
                                              (let ((_e233119233162_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233114233159_))))
                                                (let ((_hd233118233165_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233119233162_)))
                                                      (_tl233117233167_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233119233162_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl233117233167_))
                                                      (let ((_e233122233170_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl233117233167_))))
                (let ((_hd233121233173_
                       (let () (declare (not safe)) (##car _e233122233170_)))
                      (_tl233120233175_
                       (let () (declare (not safe)) (##cdr _e233122233170_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl233120233175_))
                      (let ((_e233125233178_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl233120233175_))))
                        (let ((_hd233124233181_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233125233178_)))
                              (_tl233123233183_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233125233178_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233123233183_))
                              (let ((_e233128233186_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233123233183_))))
                                (let ((_hd233127233189_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233128233186_)))
                                      (_tl233126233191_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233128233186_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233126233191_))
                                      ((lambda (_L233194_
                                                _L233195_
                                                _L233196_
                                                _L233197_
                                                _L233198_
                                                _L233199_)
                                         (let ((_type-id233226_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233199_)))
                                               (_super233227_
                                                (map gxc#identifier-symbol
                                                     _L233198_))
                                               (_slots233228_
                                                (map gx#stx-e _L233197_))
                                               (_ctor-method233229_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233196_)))
                                               (_struct?233230_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233195_)))
                                               (_final?233231_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233194_))))
                                           (let ((__obj241031
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
                                              __obj241031
                                              _type-id233226_
                                              _super233227_
                                              _slots233228_
                                              _ctor-method233229_
                                              _struct?233230_
                                              _final?233231_)
                                             __obj241031)))
                                       _hd233127233189_
                                       _hd233124233181_
                                       _hd233121233173_
                                       _hd233118233165_
                                       _hd233115233157_
                                       _hd233112233149_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233100233133_ _g233101233136_)))))
                              (let ()
                                (declare (not safe))
                                (_g233100233133_ _g233101233136_)))))
                      (let ()
                        (declare (not safe))
                        (_g233100233133_ _g233101233136_)))))
              (let ()
                (declare (not safe))
                (_g233100233133_ _g233101233136_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g233100233133_
                                                 _g233101233136_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233100233133_ _g233101233136_)))))
                              (let ()
                                (declare (not safe))
                                (_g233100233133_ _g233101233136_)))))
                      (let ()
                        (declare (not safe))
                        (_g233100233133_ _g233101233136_))))))
          (declare (not safe))
          (_g233099233233_ _ann233098_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx233045_ _ann233046_)
        (let* ((_g233048233061_
                (lambda (_g233049233058_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233049233058_))))
               (_g233047233094_
                (lambda (_g233049233064_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233049233064_))
                      (let ((_e233053233066_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233049233064_))))
                        (let ((_hd233052233069_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233053233066_)))
                              (_tl233051233071_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233053233066_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233051233071_))
                              (let ((_e233056233074_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233051233071_))))
                                (let ((_hd233055233077_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233056233074_)))
                                      (_tl233054233079_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233056233074_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233054233079_))
                                      ((lambda (_L233082_)
                                         (let ((__tmp241074
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L233082_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp241074)))
                                       _hd233055233077_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233048233061_ _g233049233064_)))))
                              (let ()
                                (declare (not safe))
                                (_g233048233061_ _g233049233064_)))))
                      (let ()
                        (declare (not safe))
                        (_g233048233061_ _g233049233064_))))))
          (declare (not safe))
          (_g233047233094_ _ann233046_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx232993_ _ann232994_)
        (let* ((_g232996233009_
                (lambda (_g232997233006_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232997233006_))))
               (_g232995233042_
                (lambda (_g232997233012_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232997233012_))
                      (let ((_e233001233014_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232997233012_))))
                        (let ((_hd233000233017_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233001233014_)))
                              (_tl232999233019_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233001233014_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232999233019_))
                              (let ((_e233004233022_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232999233019_))))
                                (let ((_hd233003233025_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233004233022_)))
                                      (_tl233002233027_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233004233022_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233002233027_))
                                      ((lambda (_L233030_)
                                         (let ((__tmp241075
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L233030_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp241075)))
                                       _hd233003233025_)
                                      (let ()
                                        (declare (not safe))
                                        (_g232996233009_ _g232997233012_)))))
                              (let ()
                                (declare (not safe))
                                (_g232996233009_ _g232997233012_)))))
                      (let ()
                        (declare (not safe))
                        (_g232996233009_ _g232997233012_))))))
          (declare (not safe))
          (_g232995233042_ _ann232994_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx232909_ _ann232910_)
        (let* ((_g232912232933_
                (lambda (_g232913232930_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232913232930_))))
               (_g232911232990_
                (lambda (_g232913232936_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232913232936_))
                      (let ((_e232919232938_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232913232936_))))
                        (let ((_hd232918232941_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232919232938_)))
                              (_tl232917232943_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232919232938_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232917232943_))
                              (let ((_e232922232946_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232917232943_))))
                                (let ((_hd232921232949_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232922232946_)))
                                      (_tl232920232951_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232922232946_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232920232951_))
                                      (let ((_e232925232954_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232920232951_))))
                                        (let ((_hd232924232957_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232925232954_)))
                                              (_tl232923232959_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232925232954_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl232923232959_))
                                              (let ((_e232928232962_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl232923232959_))))
                                                (let ((_hd232927232965_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232928232962_)))
                                                      (_tl232926232967_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232928232962_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232926232967_))
                                                      ((lambda (_L232970_
                                                                _L232971_
                                                                _L232972_)
                                                         (let ((__tmp241078
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L232972_)))
                       (__tmp241077
                        (let () (declare (not safe)) (gx#stx-e _L232971_)))
                       (__tmp241076
                        (let () (declare (not safe)) (gx#stx-e _L232970_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp241078
                    __tmp241077
                    __tmp241076)))
               _hd232927232965_
               _hd232924232957_
               _hd232921232949_)
              (let ()
                (declare (not safe))
                (_g232912232933_ _g232913232936_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g232912232933_
                                                 _g232913232936_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232912232933_ _g232913232936_)))))
                              (let ()
                                (declare (not safe))
                                (_g232912232933_ _g232913232936_)))))
                      (let ()
                        (declare (not safe))
                        (_g232912232933_ _g232913232936_))))))
          (declare (not safe))
          (_g232911232990_ _ann232910_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx232825_ _ann232826_)
        (let* ((_g232828232849_
                (lambda (_g232829232846_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232829232846_))))
               (_g232827232906_
                (lambda (_g232829232852_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232829232852_))
                      (let ((_e232835232854_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232829232852_))))
                        (let ((_hd232834232857_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232835232854_)))
                              (_tl232833232859_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232835232854_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232833232859_))
                              (let ((_e232838232862_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232833232859_))))
                                (let ((_hd232837232865_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232838232862_)))
                                      (_tl232836232867_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232838232862_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232836232867_))
                                      (let ((_e232841232870_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232836232867_))))
                                        (let ((_hd232840232873_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232841232870_)))
                                              (_tl232839232875_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232841232870_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl232839232875_))
                                              (let ((_e232844232878_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl232839232875_))))
                                                (let ((_hd232843232881_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232844232878_)))
                                                      (_tl232842232883_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232844232878_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232842232883_))
                                                      ((lambda (_L232886_
                                                                _L232887_
                                                                _L232888_)
                                                         (let ((__tmp241081
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L232888_)))
                       (__tmp241080
                        (let () (declare (not safe)) (gx#stx-e _L232887_)))
                       (__tmp241079
                        (let () (declare (not safe)) (gx#stx-e _L232886_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp241081
                    __tmp241080
                    __tmp241079)))
               _hd232843232881_
               _hd232840232873_
               _hd232837232865_)
              (let ()
                (declare (not safe))
                (_g232828232849_ _g232829232852_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g232828232849_
                                                 _g232829232852_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232828232849_ _g232829232852_)))))
                              (let ()
                                (declare (not safe))
                                (_g232828232849_ _g232829232852_)))))
                      (let ()
                        (declare (not safe))
                        (_g232828232849_ _g232829232852_))))))
          (declare (not safe))
          (_g232827232906_ _ann232826_))))
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
      (lambda (_stx231945_)
        (let* ((___stx239362239363_ _stx231945_)
               (_g231951232147_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239362239363_)))))
          (let ((___kont239364239365_
                 (lambda (_L232813_)
                   (let ((__obj241032
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj241032
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L232813_))
                      '#f)
                     __obj241032)))
                (___kont239366239367_
                 (lambda (_L232740_
                          _L232741_
                          _L232742_
                          _L232743_
                          _L232744_
                          _L232745_)
                   (let* ((_tab232795_
                           (let () (declare (not safe)) (gx#stx-e _L232742_)))
                          (_keys232797_
                           (if _tab232795_
                               (let ((__tmp241082 (vector->list _tab232795_)))
                                 (declare (not safe))
                                 (filter values __tmp241082))
                               '#f)))
                     (let ((__tmp241083
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L232741_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys232797_
                        __tmp241083)))))
                (___kont239368239369_
                 (lambda (_L232473_
                          _L232474_
                          _L232475_
                          _L232476_
                          _L232477_
                          _L232478_
                          _L232479_
                          _L232480_
                          _L232481_
                          _L232482_)
                   (let ((__tmp241085
                          (map gx#stx-e
                               (let ((__tmp241086
                                      (lambda (_g232575232578_ _g232576232580_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g232575232578_
                                                _g232576232580_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp241086 '() _L232475_))))
                         (__tmp241084
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L232479_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp241085
                      __tmp241084))))
                (___kont239372239373_
                 (lambda (_L232183_)
                   (let ((__obj241033
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj241033
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L232183_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L232183_)))
                     __obj241033)))
                (___kont239374239375_
                 (lambda (_L232160_)
                   (let ((__obj241034
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj241034
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L232160_))
                      '#f)
                     __obj241034))))
            (let* ((___match239681239682_
                    (lambda (_e232138232175_ _hd232137232178_ _tl232136232180_)
                      (let ((_L232183_ _tl232136232180_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L232183_))
                            (___kont239372239373_ _L232183_)
                            (___kont239374239375_ _tl232136232180_)))))
                   (___match239675239676_
                    (lambda (_e232032232197_
                             _hd232031232200_
                             _tl232030232202_
                             _e232035232205_
                             _hd232034232208_
                             _tl232033232210_
                             _e232038232213_
                             _hd232037232216_
                             _tl232036232218_
                             _e232041232221_
                             _hd232040232224_
                             _tl232039232226_
                             _e232044232229_
                             _hd232043232232_
                             _tl232042232234_
                             _e232047232237_
                             _hd232046232240_
                             _tl232045232242_
                             _e232050232245_
                             _hd232049232248_
                             _tl232048232250_
                             _e232053232253_
                             _hd232052232256_
                             _tl232051232258_
                             _e232056232261_
                             _hd232055232264_
                             _tl232054232266_
                             _e232059232269_
                             _hd232058232272_
                             _tl232057232274_
                             _e232062232277_
                             _hd232061232280_
                             _tl232060232282_
                             _e232065232285_
                             _hd232064232288_
                             _tl232063232290_
                             _e232068232293_
                             _hd232067232296_
                             _tl232066232298_
                             _e232071232301_
                             _hd232070232304_
                             _tl232069232306_
                             ___splice239370239371_
                             _target232072232309_
                             _tl232074232311_
                             _e232089232314_
                             _hd232088232317_
                             _tl232087232319_
                             _e232092232322_
                             _hd232091232325_
                             _tl232090232327_
                             _e232095232330_
                             _hd232094232333_
                             _tl232093232335_)
                      (letrec ((_loop232075232338_
                                (lambda (_hd232073232341_
                                         _-absent-value232079232343_
                                         _key232080232345_
                                         _-xkwvar232081232347_
                                         _-hash-ref232082232349_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232073232341_))
                                      (let ((_e232076232352_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232073232341_))))
                                        (let ((_lp-tl232078232357_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232076232352_)))
                                              (_lp-hd232077232355_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232076232352_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd232077232355_))
                                              (let ((_e232098232360_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd232077232355_))))
                                                (let ((_tl232096232365_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232098232360_)))
                                                      (_hd232097232363_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232098232360_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd232097232363_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd232097232363_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl232096232365_))
                      (let ((_e232101232368_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl232096232365_))))
                        (let ((_tl232099232373_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232101232368_)))
                              (_hd232100232371_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232101232368_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd232100232371_))
                              (let ((_e232104232376_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd232100232371_))))
                                (let ((_tl232102232381_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232104232376_)))
                                      (_hd232103232379_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232104232376_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd232103232379_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd232103232379_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl232102232381_))
                                              (let ((_e232107232384_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl232102232381_))))
                                                (let ((_tl232105232389_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232107232384_)))
                                                      (_hd232106232387_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232107232384_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232105232389_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl232099232373_))
                                                          (let ((_e232110232392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl232099232373_))))
                    (let ((_tl232108232397_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232110232392_)))
                          (_hd232109232395_
                           (let ()
                             (declare (not safe))
                             (##car _e232110232392_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232109232395_))
                          (let ((_e232113232400_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232109232395_))))
                            (let ((_tl232111232405_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232113232400_)))
                                  (_hd232112232403_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232113232400_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd232112232403_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd232112232403_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl232111232405_))
                                          (let ((_e232116232408_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl232111232405_))))
                                            (let ((_tl232114232413_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232116232408_)))
                                                  (_hd232115232411_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232116232408_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl232114232413_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl232108232397_))
                                                      (let ((_e232119232416_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl232108232397_))))
                (let ((_tl232117232421_
                       (let () (declare (not safe)) (##cdr _e232119232416_)))
                      (_hd232118232419_
                       (let () (declare (not safe)) (##car _e232119232416_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd232118232419_))
                      (let ((_e232122232424_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd232118232419_))))
                        (let ((_tl232120232429_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232122232424_)))
                              (_hd232121232427_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232122232424_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd232121232427_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd232121232427_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232120232429_))
                                      (let ((_e232125232432_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232120232429_))))
                                        (let ((_tl232123232437_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232125232432_)))
                                              (_hd232124232435_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232125232432_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232123232437_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl232117232421_))
                                                  (let ((_e232128232440_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl232117232421_))))
                                                    (let ((_tl232126232445_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e232128232440_)))
                                                          (_hd232127232443_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e232128232440_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd232127232443_))
                                                          (let ((_e232131232448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd232127232443_))))
                    (let ((_tl232129232453_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232131232448_)))
                          (_hd232130232451_
                           (let ()
                             (declare (not safe))
                             (##car _e232131232448_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd232130232451_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd232130232451_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232129232453_))
                                  (let ((_e232134232456_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232129232453_))))
                                    (let ((_tl232132232461_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232134232456_)))
                                          (_hd232133232459_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232134232456_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl232132232461_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232126232445_))
                                              (let ((__tmp241101
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd232133232459_
                                                             _-absent-value232079232343_)))
                                                    (__tmp241100
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd232124232435_
                                                             _key232080232345_)))
                                                    (__tmp241099
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd232115232411_
                                                             _-xkwvar232081232347_)))
                                                    (__tmp241098
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd232106232387_
                                                             _-hash-ref232082232349_))))
                                                (declare (not safe))
                                                (_loop232075232338_
                                                 _lp-tl232078232357_
                                                 __tmp241101
                                                 __tmp241100
                                                 __tmp241099
                                                 __tmp241098))
                                              (___match239681239682_
                                               _e232032232197_
                                               _hd232031232200_
                                               _tl232030232202_))
                                          (___match239681239682_
                                           _e232032232197_
                                           _hd232031232200_
                                           _tl232030232202_))))
                                  (___match239681239682_
                                   _e232032232197_
                                   _hd232031232200_
                                   _tl232030232202_))
                              (___match239681239682_
                               _e232032232197_
                               _hd232031232200_
                               _tl232030232202_))
                          (___match239681239682_
                           _e232032232197_
                           _hd232031232200_
                           _tl232030232202_))))
                  (___match239681239682_
                   _e232032232197_
                   _hd232031232200_
                   _tl232030232202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239681239682_
                                                   _e232032232197_
                                                   _hd232031232200_
                                                   _tl232030232202_))
                                              (___match239681239682_
                                               _e232032232197_
                                               _hd232031232200_
                                               _tl232030232202_))))
                                      (___match239681239682_
                                       _e232032232197_
                                       _hd232031232200_
                                       _tl232030232202_))
                                  (___match239681239682_
                                   _e232032232197_
                                   _hd232031232200_
                                   _tl232030232202_))
                              (___match239681239682_
                               _e232032232197_
                               _hd232031232200_
                               _tl232030232202_))))
                      (___match239681239682_
                       _e232032232197_
                       _hd232031232200_
                       _tl232030232202_))))
              (___match239681239682_
               _e232032232197_
               _hd232031232200_
               _tl232030232202_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239681239682_
                                                   _e232032232197_
                                                   _hd232031232200_
                                                   _tl232030232202_))))
                                          (___match239681239682_
                                           _e232032232197_
                                           _hd232031232200_
                                           _tl232030232202_))
                                      (___match239681239682_
                                       _e232032232197_
                                       _hd232031232200_
                                       _tl232030232202_))
                                  (___match239681239682_
                                   _e232032232197_
                                   _hd232031232200_
                                   _tl232030232202_))))
                          (___match239681239682_
                           _e232032232197_
                           _hd232031232200_
                           _tl232030232202_))))
                  (___match239681239682_
                   _e232032232197_
                   _hd232031232200_
                   _tl232030232202_))
              (___match239681239682_
               _e232032232197_
               _hd232031232200_
               _tl232030232202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match239681239682_
                                               _e232032232197_
                                               _hd232031232200_
                                               _tl232030232202_))
                                          (___match239681239682_
                                           _e232032232197_
                                           _hd232031232200_
                                           _tl232030232202_))
                                      (___match239681239682_
                                       _e232032232197_
                                       _hd232031232200_
                                       _tl232030232202_))))
                              (___match239681239682_
                               _e232032232197_
                               _hd232031232200_
                               _tl232030232202_))))
                      (___match239681239682_
                       _e232032232197_
                       _hd232031232200_
                       _tl232030232202_))
                  (___match239681239682_
                   _e232032232197_
                   _hd232031232200_
                   _tl232030232202_))
              (___match239681239682_
               _e232032232197_
               _hd232031232200_
               _tl232030232202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match239681239682_
                                               _e232032232197_
                                               _hd232031232200_
                                               _tl232030232202_))))
                                      (let ((_-hash-ref232086232470_
                                             (reverse _-hash-ref232082232349_))
                                            (_-xkwvar232085232468_
                                             (reverse _-xkwvar232081232347_))
                                            (_key232084232466_
                                             (reverse _key232080232345_))
                                            (_-absent-value232083232464_
                                             (reverse _-absent-value232079232343_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl232039232226_))
                                            (let ((_L232473_ _hd232094232333_)
                                                  (_L232474_
                                                   _-absent-value232083232464_)
                                                  (_L232475_ _key232084232466_)
                                                  (_L232476_
                                                   _-xkwvar232085232468_)
                                                  (_L232477_
                                                   _-hash-ref232086232470_)
                                                  (_L232478_ _hd232070232304_)
                                                  (_L232479_ _hd232061232280_)
                                                  (_L232480_ _hd232052232256_)
                                                  (_L232481_ _tl232036232218_)
                                                  (_L232482_ _hd232037232216_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L232482_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L232481_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L232480_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L232482_
                                                          _L232478_))
                                                       (let ((__tmp241096
                                                              (let ((__tmp241097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g232535232538_ _g232536232540_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232535232538_ _g232536232540_)))))
                        (declare (not safe))
                        (foldr1 __tmp241097 '() _L232475_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp241096))
               (let ((__tmp241095
                      (lambda (_g232542232544_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g232542232544_
                           'hash-ref))))
                     (__tmp241093
                      (let ((__tmp241094
                             (lambda (_g232546232549_ _g232547232551_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232546232549_ _g232547232551_)))))
                        (declare (not safe))
                        (foldr1 __tmp241094 '() _L232477_))))
                 (declare (not safe))
                 (andmap1 __tmp241095 __tmp241093))
               (let ((__tmp241092
                      (lambda (_g232553232555_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g232553232555_
                           'absent-value))))
                     (__tmp241090
                      (let ((__tmp241091
                             (lambda (_g232557232560_ _g232558232562_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232557232560_ _g232558232562_)))))
                        (declare (not safe))
                        (foldr1 __tmp241091 '() _L232474_))))
                 (declare (not safe))
                 (andmap1 __tmp241092 __tmp241090))
               (let ((__tmp241089
                      (lambda (_g232564232566_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g232564232566_ _L232482_))))
                     (__tmp241087
                      (let ((__tmp241088
                             (lambda (_g232568232571_ _g232569232573_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232568232571_ _g232569232573_)))))
                        (declare (not safe))
                        (foldr1 __tmp241088 '() _L232476_))))
                 (declare (not safe))
                 (andmap1 __tmp241089 __tmp241087)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239368239369_
                                                   _L232473_
                                                   _L232474_
                                                   _L232475_
                                                   _L232476_
                                                   _L232477_
                                                   _L232478_
                                                   _L232479_
                                                   _L232480_
                                                   _L232481_
                                                   _L232482_)
                                                  (___match239681239682_
                                                   _e232032232197_
                                                   _hd232031232200_
                                                   _tl232030232202_)))
                                            (___match239681239682_
                                             _e232032232197_
                                             _hd232031232200_
                                             _tl232030232202_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop232075232338_
                           _target232072232309_
                           '()
                           '()
                           '()
                           '())))))
                   (___match239547239548_
                    (lambda (_e232032232197_
                             _hd232031232200_
                             _tl232030232202_
                             _e232035232205_
                             _hd232034232208_
                             _tl232033232210_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232034232208_))
                          (let ((_e232038232213_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232034232208_))))
                            (let ((_tl232036232218_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232038232213_)))
                                  (_hd232037232216_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232038232213_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232033232210_))
                                  (let ((_e232041232221_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232033232210_))))
                                    (let ((_tl232039232226_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232041232221_)))
                                          (_hd232040232224_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232041232221_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd232040232224_))
                                          (let ((_e232044232229_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd232040232224_))))
                                            (let ((_tl232042232234_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232044232229_)))
                                                  (_hd232043232232_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232044232229_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd232043232232_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd232043232232_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl232042232234_))
                                                          (let ((_e232047232237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl232042232234_))))
                    (let ((_tl232045232242_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232047232237_)))
                          (_hd232046232240_
                           (let ()
                             (declare (not safe))
                             (##car _e232047232237_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232046232240_))
                          (let ((_e232050232245_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232046232240_))))
                            (let ((_tl232048232250_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232050232245_)))
                                  (_hd232049232248_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232050232245_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd232049232248_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd232049232248_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl232048232250_))
                                          (let ((_e232053232253_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl232048232250_))))
                                            (let ((_tl232051232258_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232053232253_)))
                                                  (_hd232052232256_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232053232253_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl232051232258_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl232045232242_))
                                                      (let ((_e232056232261_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl232045232242_))))
                (let ((_tl232054232266_
                       (let () (declare (not safe)) (##cdr _e232056232261_)))
                      (_hd232055232264_
                       (let () (declare (not safe)) (##car _e232056232261_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd232055232264_))
                      (let ((_e232059232269_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd232055232264_))))
                        (let ((_tl232057232274_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232059232269_)))
                              (_hd232058232272_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232059232269_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd232058232272_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd232058232272_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232057232274_))
                                      (let ((_e232062232277_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232057232274_))))
                                        (let ((_tl232060232282_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232062232277_)))
                                              (_hd232061232280_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232062232277_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232060232282_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl232054232266_))
                                                  (let ((_e232065232285_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl232054232266_))))
                                                    (let ((_tl232063232290_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e232065232285_)))
                                                          (_hd232064232288_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e232065232285_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd232064232288_))
                                                          (let ((_e232068232293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd232064232288_))))
                    (let ((_tl232066232298_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232068232293_)))
                          (_hd232067232296_
                           (let ()
                             (declare (not safe))
                             (##car _e232068232293_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd232067232296_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd232067232296_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232066232298_))
                                  (let ((_e232071232301_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232066232298_))))
                                    (let ((_tl232069232306_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232071232301_)))
                                          (_hd232070232304_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232071232301_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl232069232306_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl232063232290_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl232063232290_))
                                                        '1)
                                                  (let ((___splice239370239371_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl232063232290_
                                                            '1))))
                                                    (let ((_tl232074232311_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239370239371_
                                                              '1)))
                                                          (_target232072232309_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239370239371_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl232074232311_))
                                                          (let ((_e232089232314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl232074232311_))))
                    (let ((_tl232087232319_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232089232314_)))
                          (_hd232088232317_
                           (let ()
                             (declare (not safe))
                             (##car _e232089232314_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232088232317_))
                          (let ((_e232092232322_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232088232317_))))
                            (let ((_tl232090232327_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232092232322_)))
                                  (_hd232091232325_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232092232322_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd232091232325_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd232091232325_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl232090232327_))
                                          (let ((_e232095232330_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl232090232327_))))
                                            (let ((_tl232093232335_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232095232330_)))
                                                  (_hd232094232333_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232095232330_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl232093232335_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232087232319_))
                                                      (___match239675239676_
                                                       _e232032232197_
                                                       _hd232031232200_
                                                       _tl232030232202_
                                                       _e232035232205_
                                                       _hd232034232208_
                                                       _tl232033232210_
                                                       _e232038232213_
                                                       _hd232037232216_
                                                       _tl232036232218_
                                                       _e232041232221_
                                                       _hd232040232224_
                                                       _tl232039232226_
                                                       _e232044232229_
                                                       _hd232043232232_
                                                       _tl232042232234_
                                                       _e232047232237_
                                                       _hd232046232240_
                                                       _tl232045232242_
                                                       _e232050232245_
                                                       _hd232049232248_
                                                       _tl232048232250_
                                                       _e232053232253_
                                                       _hd232052232256_
                                                       _tl232051232258_
                                                       _e232056232261_
                                                       _hd232055232264_
                                                       _tl232054232266_
                                                       _e232059232269_
                                                       _hd232058232272_
                                                       _tl232057232274_
                                                       _e232062232277_
                                                       _hd232061232280_
                                                       _tl232060232282_
                                                       _e232065232285_
                                                       _hd232064232288_
                                                       _tl232063232290_
                                                       _e232068232293_
                                                       _hd232067232296_
                                                       _tl232066232298_
                                                       _e232071232301_
                                                       _hd232070232304_
                                                       _tl232069232306_
                                                       ___splice239370239371_
                                                       _target232072232309_
                                                       _tl232074232311_
                                                       _e232089232314_
                                                       _hd232088232317_
                                                       _tl232087232319_
                                                       _e232092232322_
                                                       _hd232091232325_
                                                       _tl232090232327_
                                                       _e232095232330_
                                                       _hd232094232333_
                                                       _tl232093232335_)
                                                      (___match239681239682_
                                                       _e232032232197_
                                                       _hd232031232200_
                                                       _tl232030232202_))
                                                  (___match239681239682_
                                                   _e232032232197_
                                                   _hd232031232200_
                                                   _tl232030232202_))))
                                          (___match239681239682_
                                           _e232032232197_
                                           _hd232031232200_
                                           _tl232030232202_))
                                      (___match239681239682_
                                       _e232032232197_
                                       _hd232031232200_
                                       _tl232030232202_))
                                  (___match239681239682_
                                   _e232032232197_
                                   _hd232031232200_
                                   _tl232030232202_))))
                          (___match239681239682_
                           _e232032232197_
                           _hd232031232200_
                           _tl232030232202_))))
                  (___match239681239682_
                   _e232032232197_
                   _hd232031232200_
                   _tl232030232202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239681239682_
                                                   _e232032232197_
                                                   _hd232031232200_
                                                   _tl232030232202_))
                                              (___match239681239682_
                                               _e232032232197_
                                               _hd232031232200_
                                               _tl232030232202_))
                                          (___match239681239682_
                                           _e232032232197_
                                           _hd232031232200_
                                           _tl232030232202_))))
                                  (___match239681239682_
                                   _e232032232197_
                                   _hd232031232200_
                                   _tl232030232202_))
                              (___match239681239682_
                               _e232032232197_
                               _hd232031232200_
                               _tl232030232202_))
                          (___match239681239682_
                           _e232032232197_
                           _hd232031232200_
                           _tl232030232202_))))
                  (___match239681239682_
                   _e232032232197_
                   _hd232031232200_
                   _tl232030232202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239681239682_
                                                   _e232032232197_
                                                   _hd232031232200_
                                                   _tl232030232202_))
                                              (___match239681239682_
                                               _e232032232197_
                                               _hd232031232200_
                                               _tl232030232202_))))
                                      (___match239681239682_
                                       _e232032232197_
                                       _hd232031232200_
                                       _tl232030232202_))
                                  (___match239681239682_
                                   _e232032232197_
                                   _hd232031232200_
                                   _tl232030232202_))
                              (___match239681239682_
                               _e232032232197_
                               _hd232031232200_
                               _tl232030232202_))))
                      (___match239681239682_
                       _e232032232197_
                       _hd232031232200_
                       _tl232030232202_))))
              (___match239681239682_
               _e232032232197_
               _hd232031232200_
               _tl232030232202_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239681239682_
                                                   _e232032232197_
                                                   _hd232031232200_
                                                   _tl232030232202_))))
                                          (___match239681239682_
                                           _e232032232197_
                                           _hd232031232200_
                                           _tl232030232202_))
                                      (___match239681239682_
                                       _e232032232197_
                                       _hd232031232200_
                                       _tl232030232202_))
                                  (___match239681239682_
                                   _e232032232197_
                                   _hd232031232200_
                                   _tl232030232202_))))
                          (___match239681239682_
                           _e232032232197_
                           _hd232031232200_
                           _tl232030232202_))))
                  (___match239681239682_
                   _e232032232197_
                   _hd232031232200_
                   _tl232030232202_))
              (___match239681239682_
               _e232032232197_
               _hd232031232200_
               _tl232030232202_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239681239682_
                                                   _e232032232197_
                                                   _hd232031232200_
                                                   _tl232030232202_))))
                                          (___match239681239682_
                                           _e232032232197_
                                           _hd232031232200_
                                           _tl232030232202_))))
                                  (___match239681239682_
                                   _e232032232197_
                                   _hd232031232200_
                                   _tl232030232202_))))
                          (___match239681239682_
                           _e232032232197_
                           _hd232031232200_
                           _tl232030232202_))))
                   (___match239535239536_
                    (lambda (_e231965232588_
                             _hd231964232591_
                             _tl231963232593_
                             _e231968232596_
                             _hd231967232599_
                             _tl231966232601_
                             _e231971232604_
                             _hd231970232607_
                             _tl231969232609_
                             _e231974232612_
                             _hd231973232615_
                             _tl231972232617_
                             _e231977232620_
                             _hd231976232623_
                             _tl231975232625_
                             _e231980232628_
                             _hd231979232631_
                             _tl231978232633_
                             _e231983232636_
                             _hd231982232639_
                             _tl231981232641_
                             _e231986232644_
                             _hd231985232647_
                             _tl231984232649_
                             _e231989232652_
                             _hd231988232655_
                             _tl231987232657_
                             _e231992232660_
                             _hd231991232663_
                             _tl231990232665_
                             _e231995232668_
                             _hd231994232671_
                             _tl231993232673_
                             _e231998232676_
                             _hd231997232679_
                             _tl231996232681_
                             _e232001232684_
                             _hd232000232687_
                             _tl231999232689_
                             _e232004232692_
                             _hd232003232695_
                             _tl232002232697_
                             _e232007232700_
                             _hd232006232703_
                             _tl232005232705_
                             _e232010232708_
                             _hd232009232711_
                             _tl232008232713_
                             _e232013232716_
                             _hd232012232719_
                             _tl232011232721_
                             _e232016232724_
                             _hd232015232727_
                             _tl232014232729_
                             _e232019232732_
                             _hd232018232735_
                             _tl232017232737_)
                      (let ((_L232740_ _hd232018232735_)
                            (_L232741_ _hd232009232711_)
                            (_L232742_ _hd232000232687_)
                            (_L232743_ _hd231991232663_)
                            (_L232744_ _hd231982232639_)
                            (_L232745_ _hd231967232599_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L232745_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L232744_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L232743_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L232745_ _L232740_)))
                            (___kont239366239367_
                             _L232740_
                             _L232741_
                             _L232742_
                             _L232743_
                             _L232744_
                             _L232745_)
                            (___match239547239548_
                             _e231965232588_
                             _hd231964232591_
                             _tl231963232593_
                             _e231968232596_
                             _hd231967232599_
                             _tl231966232601_)))))
                   (___match239389239390_
                    (lambda (_e231965232588_ _hd231964232591_ _tl231963232593_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl231963232593_))
                          (let ((_e231968232596_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl231963232593_))))
                            (let ((_tl231966232601_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231968232596_)))
                                  (_hd231967232599_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231968232596_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231966232601_))
                                  (let ((_e231971232604_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231966232601_))))
                                    (let ((_tl231969232609_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231971232604_)))
                                          (_hd231970232607_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231971232604_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd231970232607_))
                                          (let ((_e231974232612_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd231970232607_))))
                                            (let ((_tl231972232617_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231974232612_)))
                                                  (_hd231973232615_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231974232612_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd231973232615_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd231973232615_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl231972232617_))
                                                          (let ((_e231977232620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl231972232617_))))
                    (let ((_tl231975232625_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231977232620_)))
                          (_hd231976232623_
                           (let ()
                             (declare (not safe))
                             (##car _e231977232620_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd231976232623_))
                          (let ((_e231980232628_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd231976232623_))))
                            (let ((_tl231978232633_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231980232628_)))
                                  (_hd231979232631_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231980232628_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd231979232631_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd231979232631_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl231978232633_))
                                          (let ((_e231983232636_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl231978232633_))))
                                            (let ((_tl231981232641_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231983232636_)))
                                                  (_hd231982232639_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231983232636_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl231981232641_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl231975232625_))
                                                      (let ((_e231986232644_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl231975232625_))))
                (let ((_tl231984232649_
                       (let () (declare (not safe)) (##cdr _e231986232644_)))
                      (_hd231985232647_
                       (let () (declare (not safe)) (##car _e231986232644_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd231985232647_))
                      (let ((_e231989232652_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd231985232647_))))
                        (let ((_tl231987232657_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231989232652_)))
                              (_hd231988232655_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231989232652_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd231988232655_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd231988232655_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231987232657_))
                                      (let ((_e231992232660_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231987232657_))))
                                        (let ((_tl231990232665_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231992232660_)))
                                              (_hd231991232663_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231992232660_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231990232665_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl231984232649_))
                                                  (let ((_e231995232668_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl231984232649_))))
                                                    (let ((_tl231993232673_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231995232668_)))
                                                          (_hd231994232671_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231995232668_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd231994232671_))
                                                          (let ((_e231998232676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd231994232671_))))
                    (let ((_tl231996232681_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231998232676_)))
                          (_hd231997232679_
                           (let ()
                             (declare (not safe))
                             (##car _e231998232676_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd231997232679_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd231997232679_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231996232681_))
                                  (let ((_e232001232684_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231996232681_))))
                                    (let ((_tl231999232689_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232001232684_)))
                                          (_hd232000232687_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232001232684_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231999232689_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl231993232673_))
                                              (let ((_e232004232692_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl231993232673_))))
                                                (let ((_tl232002232697_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232004232692_)))
                                                      (_hd232003232695_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232004232692_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd232003232695_))
                                                      (let ((_e232007232700_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd232003232695_))))
                (let ((_tl232005232705_
                       (let () (declare (not safe)) (##cdr _e232007232700_)))
                      (_hd232006232703_
                       (let () (declare (not safe)) (##car _e232007232700_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd232006232703_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd232006232703_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232005232705_))
                              (let ((_e232010232708_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232005232705_))))
                                (let ((_tl232008232713_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232010232708_)))
                                      (_hd232009232711_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232010232708_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232008232713_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl232002232697_))
                                          (let ((_e232013232716_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl232002232697_))))
                                            (let ((_tl232011232721_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232013232716_)))
                                                  (_hd232012232719_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232013232716_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd232012232719_))
                                                  (let ((_e232016232724_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd232012232719_))))
                                                    (let ((_tl232014232729_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e232016232724_)))
                                                          (_hd232015232727_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e232016232724_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd232015232727_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd232015232727_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl232014232729_))
                          (let ((_e232019232732_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl232014232729_))))
                            (let ((_tl232017232737_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232019232732_)))
                                  (_hd232018232735_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232019232732_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl232017232737_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232011232721_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231969232609_))
                                          (___match239535239536_
                                           _e231965232588_
                                           _hd231964232591_
                                           _tl231963232593_
                                           _e231968232596_
                                           _hd231967232599_
                                           _tl231966232601_
                                           _e231971232604_
                                           _hd231970232607_
                                           _tl231969232609_
                                           _e231974232612_
                                           _hd231973232615_
                                           _tl231972232617_
                                           _e231977232620_
                                           _hd231976232623_
                                           _tl231975232625_
                                           _e231980232628_
                                           _hd231979232631_
                                           _tl231978232633_
                                           _e231983232636_
                                           _hd231982232639_
                                           _tl231981232641_
                                           _e231986232644_
                                           _hd231985232647_
                                           _tl231984232649_
                                           _e231989232652_
                                           _hd231988232655_
                                           _tl231987232657_
                                           _e231992232660_
                                           _hd231991232663_
                                           _tl231990232665_
                                           _e231995232668_
                                           _hd231994232671_
                                           _tl231993232673_
                                           _e231998232676_
                                           _hd231997232679_
                                           _tl231996232681_
                                           _e232001232684_
                                           _hd232000232687_
                                           _tl231999232689_
                                           _e232004232692_
                                           _hd232003232695_
                                           _tl232002232697_
                                           _e232007232700_
                                           _hd232006232703_
                                           _tl232005232705_
                                           _e232010232708_
                                           _hd232009232711_
                                           _tl232008232713_
                                           _e232013232716_
                                           _hd232012232719_
                                           _tl232011232721_
                                           _e232016232724_
                                           _hd232015232727_
                                           _tl232014232729_
                                           _e232019232732_
                                           _hd232018232735_
                                           _tl232017232737_)
                                          (___match239547239548_
                                           _e231965232588_
                                           _hd231964232591_
                                           _tl231963232593_
                                           _e231968232596_
                                           _hd231967232599_
                                           _tl231966232601_))
                                      (___match239547239548_
                                       _e231965232588_
                                       _hd231964232591_
                                       _tl231963232593_
                                       _e231968232596_
                                       _hd231967232599_
                                       _tl231966232601_))
                                  (___match239547239548_
                                   _e231965232588_
                                   _hd231964232591_
                                   _tl231963232593_
                                   _e231968232596_
                                   _hd231967232599_
                                   _tl231966232601_))))
                          (___match239547239548_
                           _e231965232588_
                           _hd231964232591_
                           _tl231963232593_
                           _e231968232596_
                           _hd231967232599_
                           _tl231966232601_))
                      (___match239547239548_
                       _e231965232588_
                       _hd231964232591_
                       _tl231963232593_
                       _e231968232596_
                       _hd231967232599_
                       _tl231966232601_))
                  (___match239547239548_
                   _e231965232588_
                   _hd231964232591_
                   _tl231963232593_
                   _e231968232596_
                   _hd231967232599_
                   _tl231966232601_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239547239548_
                                                   _e231965232588_
                                                   _hd231964232591_
                                                   _tl231963232593_
                                                   _e231968232596_
                                                   _hd231967232599_
                                                   _tl231966232601_))))
                                          (___match239547239548_
                                           _e231965232588_
                                           _hd231964232591_
                                           _tl231963232593_
                                           _e231968232596_
                                           _hd231967232599_
                                           _tl231966232601_))
                                      (___match239547239548_
                                       _e231965232588_
                                       _hd231964232591_
                                       _tl231963232593_
                                       _e231968232596_
                                       _hd231967232599_
                                       _tl231966232601_))))
                              (___match239547239548_
                               _e231965232588_
                               _hd231964232591_
                               _tl231963232593_
                               _e231968232596_
                               _hd231967232599_
                               _tl231966232601_))
                          (___match239547239548_
                           _e231965232588_
                           _hd231964232591_
                           _tl231963232593_
                           _e231968232596_
                           _hd231967232599_
                           _tl231966232601_))
                      (___match239547239548_
                       _e231965232588_
                       _hd231964232591_
                       _tl231963232593_
                       _e231968232596_
                       _hd231967232599_
                       _tl231966232601_))))
              (___match239547239548_
               _e231965232588_
               _hd231964232591_
               _tl231963232593_
               _e231968232596_
               _hd231967232599_
               _tl231966232601_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match239547239548_
                                               _e231965232588_
                                               _hd231964232591_
                                               _tl231963232593_
                                               _e231968232596_
                                               _hd231967232599_
                                               _tl231966232601_))
                                          (___match239547239548_
                                           _e231965232588_
                                           _hd231964232591_
                                           _tl231963232593_
                                           _e231968232596_
                                           _hd231967232599_
                                           _tl231966232601_))))
                                  (___match239547239548_
                                   _e231965232588_
                                   _hd231964232591_
                                   _tl231963232593_
                                   _e231968232596_
                                   _hd231967232599_
                                   _tl231966232601_))
                              (___match239547239548_
                               _e231965232588_
                               _hd231964232591_
                               _tl231963232593_
                               _e231968232596_
                               _hd231967232599_
                               _tl231966232601_))
                          (___match239547239548_
                           _e231965232588_
                           _hd231964232591_
                           _tl231963232593_
                           _e231968232596_
                           _hd231967232599_
                           _tl231966232601_))))
                  (___match239547239548_
                   _e231965232588_
                   _hd231964232591_
                   _tl231963232593_
                   _e231968232596_
                   _hd231967232599_
                   _tl231966232601_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239547239548_
                                                   _e231965232588_
                                                   _hd231964232591_
                                                   _tl231963232593_
                                                   _e231968232596_
                                                   _hd231967232599_
                                                   _tl231966232601_))
                                              (___match239547239548_
                                               _e231965232588_
                                               _hd231964232591_
                                               _tl231963232593_
                                               _e231968232596_
                                               _hd231967232599_
                                               _tl231966232601_))))
                                      (___match239547239548_
                                       _e231965232588_
                                       _hd231964232591_
                                       _tl231963232593_
                                       _e231968232596_
                                       _hd231967232599_
                                       _tl231966232601_))
                                  (___match239547239548_
                                   _e231965232588_
                                   _hd231964232591_
                                   _tl231963232593_
                                   _e231968232596_
                                   _hd231967232599_
                                   _tl231966232601_))
                              (___match239547239548_
                               _e231965232588_
                               _hd231964232591_
                               _tl231963232593_
                               _e231968232596_
                               _hd231967232599_
                               _tl231966232601_))))
                      (___match239547239548_
                       _e231965232588_
                       _hd231964232591_
                       _tl231963232593_
                       _e231968232596_
                       _hd231967232599_
                       _tl231966232601_))))
              (___match239547239548_
               _e231965232588_
               _hd231964232591_
               _tl231963232593_
               _e231968232596_
               _hd231967232599_
               _tl231966232601_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239547239548_
                                                   _e231965232588_
                                                   _hd231964232591_
                                                   _tl231963232593_
                                                   _e231968232596_
                                                   _hd231967232599_
                                                   _tl231966232601_))))
                                          (___match239547239548_
                                           _e231965232588_
                                           _hd231964232591_
                                           _tl231963232593_
                                           _e231968232596_
                                           _hd231967232599_
                                           _tl231966232601_))
                                      (___match239547239548_
                                       _e231965232588_
                                       _hd231964232591_
                                       _tl231963232593_
                                       _e231968232596_
                                       _hd231967232599_
                                       _tl231966232601_))
                                  (___match239547239548_
                                   _e231965232588_
                                   _hd231964232591_
                                   _tl231963232593_
                                   _e231968232596_
                                   _hd231967232599_
                                   _tl231966232601_))))
                          (___match239547239548_
                           _e231965232588_
                           _hd231964232591_
                           _tl231963232593_
                           _e231968232596_
                           _hd231967232599_
                           _tl231966232601_))))
                  (___match239547239548_
                   _e231965232588_
                   _hd231964232591_
                   _tl231963232593_
                   _e231968232596_
                   _hd231967232599_
                   _tl231966232601_))
              (___match239547239548_
               _e231965232588_
               _hd231964232591_
               _tl231963232593_
               _e231968232596_
               _hd231967232599_
               _tl231966232601_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239547239548_
                                                   _e231965232588_
                                                   _hd231964232591_
                                                   _tl231963232593_
                                                   _e231968232596_
                                                   _hd231967232599_
                                                   _tl231966232601_))))
                                          (___match239547239548_
                                           _e231965232588_
                                           _hd231964232591_
                                           _tl231963232593_
                                           _e231968232596_
                                           _hd231967232599_
                                           _tl231966232601_))))
                                  (___match239547239548_
                                   _e231965232588_
                                   _hd231964232591_
                                   _tl231963232593_
                                   _e231968232596_
                                   _hd231967232599_
                                   _tl231966232601_))))
                          (___match239681239682_
                           _e231965232588_
                           _hd231964232591_
                           _tl231963232593_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239362239363_))
                  (let ((_e231956232805_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239362239363_))))
                    (let ((_tl231954232810_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231956232805_)))
                          (_hd231955232808_
                           (let ()
                             (declare (not safe))
                             (##car _e231956232805_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L232813_ _tl231954232810_))
                            (___kont239364239365_ _L232813_))
                          (___match239389239390_
                           _e231956232805_
                           _hd231955232808_
                           _tl231954232810_))))
                  (let () (declare (not safe)) (_g231951232147_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx231900_)
        (letrec ((_clause-e231902_
                  (lambda (_form231943_)
                    (let ((__obj241035
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
                       __obj241035
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form231943_))
                       (if (let ((__tmp241102
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp241102))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form231943_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form231943_))
                               '#f)
                           '#f))
                      __obj241035))))
          (let* ((_g231904231914_
                  (lambda (_g231905231911_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g231905231911_))))
                 (_g231903231940_
                  (lambda (_g231905231917_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g231905231917_))
                        (let ((_e231909231919_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g231905231917_))))
                          (let ((_hd231908231922_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231909231919_)))
                                (_tl231907231924_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231909231919_))))
                            ((lambda (_L231927_)
                               (let ((_clauses231938_
                                      (map _clause-e231902_ _L231927_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses231938_)))
                             _tl231907231924_)))
                        (let ()
                          (declare (not safe))
                          (_g231904231914_ _g231905231917_))))))
            (declare (not safe))
            (_g231903231940_ _stx231900_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx231832_)
        (let* ((_g231834231851_
                (lambda (_g231835231848_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231835231848_))))
               (_g231833231897_
                (lambda (_g231835231854_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231835231854_))
                      (let ((_e231840231856_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231835231854_))))
                        (let ((_hd231839231859_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231840231856_)))
                              (_tl231838231861_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231840231856_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231838231861_))
                              (let ((_e231843231864_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231838231861_))))
                                (let ((_hd231842231867_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231843231864_)))
                                      (_tl231841231869_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231843231864_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231841231869_))
                                      (let ((_e231846231872_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231841231869_))))
                                        (let ((_hd231845231875_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231846231872_)))
                                              (_tl231844231877_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231846231872_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231844231877_))
                                              ((lambda (_L231880_ _L231881_)
                                                 (let ((__tmp241103
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L231880_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp241103
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd231845231875_
                                               _hd231842231867_)
                                              (let ()
                                                (declare (not safe))
                                                (_g231834231851_
                                                 _g231835231854_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231834231851_ _g231835231854_)))))
                              (let ()
                                (declare (not safe))
                                (_g231834231851_ _g231835231854_)))))
                      (let ()
                        (declare (not safe))
                        (_g231834231851_ _g231835231854_))))))
          (declare (not safe))
          (_g231833231897_ _stx231832_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx231737_)
        (let* ((___stx239690239691_ _stx231737_)
               (_g231740231760_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239690239691_)))))
          (let ((___kont239692239693_
                 (lambda (_L231804_ _L231805_)
                   (let ((_type-e231822231824_
                          (let ((__tmp241104
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L231805_))))
                            (declare (not safe))
                            (table-ref
                             gxc#basic-expression-type-builtin
                             __tmp241104
                             '#f))))
                     (if _type-e231822231824_
                         (let ((_type-e231827_ _type-e231822231824_))
                           (_type-e231827_ _stx231737_ _L231804_))
                         '#f))))
                (___kont239694239695_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239690239691_))
                (let ((_e231746231772_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239690239691_))))
                  (let ((_tl231744231777_
                         (let () (declare (not safe)) (##cdr _e231746231772_)))
                        (_hd231745231775_
                         (let ()
                           (declare (not safe))
                           (##car _e231746231772_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl231744231777_))
                        (let ((_e231749231780_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231744231777_))))
                          (let ((_tl231747231785_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231749231780_)))
                                (_hd231748231783_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231749231780_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231748231783_))
                                (let ((_e231752231788_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231748231783_))))
                                  (let ((_tl231750231793_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231752231788_)))
                                        (_hd231751231791_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231752231788_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231751231791_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd231751231791_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231750231793_))
                                                (let ((_e231755231796_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231750231793_))))
                                                  (let ((_tl231753231801_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231755231796_)))
                                                        (_hd231754231799_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231755231796_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231753231801_))
                                                        (___kont239692239693_
                                                         _tl231747231785_
                                                         _hd231754231799_)
                                                        (___kont239694239695_))))
                                                (___kont239694239695_))
                                            (___kont239694239695_))
                                        (___kont239694239695_))))
                                (___kont239694239695_))))
                        (___kont239694239695_))))
                (___kont239694239695_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx231686_)
        (let* ((_g231688231701_
                (lambda (_g231689231698_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231689231698_))))
               (_g231687231734_
                (lambda (_g231689231704_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231689231704_))
                      (let ((_e231693231706_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231689231704_))))
                        (let ((_hd231692231709_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231693231706_)))
                              (_tl231691231711_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231693231706_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231691231711_))
                              (let ((_e231696231714_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231691231711_))))
                                (let ((_hd231695231717_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231696231714_)))
                                      (_tl231694231719_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231696231714_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl231694231719_))
                                      ((lambda (_L231722_)
                                         (let ((__tmp241105
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L231722_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp241105)))
                                       _hd231695231717_)
                                      (let ()
                                        (declare (not safe))
                                        (_g231688231701_ _g231689231704_)))))
                              (let ()
                                (declare (not safe))
                                (_g231688231701_ _g231689231704_)))))
                      (let ()
                        (declare (not safe))
                        (_g231688231701_ _g231689231704_))))))
          (declare (not safe))
          (_g231687231734_ _stx231686_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form230920_)
        (let* ((___stx239728239729_ _form230920_)
               (_g230925231082_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239728239729_)))))
          (let ((___kont239730239731_
                 (lambda (_L231606_ _L231607_ _L231608_) '#t))
                (___kont239736239737_
                 (lambda (_L231394_
                          _L231395_
                          _L231396_
                          _L231397_
                          _L231398_
                          _L231399_)
                   '#t))
                (___kont239742239743_
                 (lambda (_L231190_ _L231191_ _L231192_ _L231193_) '#t))
                (___kont239744239745_ (lambda () '#f)))
            (let* ((___match239869239870_
                    (lambda (_e231044231094_
                             _hd231043231097_
                             _tl231042231099_
                             _e231047231102_
                             _hd231046231105_
                             _tl231045231107_
                             _e231050231110_
                             _hd231049231113_
                             _tl231048231115_
                             _e231053231118_
                             _hd231052231121_
                             _tl231051231123_
                             _e231056231126_
                             _hd231055231129_
                             _tl231054231131_
                             _e231059231134_
                             _hd231058231137_
                             _tl231057231139_
                             _e231062231142_
                             _hd231061231145_
                             _tl231060231147_
                             _e231065231150_
                             _hd231064231153_
                             _tl231063231155_
                             _e231068231158_
                             _hd231067231161_
                             _tl231066231163_
                             _e231071231166_
                             _hd231070231169_
                             _tl231069231171_
                             _e231074231174_
                             _hd231073231177_
                             _tl231072231179_
                             _e231077231182_
                             _hd231076231185_
                             _tl231075231187_)
                      (let ((_L231190_ _hd231076231185_)
                            (_L231191_ _hd231067231161_)
                            (_L231192_ _hd231058231137_)
                            (_L231193_ _hd231043231097_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L231193_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L231192_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L231193_ _L231190_))
                                 (let ((__tmp241106
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L231191_
                                           _L231193_))))
                                   (declare (not safe))
                                   (not __tmp241106)))
                            (___kont239742239743_
                             _L231190_
                             _L231191_
                             _L231192_
                             _L231193_)
                            (___kont239744239745_)))))
                   (___match239841239842_
                    (lambda (_e231044231094_
                             _hd231043231097_
                             _tl231042231099_
                             _e231047231102_
                             _hd231046231105_
                             _tl231045231107_
                             _e231050231110_
                             _hd231049231113_
                             _tl231048231115_
                             _e231053231118_
                             _hd231052231121_
                             _tl231051231123_
                             _e231056231126_
                             _hd231055231129_
                             _tl231054231131_
                             _e231059231134_
                             _hd231058231137_
                             _tl231057231139_
                             _e231062231142_
                             _hd231061231145_
                             _tl231060231147_
                             _e231065231150_
                             _hd231064231153_
                             _tl231063231155_
                             _e231068231158_
                             _hd231067231161_
                             _tl231066231163_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl231060231147_))
                          (let ((_e231071231166_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl231060231147_))))
                            (let ((_tl231069231171_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231071231166_)))
                                  (_hd231070231169_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231071231166_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd231070231169_))
                                  (let ((_e231074231174_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd231070231169_))))
                                    (let ((_tl231072231179_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231074231174_)))
                                          (_hd231073231177_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231074231174_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd231073231177_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd231073231177_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl231072231179_))
                                                  (let ((_e231077231182_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl231072231179_))))
                                                    (let ((_tl231075231187_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231077231182_)))
                                                          (_hd231076231185_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231077231182_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl231075231187_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl231069231171_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl231045231107_))
                          (___match239869239870_
                           _e231044231094_
                           _hd231043231097_
                           _tl231042231099_
                           _e231047231102_
                           _hd231046231105_
                           _tl231045231107_
                           _e231050231110_
                           _hd231049231113_
                           _tl231048231115_
                           _e231053231118_
                           _hd231052231121_
                           _tl231051231123_
                           _e231056231126_
                           _hd231055231129_
                           _tl231054231131_
                           _e231059231134_
                           _hd231058231137_
                           _tl231057231139_
                           _e231062231142_
                           _hd231061231145_
                           _tl231060231147_
                           _e231065231150_
                           _hd231064231153_
                           _tl231063231155_
                           _e231068231158_
                           _hd231067231161_
                           _tl231066231163_
                           _e231071231166_
                           _hd231070231169_
                           _tl231069231171_
                           _e231074231174_
                           _hd231073231177_
                           _tl231072231179_
                           _e231077231182_
                           _hd231076231185_
                           _tl231075231187_)
                          (___kont239744239745_))
                      (___kont239744239745_))
                  (___kont239744239745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239744239745_))
                                              (___kont239744239745_))
                                          (___kont239744239745_))))
                                  (___kont239744239745_))))
                          (___kont239744239745_))))
                   (___match239771239772_
                    (lambda (_e230980231234_
                             _hd230979231237_
                             _tl230978231239_
                             ___splice239738239739_
                             _target230981231242_
                             _tl230983231244_)
                      (letrec ((_loop230984231247_
                                (lambda (_hd230982231250_ _arg230988231252_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230982231250_))
                                      (let ((_e230985231255_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230982231250_))))
                                        (let ((_lp-tl230987231260_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230985231255_)))
                                              (_lp-hd230986231258_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230985231255_))))
                                          (let ((__tmp241121
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd230986231258_
                                                         _arg230988231252_))))
                                            (declare (not safe))
                                            (_loop230984231247_
                                             _lp-tl230987231260_
                                             __tmp241121))))
                                      (let ((_arg230989231263_
                                             (reverse _arg230988231252_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230978231239_))
                                            (let ((_e230992231266_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230978231239_))))
                                              (let ((_tl230990231271_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230992231266_)))
                                                    (_hd230991231269_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230992231266_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd230991231269_))
                                                    (let ((_e230995231274_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd230991231269_))))
                                                      (let ((_tl230993231279_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230995231274_)))
                    (_hd230994231277_
                     (let () (declare (not safe)) (##car _e230995231274_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230994231277_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd230994231277_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230993231279_))
                            (let ((_e230998231282_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230993231279_))))
                              (let ((_tl230996231287_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230998231282_)))
                                    (_hd230997231285_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230998231282_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230997231285_))
                                    (let ((_e231001231290_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230997231285_))))
                                      (let ((_tl230999231295_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231001231290_)))
                                            (_hd231000231293_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231001231290_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd231000231293_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd231000231293_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl230999231295_))
                                                    (let ((_e231004231298_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl230999231295_))))
                                                      (let ((_tl231002231303_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231004231298_)))
                    (_hd231003231301_
                     (let () (declare (not safe)) (##car _e231004231298_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl231002231303_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl230996231287_))
                        (let ((_e231007231306_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl230996231287_))))
                          (let ((_tl231005231311_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231007231306_)))
                                (_hd231006231309_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231007231306_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231006231309_))
                                (let ((_e231010231314_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231006231309_))))
                                  (let ((_tl231008231319_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231010231314_)))
                                        (_hd231009231317_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231010231314_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231009231317_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd231009231317_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231008231319_))
                                                (let ((_e231013231322_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231008231319_))))
                                                  (let ((_tl231011231327_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231013231322_)))
                                                        (_hd231012231325_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231013231322_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231011231327_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl231005231311_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl231005231311_))
                              '1)
                        (let ((___splice239740239741_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl231005231311_
                                  '1))))
                          (let ((_tl231016231332_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239740239741_ '1)))
                                (_target231014231330_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239740239741_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl231016231332_))
                                (let ((_e231025231335_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl231016231332_))))
                                  (let ((_tl231023231340_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231025231335_)))
                                        (_hd231024231338_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231025231335_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd231024231338_))
                                        (let ((_e231028231343_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd231024231338_))))
                                          (let ((_tl231026231348_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231028231343_)))
                                                (_hd231027231346_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231028231343_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd231027231346_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd231027231346_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl231026231348_))
                                                        (let ((_e231031231351_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl231026231348_))))
                  (let ((_tl231029231356_
                         (let () (declare (not safe)) (##cdr _e231031231351_)))
                        (_hd231030231354_
                         (let ()
                           (declare (not safe))
                           (##car _e231031231351_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl231029231356_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl231023231340_))
                            (letrec ((_loop231017231359_
                                      (lambda (_hd231015231362_
                                               _xarg231021231364_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd231015231362_))
                                            (let ((_e231018231367_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd231015231362_))))
                                              (let ((_lp-tl231020231372_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231018231367_)))
                                                    (_lp-hd231019231370_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231018231367_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd231019231370_))
                                                    (let ((_e231034231375_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd231019231370_))))
                                                      (let ((_tl231032231380_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231034231375_)))
                    (_hd231033231378_
                     (let () (declare (not safe)) (##car _e231034231375_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd231033231378_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd231033231378_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231032231380_))
                            (let ((_e231037231383_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231032231380_))))
                              (let ((_tl231035231388_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231037231383_)))
                                    (_hd231036231386_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231037231383_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl231035231388_))
                                    (let ((__tmp241120
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd231036231386_
                                                   _xarg231021231364_))))
                                      (declare (not safe))
                                      (_loop231017231359_
                                       _lp-tl231020231372_
                                       __tmp241120))
                                    (___match239841239842_
                                     _e230980231234_
                                     _hd230979231237_
                                     _tl230978231239_
                                     _e230992231266_
                                     _hd230991231269_
                                     _tl230990231271_
                                     _e230995231274_
                                     _hd230994231277_
                                     _tl230993231279_
                                     _e230998231282_
                                     _hd230997231285_
                                     _tl230996231287_
                                     _e231001231290_
                                     _hd231000231293_
                                     _tl230999231295_
                                     _e231004231298_
                                     _hd231003231301_
                                     _tl231002231303_
                                     _e231007231306_
                                     _hd231006231309_
                                     _tl231005231311_
                                     _e231010231314_
                                     _hd231009231317_
                                     _tl231008231319_
                                     _e231013231322_
                                     _hd231012231325_
                                     _tl231011231327_))))
                            (___match239841239842_
                             _e230980231234_
                             _hd230979231237_
                             _tl230978231239_
                             _e230992231266_
                             _hd230991231269_
                             _tl230990231271_
                             _e230995231274_
                             _hd230994231277_
                             _tl230993231279_
                             _e230998231282_
                             _hd230997231285_
                             _tl230996231287_
                             _e231001231290_
                             _hd231000231293_
                             _tl230999231295_
                             _e231004231298_
                             _hd231003231301_
                             _tl231002231303_
                             _e231007231306_
                             _hd231006231309_
                             _tl231005231311_
                             _e231010231314_
                             _hd231009231317_
                             _tl231008231319_
                             _e231013231322_
                             _hd231012231325_
                             _tl231011231327_))
                        (___match239841239842_
                         _e230980231234_
                         _hd230979231237_
                         _tl230978231239_
                         _e230992231266_
                         _hd230991231269_
                         _tl230990231271_
                         _e230995231274_
                         _hd230994231277_
                         _tl230993231279_
                         _e230998231282_
                         _hd230997231285_
                         _tl230996231287_
                         _e231001231290_
                         _hd231000231293_
                         _tl230999231295_
                         _e231004231298_
                         _hd231003231301_
                         _tl231002231303_
                         _e231007231306_
                         _hd231006231309_
                         _tl231005231311_
                         _e231010231314_
                         _hd231009231317_
                         _tl231008231319_
                         _e231013231322_
                         _hd231012231325_
                         _tl231011231327_))
                    (___match239841239842_
                     _e230980231234_
                     _hd230979231237_
                     _tl230978231239_
                     _e230992231266_
                     _hd230991231269_
                     _tl230990231271_
                     _e230995231274_
                     _hd230994231277_
                     _tl230993231279_
                     _e230998231282_
                     _hd230997231285_
                     _tl230996231287_
                     _e231001231290_
                     _hd231000231293_
                     _tl230999231295_
                     _e231004231298_
                     _hd231003231301_
                     _tl231002231303_
                     _e231007231306_
                     _hd231006231309_
                     _tl231005231311_
                     _e231010231314_
                     _hd231009231317_
                     _tl231008231319_
                     _e231013231322_
                     _hd231012231325_
                     _tl231011231327_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239841239842_
                                                     _e230980231234_
                                                     _hd230979231237_
                                                     _tl230978231239_
                                                     _e230992231266_
                                                     _hd230991231269_
                                                     _tl230990231271_
                                                     _e230995231274_
                                                     _hd230994231277_
                                                     _tl230993231279_
                                                     _e230998231282_
                                                     _hd230997231285_
                                                     _tl230996231287_
                                                     _e231001231290_
                                                     _hd231000231293_
                                                     _tl230999231295_
                                                     _e231004231298_
                                                     _hd231003231301_
                                                     _tl231002231303_
                                                     _e231007231306_
                                                     _hd231006231309_
                                                     _tl231005231311_
                                                     _e231010231314_
                                                     _hd231009231317_
                                                     _tl231008231319_
                                                     _e231013231322_
                                                     _hd231012231325_
                                                     _tl231011231327_))))
                                            (let ((_xarg231022231391_
                                                   (reverse _xarg231021231364_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl230990231271_))
                                                  (let ((_L231394_
                                                         _hd231030231354_)
                                                        (_L231395_
                                                         _xarg231022231391_)
                                                        (_L231396_
                                                         _hd231012231325_)
                                                        (_L231397_
                                                         _hd231003231301_)
                                                        (_L231398_
                                                         _tl230983231244_)
                                                        (_L231399_
                                                         _arg230989231263_))
                                                    (if (and (let ((__tmp241118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp241119
                                   (lambda (_g231442231445_ _g231443231447_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g231442231445_
                                             _g231443231447_)))))
                              (declare (not safe))
                              (foldr1 __tmp241119 '() _L231399_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp241118))
                     (let () (declare (not safe)) (gx#identifier? _L231398_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L231397_ 'apply))
                     (fx= (length (let ((__tmp241116
                                         (lambda (_g231449231452_
                                                  _g231450231454_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g231449231452_
                                                   _g231450231454_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp241116 '() _L231399_)))
                          (length (let ((__tmp241117
                                         (lambda (_g231456231459_
                                                  _g231457231461_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g231456231459_
                                                   _g231457231461_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp241117 '() _L231395_))))
                     (let ((__tmp241114
                            (let ((__tmp241115
                                   (lambda (_g231463231466_ _g231464231468_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g231463231466_
                                             _g231464231468_)))))
                              (declare (not safe))
                              (foldr1 __tmp241115 '() _L231399_)))
                           (__tmp241112
                            (let ((__tmp241113
                                   (lambda (_g231470231473_ _g231471231475_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g231470231473_
                                             _g231471231475_)))))
                              (declare (not safe))
                              (foldr1 __tmp241113 '() _L231395_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp241114 __tmp241112))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L231398_ _L231394_))
                     (let ((__tmp241107
                            (let ((__tmp241111
                                   (lambda (_g231477231479_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g231477231479_
                                        _L231396_))))
                                  (__tmp241108
                                   (let ((__tmp241110
                                          (lambda (_g231481231484_
                                                   _g231482231486_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g231481231484_
                                                    _g231482231486_))))
                                         (__tmp241109
                                          (let ()
                                            (declare (not safe))
                                            (cons _L231398_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp241110
                                             __tmp241109
                                             _L231399_))))
                              (declare (not safe))
                              (find __tmp241111 __tmp241108))))
                       (declare (not safe))
                       (not __tmp241107)))
                (___kont239736239737_
                 _L231394_
                 _L231395_
                 _L231396_
                 _L231397_
                 _L231398_
                 _L231399_)
                (___match239841239842_
                 _e230980231234_
                 _hd230979231237_
                 _tl230978231239_
                 _e230992231266_
                 _hd230991231269_
                 _tl230990231271_
                 _e230995231274_
                 _hd230994231277_
                 _tl230993231279_
                 _e230998231282_
                 _hd230997231285_
                 _tl230996231287_
                 _e231001231290_
                 _hd231000231293_
                 _tl230999231295_
                 _e231004231298_
                 _hd231003231301_
                 _tl231002231303_
                 _e231007231306_
                 _hd231006231309_
                 _tl231005231311_
                 _e231010231314_
                 _hd231009231317_
                 _tl231008231319_
                 _e231013231322_
                 _hd231012231325_
                 _tl231011231327_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239841239842_
                                                   _e230980231234_
                                                   _hd230979231237_
                                                   _tl230978231239_
                                                   _e230992231266_
                                                   _hd230991231269_
                                                   _tl230990231271_
                                                   _e230995231274_
                                                   _hd230994231277_
                                                   _tl230993231279_
                                                   _e230998231282_
                                                   _hd230997231285_
                                                   _tl230996231287_
                                                   _e231001231290_
                                                   _hd231000231293_
                                                   _tl230999231295_
                                                   _e231004231298_
                                                   _hd231003231301_
                                                   _tl231002231303_
                                                   _e231007231306_
                                                   _hd231006231309_
                                                   _tl231005231311_
                                                   _e231010231314_
                                                   _hd231009231317_
                                                   _tl231008231319_
                                                   _e231013231322_
                                                   _hd231012231325_
                                                   _tl231011231327_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop231017231359_ _target231014231330_ '())))
                            (___match239841239842_
                             _e230980231234_
                             _hd230979231237_
                             _tl230978231239_
                             _e230992231266_
                             _hd230991231269_
                             _tl230990231271_
                             _e230995231274_
                             _hd230994231277_
                             _tl230993231279_
                             _e230998231282_
                             _hd230997231285_
                             _tl230996231287_
                             _e231001231290_
                             _hd231000231293_
                             _tl230999231295_
                             _e231004231298_
                             _hd231003231301_
                             _tl231002231303_
                             _e231007231306_
                             _hd231006231309_
                             _tl231005231311_
                             _e231010231314_
                             _hd231009231317_
                             _tl231008231319_
                             _e231013231322_
                             _hd231012231325_
                             _tl231011231327_))
                        (___match239841239842_
                         _e230980231234_
                         _hd230979231237_
                         _tl230978231239_
                         _e230992231266_
                         _hd230991231269_
                         _tl230990231271_
                         _e230995231274_
                         _hd230994231277_
                         _tl230993231279_
                         _e230998231282_
                         _hd230997231285_
                         _tl230996231287_
                         _e231001231290_
                         _hd231000231293_
                         _tl230999231295_
                         _e231004231298_
                         _hd231003231301_
                         _tl231002231303_
                         _e231007231306_
                         _hd231006231309_
                         _tl231005231311_
                         _e231010231314_
                         _hd231009231317_
                         _tl231008231319_
                         _e231013231322_
                         _hd231012231325_
                         _tl231011231327_))))
                (___match239841239842_
                 _e230980231234_
                 _hd230979231237_
                 _tl230978231239_
                 _e230992231266_
                 _hd230991231269_
                 _tl230990231271_
                 _e230995231274_
                 _hd230994231277_
                 _tl230993231279_
                 _e230998231282_
                 _hd230997231285_
                 _tl230996231287_
                 _e231001231290_
                 _hd231000231293_
                 _tl230999231295_
                 _e231004231298_
                 _hd231003231301_
                 _tl231002231303_
                 _e231007231306_
                 _hd231006231309_
                 _tl231005231311_
                 _e231010231314_
                 _hd231009231317_
                 _tl231008231319_
                 _e231013231322_
                 _hd231012231325_
                 _tl231011231327_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239841239842_
                                                     _e230980231234_
                                                     _hd230979231237_
                                                     _tl230978231239_
                                                     _e230992231266_
                                                     _hd230991231269_
                                                     _tl230990231271_
                                                     _e230995231274_
                                                     _hd230994231277_
                                                     _tl230993231279_
                                                     _e230998231282_
                                                     _hd230997231285_
                                                     _tl230996231287_
                                                     _e231001231290_
                                                     _hd231000231293_
                                                     _tl230999231295_
                                                     _e231004231298_
                                                     _hd231003231301_
                                                     _tl231002231303_
                                                     _e231007231306_
                                                     _hd231006231309_
                                                     _tl231005231311_
                                                     _e231010231314_
                                                     _hd231009231317_
                                                     _tl231008231319_
                                                     _e231013231322_
                                                     _hd231012231325_
                                                     _tl231011231327_))
                                                (___match239841239842_
                                                 _e230980231234_
                                                 _hd230979231237_
                                                 _tl230978231239_
                                                 _e230992231266_
                                                 _hd230991231269_
                                                 _tl230990231271_
                                                 _e230995231274_
                                                 _hd230994231277_
                                                 _tl230993231279_
                                                 _e230998231282_
                                                 _hd230997231285_
                                                 _tl230996231287_
                                                 _e231001231290_
                                                 _hd231000231293_
                                                 _tl230999231295_
                                                 _e231004231298_
                                                 _hd231003231301_
                                                 _tl231002231303_
                                                 _e231007231306_
                                                 _hd231006231309_
                                                 _tl231005231311_
                                                 _e231010231314_
                                                 _hd231009231317_
                                                 _tl231008231319_
                                                 _e231013231322_
                                                 _hd231012231325_
                                                 _tl231011231327_))))
                                        (___match239841239842_
                                         _e230980231234_
                                         _hd230979231237_
                                         _tl230978231239_
                                         _e230992231266_
                                         _hd230991231269_
                                         _tl230990231271_
                                         _e230995231274_
                                         _hd230994231277_
                                         _tl230993231279_
                                         _e230998231282_
                                         _hd230997231285_
                                         _tl230996231287_
                                         _e231001231290_
                                         _hd231000231293_
                                         _tl230999231295_
                                         _e231004231298_
                                         _hd231003231301_
                                         _tl231002231303_
                                         _e231007231306_
                                         _hd231006231309_
                                         _tl231005231311_
                                         _e231010231314_
                                         _hd231009231317_
                                         _tl231008231319_
                                         _e231013231322_
                                         _hd231012231325_
                                         _tl231011231327_))))
                                (___match239841239842_
                                 _e230980231234_
                                 _hd230979231237_
                                 _tl230978231239_
                                 _e230992231266_
                                 _hd230991231269_
                                 _tl230990231271_
                                 _e230995231274_
                                 _hd230994231277_
                                 _tl230993231279_
                                 _e230998231282_
                                 _hd230997231285_
                                 _tl230996231287_
                                 _e231001231290_
                                 _hd231000231293_
                                 _tl230999231295_
                                 _e231004231298_
                                 _hd231003231301_
                                 _tl231002231303_
                                 _e231007231306_
                                 _hd231006231309_
                                 _tl231005231311_
                                 _e231010231314_
                                 _hd231009231317_
                                 _tl231008231319_
                                 _e231013231322_
                                 _hd231012231325_
                                 _tl231011231327_))))
                        (___match239841239842_
                         _e230980231234_
                         _hd230979231237_
                         _tl230978231239_
                         _e230992231266_
                         _hd230991231269_
                         _tl230990231271_
                         _e230995231274_
                         _hd230994231277_
                         _tl230993231279_
                         _e230998231282_
                         _hd230997231285_
                         _tl230996231287_
                         _e231001231290_
                         _hd231000231293_
                         _tl230999231295_
                         _e231004231298_
                         _hd231003231301_
                         _tl231002231303_
                         _e231007231306_
                         _hd231006231309_
                         _tl231005231311_
                         _e231010231314_
                         _hd231009231317_
                         _tl231008231319_
                         _e231013231322_
                         _hd231012231325_
                         _tl231011231327_))
                    (___match239841239842_
                     _e230980231234_
                     _hd230979231237_
                     _tl230978231239_
                     _e230992231266_
                     _hd230991231269_
                     _tl230990231271_
                     _e230995231274_
                     _hd230994231277_
                     _tl230993231279_
                     _e230998231282_
                     _hd230997231285_
                     _tl230996231287_
                     _e231001231290_
                     _hd231000231293_
                     _tl230999231295_
                     _e231004231298_
                     _hd231003231301_
                     _tl231002231303_
                     _e231007231306_
                     _hd231006231309_
                     _tl231005231311_
                     _e231010231314_
                     _hd231009231317_
                     _tl231008231319_
                     _e231013231322_
                     _hd231012231325_
                     _tl231011231327_))
                (___kont239744239745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont239744239745_))
                                            (___kont239744239745_))
                                        (___kont239744239745_))))
                                (___kont239744239745_))))
                        (___kont239744239745_))
                    (___kont239744239745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239744239745_))
                                                (___kont239744239745_))
                                            (___kont239744239745_))))
                                    (___kont239744239745_))))
                            (___kont239744239745_))
                        (___kont239744239745_))
                    (___kont239744239745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239744239745_))))
                                            (___kont239744239745_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop230984231247_ _target230981231242_ '())))))
                   (___match239759239760_
                    (lambda (_e230932231494_
                             _hd230931231497_
                             _tl230930231499_
                             ___splice239732239733_
                             _target230933231502_
                             _tl230935231504_)
                      (letrec ((_loop230936231507_
                                (lambda (_hd230934231510_ _arg230940231512_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230934231510_))
                                      (let ((_e230937231515_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230934231510_))))
                                        (let ((_lp-tl230939231520_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230937231515_)))
                                              (_lp-hd230938231518_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230937231515_))))
                                          (let ((__tmp241135
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd230938231518_
                                                         _arg230940231512_))))
                                            (declare (not safe))
                                            (_loop230936231507_
                                             _lp-tl230939231520_
                                             __tmp241135))))
                                      (let ((_arg230941231523_
                                             (reverse _arg230940231512_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230930231499_))
                                            (let ((_e230944231526_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230930231499_))))
                                              (let ((_tl230942231531_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230944231526_)))
                                                    (_hd230943231529_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230944231526_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd230943231529_))
                                                    (let ((_e230947231534_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd230943231529_))))
                                                      (let ((_tl230945231539_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230947231534_)))
                    (_hd230946231537_
                     (let () (declare (not safe)) (##car _e230947231534_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230946231537_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd230946231537_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230945231539_))
                            (let ((_e230950231542_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230945231539_))))
                              (let ((_tl230948231547_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230950231542_)))
                                    (_hd230949231545_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230950231542_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230949231545_))
                                    (let ((_e230953231550_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230949231545_))))
                                      (let ((_tl230951231555_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230953231550_)))
                                            (_hd230952231553_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230953231550_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd230952231553_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd230952231553_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl230951231555_))
                                                    (let ((_e230956231558_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl230951231555_))))
                                                      (let ((_tl230954231563_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230956231558_)))
                    (_hd230955231561_
                     (let () (declare (not safe)) (##car _e230956231558_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl230954231563_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl230948231547_))
                        (let ((___splice239734239735_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl230948231547_
                                  '0))))
                          (let ((_tl230959231568_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239734239735_ '1)))
                                (_target230957231566_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239734239735_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl230959231568_))
                                (letrec ((_loop230960231571_
                                          (lambda (_hd230958231574_
                                                   _xarg230964231576_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd230958231574_))
                                                (let ((_e230961231579_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd230958231574_))))
                                                  (let ((_lp-tl230963231584_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230961231579_)))
                                                        (_lp-hd230962231582_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230961231579_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd230962231582_))
                                                        (let ((_e230968231587_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd230962231582_))))
                  (let ((_tl230966231592_
                         (let () (declare (not safe)) (##cdr _e230968231587_)))
                        (_hd230967231590_
                         (let ()
                           (declare (not safe))
                           (##car _e230968231587_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230967231590_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd230967231590_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl230966231592_))
                                (let ((_e230971231595_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl230966231592_))))
                                  (let ((_tl230969231600_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230971231595_)))
                                        (_hd230970231598_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230971231595_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl230969231600_))
                                        (let ((__tmp241134
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd230970231598_
                                                       _xarg230964231576_))))
                                          (declare (not safe))
                                          (_loop230960231571_
                                           _lp-tl230963231584_
                                           __tmp241134))
                                        (___match239771239772_
                                         _e230932231494_
                                         _hd230931231497_
                                         _tl230930231499_
                                         ___splice239732239733_
                                         _target230933231502_
                                         _tl230935231504_))))
                                (___match239771239772_
                                 _e230932231494_
                                 _hd230931231497_
                                 _tl230930231499_
                                 ___splice239732239733_
                                 _target230933231502_
                                 _tl230935231504_))
                            (___match239771239772_
                             _e230932231494_
                             _hd230931231497_
                             _tl230930231499_
                             ___splice239732239733_
                             _target230933231502_
                             _tl230935231504_))
                        (___match239771239772_
                         _e230932231494_
                         _hd230931231497_
                         _tl230930231499_
                         ___splice239732239733_
                         _target230933231502_
                         _tl230935231504_))))
                (___match239771239772_
                 _e230932231494_
                 _hd230931231497_
                 _tl230930231499_
                 ___splice239732239733_
                 _target230933231502_
                 _tl230935231504_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg230965231603_
                                                       (reverse _xarg230964231576_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230942231531_))
                                                      (let ((_L231606_
                                                             _xarg230965231603_)
                                                            (_L231607_
                                                             _hd230955231561_)
                                                            (_L231608_
                                                             _arg230941231523_))
                                                        (if (and (let ((__tmp241132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp241133
                                       (lambda (_g231636231639_
                                                _g231637231641_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g231636231639_
                                                 _g231637231641_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp241133 '() _L231608_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp241132))
                         (fx= (length (let ((__tmp241130
                                             (lambda (_g231643231646_
                                                      _g231644231648_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g231643231646_
                                                       _g231644231648_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp241130 '() _L231608_)))
                              (length (let ((__tmp241131
                                             (lambda (_g231650231653_
                                                      _g231651231655_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g231650231653_
                                                       _g231651231655_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp241131 '() _L231606_))))
                         (let ((__tmp241128
                                (let ((__tmp241129
                                       (lambda (_g231657231660_
                                                _g231658231662_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g231657231660_
                                                 _g231658231662_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp241129 '() _L231608_)))
                               (__tmp241126
                                (let ((__tmp241127
                                       (lambda (_g231664231667_
                                                _g231665231669_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g231664231667_
                                                 _g231665231669_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp241127 '() _L231606_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp241128
                                    __tmp241126))
                         (let ((__tmp241122
                                (let ((__tmp241125
                                       (lambda (_g231671231673_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g231671231673_
                                            _L231607_))))
                                      (__tmp241123
                                       (let ((__tmp241124
                                              (lambda (_g231675231678_
                                                       _g231676231680_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g231675231678_
                                                        _g231676231680_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp241124 '() _L231608_))))
                                  (declare (not safe))
                                  (find __tmp241125 __tmp241123))))
                           (declare (not safe))
                           (not __tmp241122)))
                    (___kont239730239731_ _L231606_ _L231607_ _L231608_)
                    (___match239771239772_
                     _e230932231494_
                     _hd230931231497_
                     _tl230930231499_
                     ___splice239732239733_
                     _target230933231502_
                     _tl230935231504_)))
              (___match239771239772_
               _e230932231494_
               _hd230931231497_
               _tl230930231499_
               ___splice239732239733_
               _target230933231502_
               _tl230935231504_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop230960231571_
                                     _target230957231566_
                                     '())))
                                (___match239771239772_
                                 _e230932231494_
                                 _hd230931231497_
                                 _tl230930231499_
                                 ___splice239732239733_
                                 _target230933231502_
                                 _tl230935231504_))))
                        (___match239771239772_
                         _e230932231494_
                         _hd230931231497_
                         _tl230930231499_
                         ___splice239732239733_
                         _target230933231502_
                         _tl230935231504_))
                    (___match239771239772_
                     _e230932231494_
                     _hd230931231497_
                     _tl230930231499_
                     ___splice239732239733_
                     _target230933231502_
                     _tl230935231504_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239771239772_
                                                     _e230932231494_
                                                     _hd230931231497_
                                                     _tl230930231499_
                                                     ___splice239732239733_
                                                     _target230933231502_
                                                     _tl230935231504_))
                                                (___match239771239772_
                                                 _e230932231494_
                                                 _hd230931231497_
                                                 _tl230930231499_
                                                 ___splice239732239733_
                                                 _target230933231502_
                                                 _tl230935231504_))
                                            (___match239771239772_
                                             _e230932231494_
                                             _hd230931231497_
                                             _tl230930231499_
                                             ___splice239732239733_
                                             _target230933231502_
                                             _tl230935231504_))))
                                    (___match239771239772_
                                     _e230932231494_
                                     _hd230931231497_
                                     _tl230930231499_
                                     ___splice239732239733_
                                     _target230933231502_
                                     _tl230935231504_))))
                            (___match239771239772_
                             _e230932231494_
                             _hd230931231497_
                             _tl230930231499_
                             ___splice239732239733_
                             _target230933231502_
                             _tl230935231504_))
                        (___match239771239772_
                         _e230932231494_
                         _hd230931231497_
                         _tl230930231499_
                         ___splice239732239733_
                         _target230933231502_
                         _tl230935231504_))
                    (___match239771239772_
                     _e230932231494_
                     _hd230931231497_
                     _tl230930231499_
                     ___splice239732239733_
                     _target230933231502_
                     _tl230935231504_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239771239772_
                                                     _e230932231494_
                                                     _hd230931231497_
                                                     _tl230930231499_
                                                     ___splice239732239733_
                                                     _target230933231502_
                                                     _tl230935231504_))))
                                            (___match239771239772_
                                             _e230932231494_
                                             _hd230931231497_
                                             _tl230930231499_
                                             ___splice239732239733_
                                             _target230933231502_
                                             _tl230935231504_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop230936231507_ _target230933231502_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239728239729_))
                  (let ((_e230932231494_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239728239729_))))
                    (let ((_tl230930231499_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230932231494_)))
                          (_hd230931231497_
                           (let ()
                             (declare (not safe))
                             (##car _e230932231494_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd230931231497_))
                          (let ((___splice239732239733_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd230931231497_
                                    '0))))
                            (let ((_tl230935231504_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice239732239733_ '1)))
                                  (_target230933231502_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice239732239733_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230935231504_))
                                  (___match239759239760_
                                   _e230932231494_
                                   _hd230931231497_
                                   _tl230930231499_
                                   ___splice239732239733_
                                   _target230933231502_
                                   _tl230935231504_)
                                  (___match239771239772_
                                   _e230932231494_
                                   _hd230931231497_
                                   _tl230930231499_
                                   ___splice239732239733_
                                   _target230933231502_
                                   _tl230935231504_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230930231499_))
                              (let ((_e231047231102_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230930231499_))))
                                (let ((_tl231045231107_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231047231102_)))
                                      (_hd231046231105_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231047231102_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd231046231105_))
                                      (let ((_e231050231110_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd231046231105_))))
                                        (let ((_tl231048231115_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231050231110_)))
                                              (_hd231049231113_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231050231110_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd231049231113_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd231049231113_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl231048231115_))
                                                      (let ((_e231053231118_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl231048231115_))))
                (let ((_tl231051231123_
                       (let () (declare (not safe)) (##cdr _e231053231118_)))
                      (_hd231052231121_
                       (let () (declare (not safe)) (##car _e231053231118_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd231052231121_))
                      (let ((_e231056231126_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd231052231121_))))
                        (let ((_tl231054231131_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231056231126_)))
                              (_hd231055231129_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231056231126_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd231055231129_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd231055231129_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231054231131_))
                                      (let ((_e231059231134_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231054231131_))))
                                        (let ((_tl231057231139_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231059231134_)))
                                              (_hd231058231137_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231059231134_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231057231139_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl231051231123_))
                                                  (let ((_e231062231142_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl231051231123_))))
                                                    (let ((_tl231060231147_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231062231142_)))
                                                          (_hd231061231145_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231062231142_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd231061231145_))
                                                          (let ((_e231065231150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd231061231145_))))
                    (let ((_tl231063231155_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231065231150_)))
                          (_hd231064231153_
                           (let ()
                             (declare (not safe))
                             (##car _e231065231150_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd231064231153_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd231064231153_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231063231155_))
                                  (let ((_e231068231158_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231063231155_))))
                                    (let ((_tl231066231163_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231068231158_)))
                                          (_hd231067231161_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231068231158_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231066231163_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl231060231147_))
                                              (let ((_e231071231166_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl231060231147_))))
                                                (let ((_tl231069231171_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e231071231166_)))
                                                      (_hd231070231169_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e231071231166_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd231070231169_))
                                                      (let ((_e231074231174_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd231070231169_))))
                (let ((_tl231072231179_
                       (let () (declare (not safe)) (##cdr _e231074231174_)))
                      (_hd231073231177_
                       (let () (declare (not safe)) (##car _e231074231174_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd231073231177_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd231073231177_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231072231179_))
                              (let ((_e231077231182_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231072231179_))))
                                (let ((_tl231075231187_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231077231182_)))
                                      (_hd231076231185_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231077231182_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl231075231187_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231069231171_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231045231107_))
                                              (___match239869239870_
                                               _e230932231494_
                                               _hd230931231497_
                                               _tl230930231499_
                                               _e231047231102_
                                               _hd231046231105_
                                               _tl231045231107_
                                               _e231050231110_
                                               _hd231049231113_
                                               _tl231048231115_
                                               _e231053231118_
                                               _hd231052231121_
                                               _tl231051231123_
                                               _e231056231126_
                                               _hd231055231129_
                                               _tl231054231131_
                                               _e231059231134_
                                               _hd231058231137_
                                               _tl231057231139_
                                               _e231062231142_
                                               _hd231061231145_
                                               _tl231060231147_
                                               _e231065231150_
                                               _hd231064231153_
                                               _tl231063231155_
                                               _e231068231158_
                                               _hd231067231161_
                                               _tl231066231163_
                                               _e231071231166_
                                               _hd231070231169_
                                               _tl231069231171_
                                               _e231074231174_
                                               _hd231073231177_
                                               _tl231072231179_
                                               _e231077231182_
                                               _hd231076231185_
                                               _tl231075231187_)
                                              (___kont239744239745_))
                                          (___kont239744239745_))
                                      (___kont239744239745_))))
                              (___kont239744239745_))
                          (___kont239744239745_))
                      (___kont239744239745_))))
              (___kont239744239745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont239744239745_))
                                          (___kont239744239745_))))
                                  (___kont239744239745_))
                              (___kont239744239745_))
                          (___kont239744239745_))))
                  (___kont239744239745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239744239745_))
                                              (___kont239744239745_))))
                                      (___kont239744239745_))
                                  (___kont239744239745_))
                              (___kont239744239745_))))
                      (___kont239744239745_))))
              (___kont239744239745_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239744239745_))
                                              (___kont239744239745_))))
                                      (___kont239744239745_))))
                              (___kont239744239745_)))))
                  (___kont239744239745_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form230388_)
        (let* ((___stx239872239873_ _form230388_)
               (_g230392230516_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239872239873_)))))
          (let ((___kont239874239875_
                 (lambda (_L230886_ _L230887_ _L230888_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L230887_))))
                (___kont239880239881_
                 (lambda (_L230734_ _L230735_ _L230736_ _L230737_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L230734_))))
                (___kont239884239885_
                 (lambda (_L230601_ _L230602_ _L230603_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L230601_)))))
            (let* ((___match239981239982_
                    (lambda (_e230484230521_
                             _hd230483230524_
                             _tl230482230526_
                             _e230487230529_
                             _hd230486230532_
                             _tl230485230534_
                             _e230490230537_
                             _hd230489230540_
                             _tl230488230542_
                             _e230493230545_
                             _hd230492230548_
                             _tl230491230550_
                             _e230496230553_
                             _hd230495230556_
                             _tl230494230558_
                             _e230499230561_
                             _hd230498230564_
                             _tl230497230566_
                             _e230502230569_
                             _hd230501230572_
                             _tl230500230574_
                             _e230505230577_
                             _hd230504230580_
                             _tl230503230582_
                             _e230508230585_
                             _hd230507230588_
                             _tl230506230590_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230500230574_))
                          (let ((_e230511230593_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230500230574_))))
                            (let ((_tl230509230598_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230511230593_)))
                                  (_hd230510230596_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230511230593_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230509230598_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230485230534_))
                                      (___kont239884239885_
                                       _hd230507230588_
                                       _hd230498230564_
                                       _hd230483230524_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230392230516_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230392230516_)))))
                          (let () (declare (not safe)) (_g230392230516_)))))
                   (___match239911239912_
                    (lambda (_e230445230638_
                             _hd230444230641_
                             _tl230443230643_
                             ___splice239882239883_
                             _target230446230646_
                             _tl230448230648_)
                      (letrec ((_loop230449230651_
                                (lambda (_hd230447230654_ _arg230453230656_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230447230654_))
                                      (let ((_e230450230659_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230447230654_))))
                                        (let ((_lp-tl230452230664_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230450230659_)))
                                              (_lp-hd230451230662_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230450230659_))))
                                          (let ((__tmp241136
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd230451230662_
                                                         _arg230453230656_))))
                                            (declare (not safe))
                                            (_loop230449230651_
                                             _lp-tl230452230664_
                                             __tmp241136))))
                                      (let ((_arg230454230667_
                                             (reverse _arg230453230656_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230443230643_))
                                            (let ((_e230457230670_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230443230643_))))
                                              (let ((_tl230455230675_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230457230670_)))
                                                    (_hd230456230673_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230457230670_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd230456230673_))
                                                    (let ((_e230460230678_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd230456230673_))))
                                                      (let ((_tl230458230683_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230460230678_)))
                    (_hd230459230681_
                     (let () (declare (not safe)) (##car _e230460230678_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230459230681_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd230459230681_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230458230683_))
                            (let ((_e230463230686_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230458230683_))))
                              (let ((_tl230461230691_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230463230686_)))
                                    (_hd230462230689_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230463230686_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230462230689_))
                                    (let ((_e230466230694_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230462230689_))))
                                      (let ((_tl230464230699_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230466230694_)))
                                            (_hd230465230697_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230466230694_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd230465230697_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd230465230697_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl230464230699_))
                                                    (let ((_e230469230702_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl230464230699_))))
                                                      (let ((_tl230467230707_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230469230702_)))
                    (_hd230468230705_
                     (let () (declare (not safe)) (##car _e230469230702_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl230467230707_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl230461230691_))
                        (let ((_e230472230710_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl230461230691_))))
                          (let ((_tl230470230715_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e230472230710_)))
                                (_hd230471230713_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e230472230710_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd230471230713_))
                                (let ((_e230475230718_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd230471230713_))))
                                  (let ((_tl230473230723_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230475230718_)))
                                        (_hd230474230721_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230475230718_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd230474230721_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd230474230721_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl230473230723_))
                                                (let ((_e230478230726_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl230473230723_))))
                                                  (let ((_tl230476230731_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230478230726_)))
                                                        (_hd230477230729_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230478230726_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl230476230731_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl230455230675_))
                                                            (___kont239880239881_
                                                             _hd230477230729_
                                                             _hd230468230705_
                                                             _tl230448230648_
                                                             _arg230454230667_)
                                                            (___match239981239982_
                                                             _e230445230638_
                                                             _hd230444230641_
                                                             _tl230443230643_
                                                             _e230457230670_
                                                             _hd230456230673_
                                                             _tl230455230675_
                                                             _e230460230678_
                                                             _hd230459230681_
                                                             _tl230458230683_
                                                             _e230463230686_
                                                             _hd230462230689_
                                                             _tl230461230691_
                                                             _e230466230694_
                                                             _hd230465230697_
                                                             _tl230464230699_
                                                             _e230469230702_
                                                             _hd230468230705_
                                                             _tl230467230707_
                                                             _e230472230710_
                                                             _hd230471230713_
                                                             _tl230470230715_
                                                             _e230475230718_
                                                             _hd230474230721_
                                                             _tl230473230723_
                                                             _e230478230726_
                                                             _hd230477230729_
                                                             _tl230476230731_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g230392230516_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230392230516_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g230392230516_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g230392230516_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g230392230516_)))))
                        (let () (declare (not safe)) (_g230392230516_)))
                    (let () (declare (not safe)) (_g230392230516_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g230392230516_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230392230516_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g230392230516_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g230392230516_)))))
                            (let () (declare (not safe)) (_g230392230516_)))
                        (let () (declare (not safe)) (_g230392230516_)))
                    (let () (declare (not safe)) (_g230392230516_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g230392230516_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g230392230516_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop230449230651_ _target230446230646_ '())))))
                   (___match239899239900_
                    (lambda (_e230399230774_
                             _hd230398230777_
                             _tl230397230779_
                             ___splice239876239877_
                             _target230400230782_
                             _tl230402230784_)
                      (letrec ((_loop230403230787_
                                (lambda (_hd230401230790_ _arg230407230792_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230401230790_))
                                      (let ((_e230404230795_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230401230790_))))
                                        (let ((_lp-tl230406230800_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230404230795_)))
                                              (_lp-hd230405230798_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230404230795_))))
                                          (let ((__tmp241138
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd230405230798_
                                                         _arg230407230792_))))
                                            (declare (not safe))
                                            (_loop230403230787_
                                             _lp-tl230406230800_
                                             __tmp241138))))
                                      (let ((_arg230408230803_
                                             (reverse _arg230407230792_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230397230779_))
                                            (let ((_e230411230806_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230397230779_))))
                                              (let ((_tl230409230811_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230411230806_)))
                                                    (_hd230410230809_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230411230806_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd230410230809_))
                                                    (let ((_e230414230814_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd230410230809_))))
                                                      (let ((_tl230412230819_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230414230814_)))
                    (_hd230413230817_
                     (let () (declare (not safe)) (##car _e230414230814_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230413230817_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd230413230817_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230412230819_))
                            (let ((_e230417230822_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230412230819_))))
                              (let ((_tl230415230827_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230417230822_)))
                                    (_hd230416230825_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230417230822_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230416230825_))
                                    (let ((_e230420230830_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230416230825_))))
                                      (let ((_tl230418230835_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230420230830_)))
                                            (_hd230419230833_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230420230830_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd230419230833_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd230419230833_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl230418230835_))
                                                    (let ((_e230423230838_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl230418230835_))))
                                                      (let ((_tl230421230843_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230423230838_)))
                    (_hd230422230841_
                     (let () (declare (not safe)) (##car _e230423230838_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl230421230843_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl230415230827_))
                        (let ((___splice239878239879_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl230415230827_
                                  '0))))
                          (let ((_tl230426230848_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239878239879_ '1)))
                                (_target230424230846_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239878239879_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl230426230848_))
                                (letrec ((_loop230427230851_
                                          (lambda (_hd230425230854_
                                                   _xarg230431230856_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd230425230854_))
                                                (let ((_e230428230859_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd230425230854_))))
                                                  (let ((_lp-tl230430230864_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230428230859_)))
                                                        (_lp-hd230429230862_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230428230859_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd230429230862_))
                                                        (let ((_e230435230867_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd230429230862_))))
                  (let ((_tl230433230872_
                         (let () (declare (not safe)) (##cdr _e230435230867_)))
                        (_hd230434230870_
                         (let ()
                           (declare (not safe))
                           (##car _e230435230867_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230434230870_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd230434230870_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl230433230872_))
                                (let ((_e230438230875_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl230433230872_))))
                                  (let ((_tl230436230880_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230438230875_)))
                                        (_hd230437230878_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230438230875_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl230436230880_))
                                        (let ((__tmp241137
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd230437230878_
                                                       _xarg230431230856_))))
                                          (declare (not safe))
                                          (_loop230427230851_
                                           _lp-tl230430230864_
                                           __tmp241137))
                                        (___match239911239912_
                                         _e230399230774_
                                         _hd230398230777_
                                         _tl230397230779_
                                         ___splice239876239877_
                                         _target230400230782_
                                         _tl230402230784_))))
                                (___match239911239912_
                                 _e230399230774_
                                 _hd230398230777_
                                 _tl230397230779_
                                 ___splice239876239877_
                                 _target230400230782_
                                 _tl230402230784_))
                            (___match239911239912_
                             _e230399230774_
                             _hd230398230777_
                             _tl230397230779_
                             ___splice239876239877_
                             _target230400230782_
                             _tl230402230784_))
                        (___match239911239912_
                         _e230399230774_
                         _hd230398230777_
                         _tl230397230779_
                         ___splice239876239877_
                         _target230400230782_
                         _tl230402230784_))))
                (___match239911239912_
                 _e230399230774_
                 _hd230398230777_
                 _tl230397230779_
                 ___splice239876239877_
                 _target230400230782_
                 _tl230402230784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg230432230883_
                                                       (reverse _xarg230431230856_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230409230811_))
                                                      (___kont239874239875_
                                                       _xarg230432230883_
                                                       _hd230422230841_
                                                       _arg230408230803_)
                                                      (___match239911239912_
                                                       _e230399230774_
                                                       _hd230398230777_
                                                       _tl230397230779_
                                                       ___splice239876239877_
                                                       _target230400230782_
                                                       _tl230402230784_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop230427230851_
                                     _target230424230846_
                                     '())))
                                (___match239911239912_
                                 _e230399230774_
                                 _hd230398230777_
                                 _tl230397230779_
                                 ___splice239876239877_
                                 _target230400230782_
                                 _tl230402230784_))))
                        (___match239911239912_
                         _e230399230774_
                         _hd230398230777_
                         _tl230397230779_
                         ___splice239876239877_
                         _target230400230782_
                         _tl230402230784_))
                    (___match239911239912_
                     _e230399230774_
                     _hd230398230777_
                     _tl230397230779_
                     ___splice239876239877_
                     _target230400230782_
                     _tl230402230784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239911239912_
                                                     _e230399230774_
                                                     _hd230398230777_
                                                     _tl230397230779_
                                                     ___splice239876239877_
                                                     _target230400230782_
                                                     _tl230402230784_))
                                                (___match239911239912_
                                                 _e230399230774_
                                                 _hd230398230777_
                                                 _tl230397230779_
                                                 ___splice239876239877_
                                                 _target230400230782_
                                                 _tl230402230784_))
                                            (___match239911239912_
                                             _e230399230774_
                                             _hd230398230777_
                                             _tl230397230779_
                                             ___splice239876239877_
                                             _target230400230782_
                                             _tl230402230784_))))
                                    (___match239911239912_
                                     _e230399230774_
                                     _hd230398230777_
                                     _tl230397230779_
                                     ___splice239876239877_
                                     _target230400230782_
                                     _tl230402230784_))))
                            (___match239911239912_
                             _e230399230774_
                             _hd230398230777_
                             _tl230397230779_
                             ___splice239876239877_
                             _target230400230782_
                             _tl230402230784_))
                        (___match239911239912_
                         _e230399230774_
                         _hd230398230777_
                         _tl230397230779_
                         ___splice239876239877_
                         _target230400230782_
                         _tl230402230784_))
                    (___match239911239912_
                     _e230399230774_
                     _hd230398230777_
                     _tl230397230779_
                     ___splice239876239877_
                     _target230400230782_
                     _tl230402230784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239911239912_
                                                     _e230399230774_
                                                     _hd230398230777_
                                                     _tl230397230779_
                                                     ___splice239876239877_
                                                     _target230400230782_
                                                     _tl230402230784_))))
                                            (___match239911239912_
                                             _e230399230774_
                                             _hd230398230777_
                                             _tl230397230779_
                                             ___splice239876239877_
                                             _target230400230782_
                                             _tl230402230784_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop230403230787_ _target230400230782_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239872239873_))
                  (let ((_e230399230774_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239872239873_))))
                    (let ((_tl230397230779_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230399230774_)))
                          (_hd230398230777_
                           (let ()
                             (declare (not safe))
                             (##car _e230399230774_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd230398230777_))
                          (let ((___splice239876239877_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd230398230777_
                                    '0))))
                            (let ((_tl230402230784_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice239876239877_ '1)))
                                  (_target230400230782_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice239876239877_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230402230784_))
                                  (___match239899239900_
                                   _e230399230774_
                                   _hd230398230777_
                                   _tl230397230779_
                                   ___splice239876239877_
                                   _target230400230782_
                                   _tl230402230784_)
                                  (___match239911239912_
                                   _e230399230774_
                                   _hd230398230777_
                                   _tl230397230779_
                                   ___splice239876239877_
                                   _target230400230782_
                                   _tl230402230784_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230397230779_))
                              (let ((_e230487230529_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230397230779_))))
                                (let ((_tl230485230534_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230487230529_)))
                                      (_hd230486230532_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230487230529_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230486230532_))
                                      (let ((_e230490230537_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230486230532_))))
                                        (let ((_tl230488230542_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230490230537_)))
                                              (_hd230489230540_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230490230537_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd230489230540_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd230489230540_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl230488230542_))
                                                      (let ((_e230493230545_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl230488230542_))))
                (let ((_tl230491230550_
                       (let () (declare (not safe)) (##cdr _e230493230545_)))
                      (_hd230492230548_
                       (let () (declare (not safe)) (##car _e230493230545_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd230492230548_))
                      (let ((_e230496230553_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd230492230548_))))
                        (let ((_tl230494230558_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230496230553_)))
                              (_hd230495230556_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230496230553_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd230495230556_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd230495230556_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230494230558_))
                                      (let ((_e230499230561_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230494230558_))))
                                        (let ((_tl230497230566_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230499230561_)))
                                              (_hd230498230564_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230499230561_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230497230566_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230491230550_))
                                                  (let ((_e230502230569_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230491230550_))))
                                                    (let ((_tl230500230574_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230502230569_)))
                                                          (_hd230501230572_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230502230569_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd230501230572_))
                                                          (let ((_e230505230577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd230501230572_))))
                    (let ((_tl230503230582_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230505230577_)))
                          (_hd230504230580_
                           (let ()
                             (declare (not safe))
                             (##car _e230505230577_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd230504230580_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd230504230580_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl230503230582_))
                                  (let ((_e230508230585_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl230503230582_))))
                                    (let ((_tl230506230590_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230508230585_)))
                                          (_hd230507230588_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230508230585_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230506230590_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl230500230574_))
                                              (let ((_e230511230593_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl230500230574_))))
                                                (let ((_tl230509230598_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230511230593_)))
                                                      (_hd230510230596_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230511230593_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230509230598_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230485230534_))
                                                          (___kont239884239885_
                                                           _hd230507230588_
                                                           _hd230498230564_
                                                           _hd230398230777_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g230392230516_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g230392230516_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g230392230516_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g230392230516_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230392230516_)))
                              (let () (declare (not safe)) (_g230392230516_)))
                          (let () (declare (not safe)) (_g230392230516_)))))
                  (let () (declare (not safe)) (_g230392230516_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230392230516_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230392230516_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230392230516_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230392230516_)))
                              (let ()
                                (declare (not safe))
                                (_g230392230516_)))))
                      (let () (declare (not safe)) (_g230392230516_)))))
              (let () (declare (not safe)) (_g230392230516_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230392230516_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230392230516_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230392230516_)))))
                              (let ()
                                (declare (not safe))
                                (_g230392230516_))))))
                  (let () (declare (not safe)) (_g230392230516_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form230192_)
        (let* ((_g230194230208_
                (lambda (_g230195230205_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230195230205_))))
               (_g230193230385_
                (lambda (_g230195230211_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230195230211_))
                      (let ((_e230200230213_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230195230211_))))
                        (let ((_hd230199230216_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230200230213_)))
                              (_tl230198230218_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230200230213_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230198230218_))
                              (let ((_e230203230221_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230198230218_))))
                                (let ((_hd230202230224_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230203230221_)))
                                      (_tl230201230226_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230203230221_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230201230226_))
                                      ((lambda (_L230229_ _L230230_)
                                         (let* ((___stx239994239995_ _L230230_)
                                                (_g230245230273_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx239994239995_)))))
                                           (let ((___kont239996239997_
                                                  (lambda (_L230364_)
                                                    (length (let ((__tmp241139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g230374230377_ _g230375230379_)
                             (let ()
                               (declare (not safe))
                               (cons _g230374230377_ _g230375230379_)))))
                      (declare (not safe))
                      (foldr1 __tmp241139 '() _L230364_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont240000240001_
                                                  (lambda (_L230315_ _L230316_)
                                                    (let ((__tmp241140
                                                           (length (let ((__tmp241141
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g230327230330_ _g230328230332_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g230327230330_
                                            _g230328230332_)))))
                             (declare (not safe))
                             (foldr1 __tmp241141 '() _L230316_)))))
              (declare (not safe))
              (cons __tmp241140 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont240004240005_
                                                  (lambda (_L230278_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match240019240020_
                                                     (lambda (___splice240002240003_
                                                              _target230259230291_
                                                              _tl230261230293_)
                                                       (letrec ((_loop230262230296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd230260230299_ _arg230266230301_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd230260230299_))
                               (let ((_e230263230304_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd230260230299_))))
                                 (let ((_lp-tl230265230309_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e230263230304_)))
                                       (_lp-hd230264230307_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e230263230304_))))
                                   (let ((__tmp241142
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd230264230307_
                                                  _arg230266230301_))))
                                     (declare (not safe))
                                     (_loop230262230296_
                                      _lp-tl230265230309_
                                      __tmp241142))))
                               (let ((_arg230267230312_
                                      (reverse _arg230266230301_)))
                                 (___kont240000240001_
                                  _tl230261230293_
                                  _arg230267230312_))))))
                 (let ()
                   (declare (not safe))
                   (_loop230262230296_ _target230259230291_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match240013240014_
                                                     (lambda (___splice239998239999_
                                                              _target230248230340_
                                                              _tl230250230342_)
                                                       (letrec ((_loop230251230345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd230249230348_ _arg230255230350_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd230249230348_))
                               (let ((_e230252230353_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd230249230348_))))
                                 (let ((_lp-tl230254230358_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e230252230353_)))
                                       (_lp-hd230253230356_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e230252230353_))))
                                   (let ((__tmp241143
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd230253230356_
                                                  _arg230255230350_))))
                                     (declare (not safe))
                                     (_loop230251230345_
                                      _lp-tl230254230358_
                                      __tmp241143))))
                               (let ((_arg230256230361_
                                      (reverse _arg230255230350_)))
                                 (___kont239996239997_ _arg230256230361_))))))
                 (let ()
                   (declare (not safe))
                   (_loop230251230345_ _target230248230340_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx239994239995_))
                                                   (let ((___splice239998239999_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx239994239995_
                                                             '0))))
                                                     (let ((_tl230250230342_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice239998239999_
                                                               '1)))
                                                           (_target230248230340_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice239998239999_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl230250230342_))
                                                           (___match240013240014_
                                                            ___splice239998239999_
                                                            _target230248230340_
                                                            _tl230250230342_)
                                                           (___match240019240020_
                                                            ___splice239998239999_
                                                            _target230248230340_
                                                            _tl230250230342_))))
                                                   (___kont240004240005_
                                                    ___stx239994239995_))))))
                                       _hd230202230224_
                                       _hd230199230216_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230194230208_ _g230195230211_)))))
                              (let ()
                                (declare (not safe))
                                (_g230194230208_ _g230195230211_)))))
                      (let ()
                        (declare (not safe))
                        (_g230194230208_ _g230195230211_))))))
          (declare (not safe))
          (_g230193230385_ _form230192_))))
    (define gxc#lambda-expr?
      (lambda (_expr230145_)
        (let* ((___stx240022240023_ _expr230145_)
               (_g230148230158_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240022240023_)))))
          (let ((___kont240024240025_ (lambda (_L230178_) '#t))
                (___kont240026240027_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240022240023_))
                (let ((_e230153230170_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240022240023_))))
                  (let ((_tl230151230175_
                         (let () (declare (not safe)) (##cdr _e230153230170_)))
                        (_hd230152230173_
                         (let ()
                           (declare (not safe))
                           (##car _e230153230170_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230152230173_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd230152230173_))
                            (___kont240024240025_ _tl230151230175_)
                            (___kont240026240027_))
                        (___kont240026240027_))))
                (___kont240026240027_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr230098_)
        (let* ((___stx240040240041_ _expr230098_)
               (_g230101230111_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240040240041_)))))
          (let ((___kont240042240043_ (lambda (_L230131_) '#t))
                (___kont240044240045_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240040240041_))
                (let ((_e230106230123_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240040240041_))))
                  (let ((_tl230104230128_
                         (let () (declare (not safe)) (##cdr _e230106230123_)))
                        (_hd230105230126_
                         (let ()
                           (declare (not safe))
                           (##car _e230106230123_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230105230126_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd230105230126_))
                            (___kont240042240043_ _tl230104230128_)
                            (___kont240044240045_))
                        (___kont240044240045_))))
                (___kont240044240045_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr229967_)
        (let* ((___stx240058240059_ _expr229967_)
               (_g229970230000_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240058240059_)))))
          (let ((___kont240060240061_
                 (lambda (_L230068_ _L230069_ _L230070_)
                   (if (let () (declare (not safe)) (gx#identifier? _L230070_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L230069_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L230068_))
                           '#f)
                       '#f)))
                (___kont240062240063_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240058240059_))
                (let ((_e229977230012_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240058240059_))))
                  (let ((_tl229975230017_
                         (let () (declare (not safe)) (##cdr _e229977230012_)))
                        (_hd229976230015_
                         (let ()
                           (declare (not safe))
                           (##car _e229977230012_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd229976230015_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd229976230015_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229975230017_))
                                (let ((_e229980230020_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229975230017_))))
                                  (let ((_tl229978230025_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229980230020_)))
                                        (_hd229979230023_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229980230020_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd229979230023_))
                                        (let ((_e229983230028_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd229979230023_))))
                                          (let ((_tl229981230033_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229983230028_)))
                                                (_hd229982230031_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229983230028_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd229982230031_))
                                                (let ((_e229986230036_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd229982230031_))))
                                                  (let ((_tl229984230041_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229986230036_)))
                                                        (_hd229985230039_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229986230036_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229985230039_))
                                                        (let ((_e229989230044_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229985230039_))))
                  (let ((_tl229987230049_
                         (let () (declare (not safe)) (##cdr _e229989230044_)))
                        (_hd229988230047_
                         (let ()
                           (declare (not safe))
                           (##car _e229989230044_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl229987230049_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229984230041_))
                            (let ((_e229992230052_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229984230041_))))
                              (let ((_tl229990230057_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229992230052_)))
                                    (_hd229991230055_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229992230052_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl229990230057_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229981230033_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229978230025_))
                                            (let ((_e229995230060_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229978230025_))))
                                              (let ((_tl229993230065_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229995230060_)))
                                                    (_hd229994230063_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229995230060_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl229993230065_))
                                                    (___kont240060240061_
                                                     _hd229994230063_
                                                     _hd229991230055_
                                                     _hd229988230047_)
                                                    (___kont240062240063_))))
                                            (___kont240062240063_))
                                        (___kont240062240063_))
                                    (___kont240062240063_))))
                            (___kont240062240063_))
                        (___kont240062240063_))))
                (___kont240062240063_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240062240063_))))
                                        (___kont240062240063_))))
                                (___kont240062240063_))
                            (___kont240062240063_))
                        (___kont240062240063_))))
                (___kont240062240063_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr229292_)
        (let* ((___stx240120240121_ _expr229292_)
               (_g229295229453_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240120240121_)))))
          (let ((___kont240122240123_
                 (lambda (_L229841_
                          _L229842_
                          _L229843_
                          _L229844_
                          _L229845_
                          _L229846_
                          _L229847_
                          _L229848_
                          _L229849_
                          _L229850_
                          _L229851_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L229848_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L229844_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L229843_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L229851_
                                      _L229842_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L229850_
                                          _L229847_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L229845_
                                              _L229841_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L229849_
                                              _L229846_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont240124240125_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240120240121_))
                (let ((_e229310229465_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240120240121_))))
                  (let ((_tl229308229470_
                         (let () (declare (not safe)) (##cdr _e229310229465_)))
                        (_hd229309229468_
                         (let ()
                           (declare (not safe))
                           (##car _e229310229465_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd229309229468_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd229309229468_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229308229470_))
                                (let ((_e229313229473_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229308229470_))))
                                  (let ((_tl229311229478_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229313229473_)))
                                        (_hd229312229476_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229313229473_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd229312229476_))
                                        (let ((_e229316229481_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd229312229476_))))
                                          (let ((_tl229314229486_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229316229481_)))
                                                (_hd229315229484_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229316229481_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd229315229484_))
                                                (let ((_e229319229489_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd229315229484_))))
                                                  (let ((_tl229317229494_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229319229489_)))
                                                        (_hd229318229492_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229319229489_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229318229492_))
                                                        (let ((_e229322229497_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229318229492_))))
                  (let ((_tl229320229502_
                         (let () (declare (not safe)) (##cdr _e229322229497_)))
                        (_hd229321229500_
                         (let ()
                           (declare (not safe))
                           (##car _e229322229497_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl229320229502_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229317229494_))
                            (let ((_e229325229505_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229317229494_))))
                              (let ((_tl229323229510_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229325229505_)))
                                    (_hd229324229508_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229325229505_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd229324229508_))
                                    (let ((_e229328229513_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd229324229508_))))
                                      (let ((_tl229326229518_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229328229513_)))
                                            (_hd229327229516_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229328229513_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd229327229516_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd229327229516_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229326229518_))
                                                    (let ((_e229331229521_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229326229518_))))
                                                      (let ((_tl229329229526_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229331229521_)))
                    (_hd229330229524_
                     (let () (declare (not safe)) (##car _e229331229521_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd229330229524_))
                    (let ((_e229334229529_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd229330229524_))))
                      (let ((_tl229332229534_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229334229529_)))
                            (_hd229333229532_
                             (let ()
                               (declare (not safe))
                               (##car _e229334229529_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd229333229532_))
                            (let ((_e229337229537_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd229333229532_))))
                              (let ((_tl229335229542_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229337229537_)))
                                    (_hd229336229540_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229337229537_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd229336229540_))
                                    (let ((_e229340229545_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd229336229540_))))
                                      (let ((_tl229338229550_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229340229545_)))
                                            (_hd229339229548_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229340229545_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229338229550_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229335229542_))
                                                (let ((_e229343229553_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229335229542_))))
                                                  (let ((_tl229341229558_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229343229553_)))
                                                        (_hd229342229556_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229343229553_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl229341229558_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl229332229534_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl229329229526_))
                        (let ((_e229346229561_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229329229526_))))
                          (let ((_tl229344229566_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229346229561_)))
                                (_hd229345229564_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229346229561_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd229345229564_))
                                (let ((_e229349229569_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd229345229564_))))
                                  (let ((_tl229347229574_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229349229569_)))
                                        (_hd229348229572_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229349229569_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd229348229572_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd229348229572_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229347229574_))
                                                (let ((_e229352229577_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229347229574_))))
                                                  (let ((_tl229350229582_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229352229577_)))
                                                        (_hd229351229580_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229352229577_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229351229580_))
                                                        (let ((_e229355229585_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229351229580_))))
                  (let ((_tl229353229590_
                         (let () (declare (not safe)) (##cdr _e229355229585_)))
                        (_hd229354229588_
                         (let ()
                           (declare (not safe))
                           (##car _e229355229585_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl229350229582_))
                        (let ((_e229358229593_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229350229582_))))
                          (let ((_tl229356229598_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229358229593_)))
                                (_hd229357229596_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229358229593_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd229357229596_))
                                (let ((_e229361229601_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd229357229596_))))
                                  (let ((_tl229359229606_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229361229601_)))
                                        (_hd229360229604_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229361229601_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd229360229604_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd229360229604_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229359229606_))
                                                (let ((_e229364229609_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229359229606_))))
                                                  (let ((_tl229362229614_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229364229609_)))
                                                        (_hd229363229612_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229364229609_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229363229612_))
                                                        (let ((_e229367229617_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229363229612_))))
                  (let ((_tl229365229622_
                         (let () (declare (not safe)) (##cdr _e229367229617_)))
                        (_hd229366229620_
                         (let ()
                           (declare (not safe))
                           (##car _e229367229617_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd229366229620_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd229366229620_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229365229622_))
                                (let ((_e229370229625_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229365229622_))))
                                  (let ((_tl229368229630_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229370229625_)))
                                        (_hd229369229628_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229370229625_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229368229630_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229362229614_))
                                            (let ((_e229373229633_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229362229614_))))
                                              (let ((_tl229371229638_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229373229633_)))
                                                    (_hd229372229636_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229373229633_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd229372229636_))
                                                    (let ((_e229376229641_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd229372229636_))))
                                                      (let ((_tl229374229646_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229376229641_)))
                    (_hd229375229644_
                     (let () (declare (not safe)) (##car _e229376229641_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd229375229644_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd229375229644_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229374229646_))
                            (let ((_e229379229649_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229374229646_))))
                              (let ((_tl229377229654_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229379229649_)))
                                    (_hd229378229652_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229379229649_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl229377229654_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl229371229638_))
                                        (let ((_e229382229657_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl229371229638_))))
                                          (let ((_tl229380229662_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229382229657_)))
                                                (_hd229381229660_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229382229657_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd229381229660_))
                                                (let ((_e229385229665_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd229381229660_))))
                                                  (let ((_tl229383229670_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229385229665_)))
                                                        (_hd229384229668_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229385229665_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd229384229668_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd229384229668_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl229383229670_))
                        (let ((_e229388229673_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229383229670_))))
                          (let ((_tl229386229678_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229388229673_)))
                                (_hd229387229676_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229388229673_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl229386229678_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl229356229598_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229344229566_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229323229510_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229314229486_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229311229478_))
                                                    (let ((_e229391229681_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229311229478_))))
                                                      (let ((_tl229389229686_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229391229681_)))
                    (_hd229390229684_
                     (let () (declare (not safe)) (##car _e229391229681_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd229390229684_))
                    (let ((_e229394229689_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd229390229684_))))
                      (let ((_tl229392229694_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229394229689_)))
                            (_hd229393229692_
                             (let ()
                               (declare (not safe))
                               (##car _e229394229689_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd229393229692_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd229393229692_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl229392229694_))
                                    (let ((_e229397229697_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl229392229694_))))
                                      (let ((_tl229395229702_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229397229697_)))
                                            (_hd229396229700_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229397229697_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229395229702_))
                                            (let ((_e229400229705_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229395229702_))))
                                              (let ((_tl229398229710_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229400229705_)))
                                                    (_hd229399229708_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229400229705_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd229399229708_))
                                                    (let ((_e229403229713_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd229399229708_))))
                                                      (let ((_tl229401229718_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229403229713_)))
                    (_hd229402229716_
                     (let () (declare (not safe)) (##car _e229403229713_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd229402229716_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd229402229716_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229401229718_))
                            (let ((_e229406229721_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229401229718_))))
                              (let ((_tl229404229726_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229406229721_)))
                                    (_hd229405229724_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229406229721_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd229405229724_))
                                    (let ((_e229409229729_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd229405229724_))))
                                      (let ((_tl229407229734_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229409229729_)))
                                            (_hd229408229732_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229409229729_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd229408229732_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd229408229732_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229407229734_))
                                                    (let ((_e229412229737_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229407229734_))))
                                                      (let ((_tl229410229742_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229412229737_)))
                    (_hd229411229740_
                     (let () (declare (not safe)) (##car _e229412229737_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl229410229742_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl229404229726_))
                        (let ((_e229415229745_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229404229726_))))
                          (let ((_tl229413229750_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229415229745_)))
                                (_hd229414229748_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229415229745_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd229414229748_))
                                (let ((_e229418229753_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd229414229748_))))
                                  (let ((_tl229416229758_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229418229753_)))
                                        (_hd229417229756_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229418229753_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd229417229756_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd229417229756_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229416229758_))
                                                (let ((_e229421229761_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229416229758_))))
                                                  (let ((_tl229419229766_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229421229761_)))
                                                        (_hd229420229764_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229421229761_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl229419229766_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl229413229750_))
                                                            (let ((_e229424229769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl229413229750_))))
                      (let ((_tl229422229774_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229424229769_)))
                            (_hd229423229772_
                             (let ()
                               (declare (not safe))
                               (##car _e229424229769_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd229423229772_))
                            (let ((_e229427229777_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd229423229772_))))
                              (let ((_tl229425229782_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229427229777_)))
                                    (_hd229426229780_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229427229777_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd229426229780_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd229426229780_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229425229782_))
                                            (let ((_e229430229785_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229425229782_))))
                                              (let ((_tl229428229790_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229430229785_)))
                                                    (_hd229429229788_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229430229785_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl229428229790_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl229422229774_))
                                                        (let ((_e229433229793_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl229422229774_))))
                  (let ((_tl229431229798_
                         (let () (declare (not safe)) (##cdr _e229433229793_)))
                        (_hd229432229796_
                         (let ()
                           (declare (not safe))
                           (##car _e229433229793_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd229432229796_))
                        (let ((_e229436229801_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd229432229796_))))
                          (let ((_tl229434229806_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229436229801_)))
                                (_hd229435229804_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229436229801_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd229435229804_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd229435229804_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl229434229806_))
                                        (let ((_e229439229809_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl229434229806_))))
                                          (let ((_tl229437229814_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229439229809_)))
                                                (_hd229438229812_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229439229809_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229437229814_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229431229798_))
                                                    (let ((_e229442229817_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229431229798_))))
                                                      (let ((_tl229440229822_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229442229817_)))
                    (_hd229441229820_
                     (let () (declare (not safe)) (##car _e229442229817_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd229441229820_))
                    (let ((_e229445229825_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd229441229820_))))
                      (let ((_tl229443229830_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229445229825_)))
                            (_hd229444229828_
                             (let ()
                               (declare (not safe))
                               (##car _e229445229825_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd229444229828_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd229444229828_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl229443229830_))
                                    (let ((_e229448229833_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl229443229830_))))
                                      (let ((_tl229446229838_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229448229833_)))
                                            (_hd229447229836_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229448229833_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229446229838_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229440229822_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl229398229710_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl229389229686_))
                                                        (___kont240122240123_
                                                         _hd229447229836_
                                                         _hd229438229812_
                                                         _hd229420229764_
                                                         _hd229411229740_
                                                         _hd229396229700_
                                                         _hd229387229676_
                                                         _hd229378229652_
                                                         _hd229369229628_
                                                         _hd229354229588_
                                                         _hd229339229548_
                                                         _hd229321229500_)
                                                        (___kont240124240125_))
                                                    (___kont240124240125_))
                                                (___kont240124240125_))
                                            (___kont240124240125_))))
                                    (___kont240124240125_))
                                (___kont240124240125_))
                            (___kont240124240125_))))
                    (___kont240124240125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240124240125_))
                                                (___kont240124240125_))))
                                        (___kont240124240125_))
                                    (___kont240124240125_))
                                (___kont240124240125_))))
                        (___kont240124240125_))))
                (___kont240124240125_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240124240125_))))
                                            (___kont240124240125_))
                                        (___kont240124240125_))
                                    (___kont240124240125_))))
                            (___kont240124240125_))))
                    (___kont240124240125_))
                (___kont240124240125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240124240125_))
                                            (___kont240124240125_))
                                        (___kont240124240125_))))
                                (___kont240124240125_))))
                        (___kont240124240125_))
                    (___kont240124240125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240124240125_))
                                                (___kont240124240125_))
                                            (___kont240124240125_))))
                                    (___kont240124240125_))))
                            (___kont240124240125_))
                        (___kont240124240125_))
                    (___kont240124240125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240124240125_))))
                                            (___kont240124240125_))))
                                    (___kont240124240125_))
                                (___kont240124240125_))
                            (___kont240124240125_))))
                    (___kont240124240125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240124240125_))
                                                (___kont240124240125_))
                                            (___kont240124240125_))
                                        (___kont240124240125_))
                                    (___kont240124240125_))
                                (___kont240124240125_))))
                        (___kont240124240125_))
                    (___kont240124240125_))
                (___kont240124240125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240124240125_))))
                                        (___kont240124240125_))
                                    (___kont240124240125_))))
                            (___kont240124240125_))
                        (___kont240124240125_))
                    (___kont240124240125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240124240125_))))
                                            (___kont240124240125_))
                                        (___kont240124240125_))))
                                (___kont240124240125_))
                            (___kont240124240125_))
                        (___kont240124240125_))))
                (___kont240124240125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240124240125_))
                                            (___kont240124240125_))
                                        (___kont240124240125_))))
                                (___kont240124240125_))))
                        (___kont240124240125_))))
                (___kont240124240125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240124240125_))
                                            (___kont240124240125_))
                                        (___kont240124240125_))))
                                (___kont240124240125_))))
                        (___kont240124240125_))
                    (___kont240124240125_))
                (___kont240124240125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240124240125_))
                                            (___kont240124240125_))))
                                    (___kont240124240125_))))
                            (___kont240124240125_))))
                    (___kont240124240125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240124240125_))
                                                (___kont240124240125_))
                                            (___kont240124240125_))))
                                    (___kont240124240125_))))
                            (___kont240124240125_))
                        (___kont240124240125_))))
                (___kont240124240125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240124240125_))))
                                        (___kont240124240125_))))
                                (___kont240124240125_))
                            (___kont240124240125_))
                        (___kont240124240125_))))
                (___kont240124240125_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx229034_ _id229035_ _clauses229036_ _gensym?229037_)
        (let _lp229039_ ((_rest229041_ _clauses229036_)
                         (_ids229042_ '())
                         (_impls229043_ '())
                         (_clauses229044_ '()))
          (let* ((_rest229045229053_ _rest229041_)
                 (_else229047229061_
                  (lambda ()
                    (values (reverse _ids229042_)
                            (reverse _impls229043_)
                            (reverse _clauses229044_))))
                 (_K229049229266_
                  (lambda (_rest229064_ _clause229065_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause229065_))
                        (let ((__tmp241199
                               (let ()
                                 (declare (not safe))
                                 (cons _clause229065_ _clauses229044_))))
                          (declare (not safe))
                          (_lp229039_
                           _rest229064_
                           _ids229042_
                           _impls229043_
                           __tmp241199))
                        (let* ((_g229067229078_
                                (lambda (_g229068229075_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g229068229075_))))
                               (_g229066229263_
                                (lambda (_g229068229081_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g229068229081_))
                                      (let ((_e229073229083_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g229068229081_))))
                                        (let ((_hd229072229086_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229073229083_)))
                                              (_tl229071229088_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229073229083_))))
                                          ((lambda (_L229091_ _L229092_)
                                             (let* ((_id229109_
                                                     (let ((__tmp241146
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id229035_)))
                                                           (__tmp241145
                                                            (length _clauses229044_))
                                                           (__tmp241144
                                                            (if _gensym?229037_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp241146
                                                        '"__"
                                                        __tmp241145
                                                        __tmp241144)))
                                                    (_id229111_
                                                     (let ((__tmp241147
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx229034_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id229109_
                                                        __tmp241147)))
                                                    (_impl229113_
                                                     (let ((__tmp241148
                                                            (let ((__tmp241150
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp241149
                           (let ()
                             (declare (not safe))
                             (cons _L229092_ _L229091_))))
                      (declare (not safe))
                      (cons __tmp241150 __tmp241149))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp241148 _stx229034_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause229260_
                                                     (let* ((___stx240504240505_
                                                             _L229092_)
                                                            (_g229117229145_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx240504240505_)))))
               (let ((___kont240506240507_
                      (lambda (_L229239_)
                        (let ((__tmp241151
                               (let ((__tmp241152
                                      (let ((__tmp241153
                                             (let ((__tmp241154
                                                    (let ((__tmp241160
                                                           (let ((__tmp241161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id229111_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp241161)))
                  (__tmp241155
                   (let ((__tmp241156
                          (lambda (_g229249229252_ _g229250229254_)
                            (let ((__tmp241157
                                   (let ((__tmp241159
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp241158
                                          (let ()
                                            (declare (not safe))
                                            (cons _g229249229252_ '()))))
                                     (declare (not safe))
                                     (cons __tmp241159 __tmp241158))))
                              (declare (not safe))
                              (cons __tmp241157 _g229250229254_)))))
                     (declare (not safe))
                     (foldr1 __tmp241156 '() _L229239_))))
              (declare (not safe))
              (cons __tmp241160 __tmp241155))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp241154))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp241153
                                         _stx229034_))))
                                 (declare (not safe))
                                 (cons __tmp241152 '()))))
                          (declare (not safe))
                          (cons _L229092_ __tmp241151))))
                     (___kont240510240511_
                      (lambda (_L229190_ _L229191_)
                        (let ((__tmp241162
                               (let ((__tmp241163
                                      (let ((__tmp241164
                                             (let ((__tmp241165
                                                    (let ((__tmp241179
                                                           (let ((__tmp241180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp241180)))
                  (__tmp241166
                   (let ((__tmp241177
                          (let ((__tmp241178
                                 (let ()
                                   (declare (not safe))
                                   (cons _id229111_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp241178)))
                         (__tmp241167
                          (let ((__tmp241173
                                 (let ((__tmp241174
                                        (let ((__tmp241176
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp241175
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L229190_ '()))))
                                          (declare (not safe))
                                          (cons __tmp241176 __tmp241175))))
                                   (declare (not safe))
                                   (cons __tmp241174 '())))
                                (__tmp241168
                                 (let ((__tmp241169
                                        (lambda (_g229202229205_
                                                 _g229203229207_)
                                          (let ((__tmp241170
                                                 (let ((__tmp241172
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp241171
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g229202229205_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp241172
                                                         __tmp241171))))
                                            (declare (not safe))
                                            (cons __tmp241170
                                                  _g229203229207_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp241169 '() _L229191_))))
                            (declare (not safe))
                            (foldr1 cons __tmp241173 __tmp241168))))
                     (declare (not safe))
                     (cons __tmp241177 __tmp241167))))
              (declare (not safe))
              (cons __tmp241179 __tmp241166))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp241165))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp241164
                                         _stx229034_))))
                                 (declare (not safe))
                                 (cons __tmp241163 '()))))
                          (declare (not safe))
                          (cons _L229092_ __tmp241162))))
                     (___kont240514240515_
                      (lambda (_L229150_)
                        (let ((__tmp241181
                               (let ((__tmp241182
                                      (let ((__tmp241183
                                             (let ((__tmp241184
                                                    (let ((__tmp241192
                                                           (let ((__tmp241193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp241193)))
                  (__tmp241185
                   (let ((__tmp241190
                          (let ((__tmp241191
                                 (let ()
                                   (declare (not safe))
                                   (cons _id229111_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp241191)))
                         (__tmp241186
                          (let ((__tmp241187
                                 (let ((__tmp241189
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp241188
                                        (let ()
                                          (declare (not safe))
                                          (cons _L229150_ '()))))
                                   (declare (not safe))
                                   (cons __tmp241189 __tmp241188))))
                            (declare (not safe))
                            (cons __tmp241187 '()))))
                     (declare (not safe))
                     (cons __tmp241190 __tmp241186))))
              (declare (not safe))
              (cons __tmp241192 __tmp241185))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp241184))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp241183
                                         _stx229034_))))
                                 (declare (not safe))
                                 (cons __tmp241182 '()))))
                          (declare (not safe))
                          (cons _L229092_ __tmp241181)))))
                 (let* ((___match240529240530_
                         (lambda (___splice240512240513_
                                  _target229131229166_
                                  _tl229133229168_)
                           (letrec ((_loop229134229171_
                                     (lambda (_hd229132229174_
                                              _arg229138229176_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd229132229174_))
                                           (let ((_e229135229179_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd229132229174_))))
                                             (let ((_lp-tl229137229184_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e229135229179_)))
                                                   (_lp-hd229136229182_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e229135229179_))))
                                               (let ((__tmp241194
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd229136229182_
                                                              _arg229138229176_))))
                                                 (declare (not safe))
                                                 (_loop229134229171_
                                                  _lp-tl229137229184_
                                                  __tmp241194))))
                                           (let ((_arg229139229187_
                                                  (reverse _arg229138229176_)))
                                             (___kont240510240511_
                                              _tl229133229168_
                                              _arg229139229187_))))))
                             (let ()
                               (declare (not safe))
                               (_loop229134229171_
                                _target229131229166_
                                '())))))
                        (___match240523240524_
                         (lambda (___splice240508240509_
                                  _target229120229215_
                                  _tl229122229217_)
                           (letrec ((_loop229123229220_
                                     (lambda (_hd229121229223_
                                              _arg229127229225_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd229121229223_))
                                           (let ((_e229124229228_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd229121229223_))))
                                             (let ((_lp-tl229126229233_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e229124229228_)))
                                                   (_lp-hd229125229231_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e229124229228_))))
                                               (let ((__tmp241195
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd229125229231_
                                                              _arg229127229225_))))
                                                 (declare (not safe))
                                                 (_loop229123229220_
                                                  _lp-tl229126229233_
                                                  __tmp241195))))
                                           (let ((_arg229128229236_
                                                  (reverse _arg229127229225_)))
                                             (___kont240506240507_
                                              _arg229128229236_))))))
                             (let ()
                               (declare (not safe))
                               (_loop229123229220_
                                _target229120229215_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx240504240505_))
                       (let ((___splice240508240509_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx240504240505_
                                 '0))))
                         (let ((_tl229122229217_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice240508240509_ '1)))
                               (_target229120229215_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice240508240509_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229122229217_))
                               (___match240523240524_
                                ___splice240508240509_
                                _target229120229215_
                                _tl229122229217_)
                               (___match240529240530_
                                ___splice240508240509_
                                _target229120229215_
                                _tl229122229217_))))
                       (___kont240514240515_ ___stx240504240505_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp241198
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id229111_
                                                              _ids229042_)))
                                                     (__tmp241197
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl229113_
                                                              _impls229043_)))
                                                     (__tmp241196
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause229260_
                                                              _clauses229044_))))
                                                 (declare (not safe))
                                                 (_lp229039_
                                                  _rest229064_
                                                  __tmp241198
                                                  __tmp241197
                                                  __tmp241196))))
                                           _tl229071229088_
                                           _hd229072229086_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g229067229078_ _g229068229081_))))))
                          (declare (not safe))
                          (_g229066229263_ _clause229065_))))))
            (if (let () (declare (not safe)) (##pair? _rest229045229053_))
                (let ((_hd229050229269_
                       (let ()
                         (declare (not safe))
                         (##car _rest229045229053_)))
                      (_tl229051229271_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest229045229053_))))
                  (let* ((_clause229274_ _hd229050229269_)
                         (_rest229276_ _tl229051229271_))
                    (declare (not safe))
                    (_K229049229266_ _rest229276_ _clause229274_)))
                (let () (declare (not safe)) (_else229047229061_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx229281_ _id229282_ _clauses229283_)
        (let ((_gensym?229285_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx229281_
           _id229282_
           _clauses229283_
           _gensym?229285_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g241201_
        (let ((_g241200_ (let () (declare (not safe)) (##length _g241201_))))
          (cond ((let () (declare (not safe)) (##fx= _g241200_ 3))
                 (apply (lambda (_stx229281_ _id229282_ _clauses229283_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx229281_
                             _id229282_
                             _clauses229283_)))
                        _g241201_))
                ((let () (declare (not safe)) (##fx= _g241200_ 4))
                 (apply (lambda (_stx229287_
                                 _id229288_
                                 _clauses229289_
                                 _gensym?229290_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx229287_
                             _id229288_
                             _clauses229289_
                             _gensym?229290_)))
                        _g241201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g241201_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx228311_)
        (letrec ((_case-lambda-clause-def228313_
                  (lambda (_id229030_ _impl229031_)
                    (let ((__tmp241202
                           (let ((__tmp241203
                                  (let ((__tmp241206
                                         (let ()
                                           (declare (not safe))
                                           (cons _id229030_ '())))
                                        (__tmp241204
                                         (let ((__tmp241205
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl229031_))))
                                           (declare (not safe))
                                           (cons __tmp241205 '()))))
                                    (declare (not safe))
                                    (cons __tmp241206 __tmp241204))))
                             (declare (not safe))
                             (cons '%#define-values __tmp241203))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp241202 _stx228311_))))
                 (_opt-lambda-dispatch-name228314_
                  (lambda (_id229026_)
                    (if (uninterned-symbol? _id229026_)
                        (let ((_str229028_ (symbol->string _id229026_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str229028_))
                              '"%"
                              _id229026_))
                        _id229026_)))
                 (_kw-lambda-dispatch-name228315_
                  (lambda (_id229021_ _name229022_)
                    (if (uninterned-symbol? _id229021_)
                        (let ((_str229024_ (symbol->string _id229021_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str229024_))
                              _name229022_
                              _id229021_))
                        _id229021_))))
          (let* ((___stx240552240553_ _stx228311_)
                 (_g228320228379_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx240552240553_)))))
            (let ((___kont240554240555_
                   (lambda (_L228930_ _L228931_)
                     (let* ((___stx240532240533_ _L228930_)
                            (_g228948228962_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx240532240533_)))))
                       (let ((___kont240534240535_
                              (lambda (_L229006_) _stx228311_))
                             (___kont240536240537_
                              (lambda (_L228975_)
                                (let ((_g241207_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx228311_
                                          _L228931_
                                          _L228975_))))
                                  (begin
                                    (let ((_g241208_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g241207_)
                                                 (##vector-length _g241207_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g241208_ 3)))
                                          (error "Context expects 3 values"
                                                 _g241208_)))
                                    (let ((_ids228985_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g241207_ 0)))
                                          (_impls228986_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g241207_ 1)))
                                          (_clauses228987_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g241207_ 2))))
                                      (let* ((_g241209_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids228985_))
                                             (_defs228990_
                                              (map _case-lambda-clause-def228313_
                                                   _ids228985_
                                                   _impls228986_)))
                                        (let ((__tmp241211
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L228931_)))
                                              (__tmp241210
                                               (map gxc#identifier-symbol
                                                    _ids228985_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp241211
                                           '" => "
                                           __tmp241210))
                                        (let ((__tmp241212
                                               (let ((__tmp241213
                                                      (let ((__tmp241214
                                                             (let ((__tmp241215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp241216
                                   (let ((__tmp241217
                                          (let ((__tmp241222
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L228931_ '())))
                                                (__tmp241218
                                                 (let ((__tmp241219
                                                        (let ((__tmp241221
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses228987_)))
                      (__tmp241220
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp241221 __tmp241220))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp241219 '()))))
                                            (declare (not safe))
                                            (cons __tmp241222 __tmp241218))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp241217))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp241216
                               _stx228311_))))
                       (declare (not safe))
                       (cons __tmp241215 '()))))
                (declare (not safe))
                (foldr1 cons __tmp241214 _defs228990_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp241213))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp241212
                                           _stx228311_)))))))))
                         (let ((___match240543240544_
                                (lambda (_e228953228998_
                                         _hd228952229001_
                                         _tl228951229003_)
                                  (let ((_L229006_ _tl228951229003_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L229006_))
                                        (___kont240534240535_ _L229006_)
                                        (___kont240536240537_
                                         _tl228951229003_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx240532240533_))
                               (let ((_e228953228998_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx240532240533_))))
                                 (let ((_tl228951229003_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e228953228998_)))
                                       (_hd228952229001_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e228953228998_))))
                                   (___match240543240544_
                                    _e228953228998_
                                    _hd228952229001_
                                    _tl228951229003_)))
                               (let ()
                                 (declare (not safe))
                                 (_g228948228962_))))))))
                  (___kont240556240557_
                   (lambda (_L228748_ _L228749_)
                     (let* ((_g228765228795_
                             (lambda (_g228766228792_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g228766228792_))))
                            (_g228764228890_
                             (lambda (_g228766228798_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g228766228798_))
                                   (let ((_e228772228800_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g228766228798_))))
                                     (let ((_hd228771228803_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e228772228800_)))
                                           (_tl228770228805_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e228772228800_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl228770228805_))
                                           (let ((_e228775228808_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl228770228805_))))
                                             (let ((_hd228774228811_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e228775228808_)))
                                                   (_tl228773228813_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e228775228808_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd228774228811_))
                                                   (let ((_e228778228816_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd228774228811_))))
                                                     (let ((_hd228777228819_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228778228816_)))
                                                           (_tl228776228821_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228778228816_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd228777228819_))
                                                           (let ((_e228781228824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd228777228819_))))
                     (let ((_hd228780228827_
                            (let ()
                              (declare (not safe))
                              (##car _e228781228824_)))
                           (_tl228779228829_
                            (let ()
                              (declare (not safe))
                              (##cdr _e228781228824_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd228780228827_))
                           (let ((_e228784228832_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd228780228827_))))
                             (let ((_hd228783228835_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e228784228832_)))
                                   (_tl228782228837_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e228784228832_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl228782228837_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl228779228829_))
                                       (let ((_e228787228840_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl228779228829_))))
                                         (let ((_hd228786228843_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228787228840_)))
                                               (_tl228785228845_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228787228840_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl228785228845_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl228776228821_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl228773228813_))
                                                       (let ((_e228790228848_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl228773228813_))))
                 (let ((_hd228789228851_
                        (let () (declare (not safe)) (##car _e228790228848_)))
                       (_tl228788228853_
                        (let () (declare (not safe)) (##cdr _e228790228848_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl228788228853_))
                       ((lambda (_L228856_ _L228857_ _L228858_)
                          (let* ((_lambda-id228882_
                                  (let ((__tmp241225
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L228749_)))
                                        (__tmp241223
                                         (let ((__tmp241224
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L228858_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name228314_
                                            __tmp241224))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp241225
                                     '"__"
                                     __tmp241223)))
                                 (_lambda-id228884_
                                  (let ((__tmp241226
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx228311_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id228882_
                                     __tmp241226)))
                                 (_g241227_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id228884_)))
                                 (_new-case-lambda-expr228887_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L228856_
                                     _L228858_
                                     _lambda-id228884_))))
                            (let ((__tmp241229
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L228749_)))
                                  (__tmp241228
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id228884_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp241229
                               '" => "
                               __tmp241228))
                            (let ((__tmp241230
                                   (let ((__tmp241231
                                          (let ((__tmp241239
                                                 (let ((__tmp241240
                                                        (let ((__tmp241241
                                                               (let ((__tmp241244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id228884_ '())))
                             (__tmp241242
                              (let ((__tmp241243
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L228857_))))
                                (declare (not safe))
                                (cons __tmp241243 '()))))
                         (declare (not safe))
                         (cons __tmp241244 __tmp241242))))
                  (declare (not safe))
                  (cons '%#define-values __tmp241241))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp241240
                                                    _stx228311_)))
                                                (__tmp241232
                                                 (let ((__tmp241233
                                                        (let ((__tmp241234
                                                               (let ((__tmp241235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp241236
                                     (let ((__tmp241238
                                            (let ()
                                              (declare (not safe))
                                              (cons _L228749_ '())))
                                           (__tmp241237
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr228887_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp241238 __tmp241237))))
                                (declare (not safe))
                                (cons '%#define-values __tmp241236))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp241235 _stx228311_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp241234))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp241233 '()))))
                                            (declare (not safe))
                                            (cons __tmp241239 __tmp241232))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp241231))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp241230
                               _stx228311_))))
                        _hd228789228851_
                        _hd228786228843_
                        _hd228783228835_)
                       (let ()
                         (declare (not safe))
                         (_g228765228795_ _g228766228798_)))))
               (let () (declare (not safe)) (_g228765228795_ _g228766228798_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228765228795_
                                                      _g228766228798_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228765228795_
                                                  _g228766228798_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g228765228795_ _g228766228798_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g228765228795_ _g228766228798_)))))
                           (let ()
                             (declare (not safe))
                             (_g228765228795_ _g228766228798_)))))
                   (let ()
                     (declare (not safe))
                     (_g228765228795_ _g228766228798_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228765228795_
                                                      _g228766228798_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g228765228795_
                                              _g228766228798_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g228765228795_ _g228766228798_))))))
                       (declare (not safe))
                       (_g228764228890_ _L228748_))))
                  (___kont240558240559_
                   (lambda (_L228462_ _L228463_)
                     (let* ((_g228479228532_
                             (lambda (_g228480228529_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g228480228529_))))
                            (_g228478228708_
                             (lambda (_g228480228535_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g228480228535_))
                                   (let ((_e228488228537_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g228480228535_))))
                                     (let ((_hd228487228540_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e228488228537_)))
                                           (_tl228486228542_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e228488228537_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl228486228542_))
                                           (let ((_e228491228545_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl228486228542_))))
                                             (let ((_hd228490228548_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e228491228545_)))
                                                   (_tl228489228550_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e228491228545_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd228490228548_))
                                                   (let ((_e228494228553_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd228490228548_))))
                                                     (let ((_hd228493228556_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228494228553_)))
                                                           (_tl228492228558_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228494228553_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd228493228556_))
                                                           (let ((_e228497228561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd228493228556_))))
                     (let ((_hd228496228564_
                            (let ()
                              (declare (not safe))
                              (##car _e228497228561_)))
                           (_tl228495228566_
                            (let ()
                              (declare (not safe))
                              (##cdr _e228497228561_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd228496228564_))
                           (let ((_e228500228569_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd228496228564_))))
                             (let ((_hd228499228572_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e228500228569_)))
                                   (_tl228498228574_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e228500228569_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl228498228574_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl228495228566_))
                                       (let ((_e228503228577_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl228495228566_))))
                                         (let ((_hd228502228580_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228503228577_)))
                                               (_tl228501228582_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228503228577_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd228502228580_))
                                               (let ((_e228506228585_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd228502228580_))))
                                                 (let ((_hd228505228588_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e228506228585_)))
                                                       (_tl228504228590_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e228506228585_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl228504228590_))
                                                       (let ((_e228509228593_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl228504228590_))))
                 (let ((_hd228508228596_
                        (let () (declare (not safe)) (##car _e228509228593_)))
                       (_tl228507228598_
                        (let () (declare (not safe)) (##cdr _e228509228593_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd228508228596_))
                       (let ((_e228512228601_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd228508228596_))))
                         (let ((_hd228511228604_
                                (let ()
                                  (declare (not safe))
                                  (##car _e228512228601_)))
                               (_tl228510228606_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e228512228601_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd228511228604_))
                               (let ((_e228515228609_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd228511228604_))))
                                 (let ((_hd228514228612_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e228515228609_)))
                                       (_tl228513228614_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e228515228609_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd228514228612_))
                                       (let ((_e228518228617_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd228514228612_))))
                                         (let ((_hd228517228620_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228518228617_)))
                                               (_tl228516228622_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228518228617_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl228516228622_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl228513228614_))
                                                   (let ((_e228521228625_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl228513228614_))))
                                                     (let ((_hd228520228628_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228521228625_)))
                                                           (_tl228519228630_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228521228625_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl228519228630_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl228510228606_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl228507228598_))
                           (let ((_e228524228633_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl228507228598_))))
                             (let ((_hd228523228636_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e228524228633_)))
                                   (_tl228522228638_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e228524228633_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl228522228638_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl228501228582_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl228492228558_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl228489228550_))
                                               (let ((_e228527228641_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl228489228550_))))
                                                 (let ((_hd228526228644_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e228527228641_)))
                                                       (_tl228525228646_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e228527228641_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl228525228646_))
                                                       ((lambda (_L228649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L228650_
                         _L228651_
                         _L228652_
                         _L228653_)
                  (let* ((_get-kws-id228693_
                          (let ((__tmp241247
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L228463_)))
                                (__tmp241245
                                 (let ((__tmp241246
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L228653_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name228315_
                                    __tmp241246
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp241247 '"__" __tmp241245)))
                         (_get-kws-id228695_
                          (let ((__tmp241248
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx228311_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id228693_
                             __tmp241248)))
                         (_main-id228697_
                          (let ((__tmp241251
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L228463_)))
                                (__tmp241249
                                 (let ((__tmp241250
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L228652_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name228315_
                                    __tmp241250
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp241251 '"__" __tmp241249)))
                         (_main-id228699_
                          (let ((__tmp241252
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx228311_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id228697_
                             __tmp241252)))
                         (_g241253_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id228695_)))
                         (_g241254_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id228699_)))
                         (_new-kw-dispatch228703_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L228649_
                             _L228653_
                             _get-kws-id228695_)))
                         (_new-get-kws228705_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L228650_
                             _L228652_
                             _main-id228699_))))
                    (let ((__tmp241257
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L228463_)))
                          (__tmp241256
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id228695_)))
                          (__tmp241255
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id228699_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp241257
                       '" => "
                       __tmp241256
                       '" => "
                       __tmp241255))
                    (let ((__tmp241258
                           (let ((__tmp241259
                                  (let ((__tmp241272
                                         (let ((__tmp241273
                                                (let ((__tmp241274
                                                       (let ((__tmp241275
                                                              (let ((__tmp241277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id228699_ '())))
                            (__tmp241276
                             (let ()
                               (declare (not safe))
                               (cons _L228651_ '()))))
                        (declare (not safe))
                        (cons __tmp241277 __tmp241276))))
                 (declare (not safe))
                 (cons '%#define-values __tmp241275))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241274
                                                   _stx228311_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp241273)))
                                        (__tmp241260
                                         (let ((__tmp241267
                                                (let ((__tmp241268
                                                       (let ((__tmp241269
                                                              (let ((__tmp241271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id228695_ '())))
                            (__tmp241270
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws228705_ '()))))
                        (declare (not safe))
                        (cons __tmp241271 __tmp241270))))
                 (declare (not safe))
                 (cons '%#define-values __tmp241269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241268
                                                   _stx228311_)))
                                               (__tmp241261
                                                (let ((__tmp241262
                                                       (let ((__tmp241263
                                                              (let ((__tmp241264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp241266
                                    (let ()
                                      (declare (not safe))
                                      (cons _L228463_ '())))
                                   (__tmp241265
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch228703_ '()))))
                               (declare (not safe))
                               (cons __tmp241266 __tmp241265))))
                        (declare (not safe))
                        (cons '%#define-values __tmp241264))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp241263 _stx228311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp241262 '()))))
                                           (declare (not safe))
                                           (cons __tmp241267 __tmp241261))))
                                    (declare (not safe))
                                    (cons __tmp241272 __tmp241260))))
                             (declare (not safe))
                             (cons '%#begin __tmp241259))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp241258 _stx228311_))))
                _hd228526228644_
                _hd228523228636_
                _hd228520228628_
                _hd228517228620_
                _hd228499228572_)
               (let ()
                 (declare (not safe))
                 (_g228479228532_ _g228480228535_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228479228532_
                                                  _g228480228535_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g228479228532_
                                              _g228480228535_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g228479228532_ _g228480228535_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g228479228532_ _g228480228535_)))))
                           (let ()
                             (declare (not safe))
                             (_g228479228532_ _g228480228535_)))
                       (let ()
                         (declare (not safe))
                         (_g228479228532_ _g228480228535_)))
                   (let ()
                     (declare (not safe))
                     (_g228479228532_ _g228480228535_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228479228532_
                                                      _g228480228535_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228479228532_
                                                  _g228480228535_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g228479228532_ _g228480228535_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g228479228532_ _g228480228535_)))))
                       (let ()
                         (declare (not safe))
                         (_g228479228532_ _g228480228535_)))))
               (let ()
                 (declare (not safe))
                 (_g228479228532_ _g228480228535_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228479228532_
                                                  _g228480228535_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g228479228532_ _g228480228535_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g228479228532_ _g228480228535_)))))
                           (let ()
                             (declare (not safe))
                             (_g228479228532_ _g228480228535_)))))
                   (let ()
                     (declare (not safe))
                     (_g228479228532_ _g228480228535_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228479228532_
                                                      _g228480228535_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g228479228532_
                                              _g228480228535_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g228479228532_ _g228480228535_))))))
                       (declare (not safe))
                       (_g228478228708_ _L228462_))))
                  (___kont240560240561_
                   (lambda (_L228408_ _L228409_)
                     (let ((__tmp241278
                            (let ((__tmp241279
                                   (let ((__tmp241280
                                          (let ((__tmp241281
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L228408_))))
                                            (declare (not safe))
                                            (cons __tmp241281 '()))))
                                     (declare (not safe))
                                     (cons _L228409_ __tmp241280))))
                              (declare (not safe))
                              (cons '%#define-values __tmp241279))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp241278 _stx228311_)))))
              (let* ((___match240645240646_
                      (lambda (_e228354228430_
                               _hd228353228433_
                               _tl228352228435_
                               _e228357228438_
                               _hd228356228441_
                               _tl228355228443_
                               _e228360228446_
                               _hd228359228449_
                               _tl228358228451_
                               _e228363228454_
                               _hd228362228457_
                               _tl228361228459_)
                        (let ((_L228462_ _hd228362228457_)
                              (_L228463_ _hd228359228449_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L228463_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L228462_)))
                              (___kont240558240559_ _L228462_ _L228463_)
                              (___kont240560240561_
                               _hd228362228457_
                               _hd228356228441_)))))
                     (___match240617240618_
                      (lambda (_e228340228716_
                               _hd228339228719_
                               _tl228338228721_
                               _e228343228724_
                               _hd228342228727_
                               _tl228341228729_
                               _e228346228732_
                               _hd228345228735_
                               _tl228344228737_
                               _e228349228740_
                               _hd228348228743_
                               _tl228347228745_)
                        (let ((_L228748_ _hd228348228743_)
                              (_L228749_ _hd228345228735_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L228749_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L228748_)))
                              (___kont240556240557_ _L228748_ _L228749_)
                              (___match240645240646_
                               _e228340228716_
                               _hd228339228719_
                               _tl228338228721_
                               _e228343228724_
                               _hd228342228727_
                               _tl228341228729_
                               _e228346228732_
                               _hd228345228735_
                               _tl228344228737_
                               _e228349228740_
                               _hd228348228743_
                               _tl228347228745_)))))
                     (___match240589240590_
                      (lambda (_e228326228898_
                               _hd228325228901_
                               _tl228324228903_
                               _e228329228906_
                               _hd228328228909_
                               _tl228327228911_
                               _e228332228914_
                               _hd228331228917_
                               _tl228330228919_
                               _e228335228922_
                               _hd228334228925_
                               _tl228333228927_)
                        (let ((_L228930_ _hd228334228925_)
                              (_L228931_ _hd228331228917_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L228931_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L228930_)))
                              (___kont240554240555_ _L228930_ _L228931_)
                              (___match240617240618_
                               _e228326228898_
                               _hd228325228901_
                               _tl228324228903_
                               _e228329228906_
                               _hd228328228909_
                               _tl228327228911_
                               _e228332228914_
                               _hd228331228917_
                               _tl228330228919_
                               _e228335228922_
                               _hd228334228925_
                               _tl228333228927_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx240552240553_))
                    (let ((_e228326228898_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx240552240553_))))
                      (let ((_tl228324228903_
                             (let ()
                               (declare (not safe))
                               (##cdr _e228326228898_)))
                            (_hd228325228901_
                             (let ()
                               (declare (not safe))
                               (##car _e228326228898_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl228324228903_))
                            (let ((_e228329228906_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl228324228903_))))
                              (let ((_tl228327228911_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e228329228906_)))
                                    (_hd228328228909_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e228329228906_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd228328228909_))
                                    (let ((_e228332228914_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd228328228909_))))
                                      (let ((_tl228330228919_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e228332228914_)))
                                            (_hd228331228917_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e228332228914_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl228330228919_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl228327228911_))
                                                (let ((_e228335228922_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl228327228911_))))
                                                  (let ((_tl228333228927_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e228335228922_)))
                                                        (_hd228334228925_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e228335228922_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl228333228927_))
                                                        (___match240589240590_
                                                         _e228326228898_
                                                         _hd228325228901_
                                                         _tl228324228903_
                                                         _e228329228906_
                                                         _hd228328228909_
                                                         _tl228327228911_
                                                         _e228332228914_
                                                         _hd228331228917_
                                                         _tl228330228919_
                                                         _e228335228922_
                                                         _hd228334228925_
                                                         _tl228333228927_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g228320228379_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228320228379_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl228327228911_))
                                                (let ((_e228374228400_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl228327228911_))))
                                                  (let ((_tl228372228405_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e228374228400_)))
                                                        (_hd228373228403_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e228374228400_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl228372228405_))
                                                        (___kont240560240561_
                                                         _hd228373228403_
                                                         _hd228328228909_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g228320228379_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228320228379_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl228327228911_))
                                        (let ((_e228374228400_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl228327228911_))))
                                          (let ((_tl228372228405_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e228374228400_)))
                                                (_hd228373228403_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e228374228400_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl228372228405_))
                                                (___kont240560240561_
                                                 _hd228373228403_
                                                 _hd228328228909_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228320228379_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g228320228379_))))))
                            (let () (declare (not safe)) (_g228320228379_)))))
                    (let () (declare (not safe)) (_g228320228379_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx227243_)
        (letrec* ((_bind-e__238948238949_
                   (lambda (_id228295_ _expr228296_ _compile?228297_)
                     (let ((__tmp241284
                            (let ()
                              (declare (not safe))
                              (cons _id228295_ '())))
                           (__tmp241282
                            (let ((__tmp241283
                                   (if _compile?228297_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr228296_))
                                       _expr228296_)))
                              (declare (not safe))
                              (cons __tmp241283 '()))))
                       (declare (not safe))
                       (cons __tmp241284 __tmp241282))))
                  (_bind-e__0__238950238951_
                   (lambda (_id228302_ _expr228303_)
                     (let ((_compile?228305_ '#t))
                       (declare (not safe))
                       (_bind-e__238948238949_
                        _id228302_
                        _expr228303_
                        _compile?228305_))))
                  (_bind-e227245_
                   (lambda _g241286_
                     (let ((_g241285_
                            (let ()
                              (declare (not safe))
                              (##length _g241286_))))
                       (cond ((let () (declare (not safe)) (##fx= _g241285_ 2))
                              (apply (lambda (_id228302_ _expr228303_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__238950238951_
                                          _id228302_
                                          _expr228303_)))
                                     _g241286_))
                             ((let () (declare (not safe)) (##fx= _g241285_ 3))
                              (apply (lambda (_id228307_
                                              _expr228308_
                                              _compile?228309_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__238948238949_
                                          _id228307_
                                          _expr228308_
                                          _compile?228309_)))
                                     _g241286_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g241286_))))))
                  (_compile-bindings227246_
                   (lambda (_bindings227879_)
                     (let _lp227881_ ((_rest227883_ _bindings227879_)
                                      (_lift1227884_ '())
                                      (_lift2227885_ '())
                                      (_bind227886_ '()))
                       (let* ((_rest227887227895_ _rest227883_)
                              (_else227889227903_
                               (lambda ()
                                 (values (reverse _lift1227884_)
                                         (reverse _lift2227885_)
                                         (reverse _bind227886_))))
                              (_K227891228282_
                               (lambda (_rest227906_ _hd227907_)
                                 (let* ((___stx240688240689_ _hd227907_)
                                        (_g227911227947_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx240688240689_)))))
                                   (let ((___kont240690240691_
                                          (lambda (_L228189_ _L228190_)
                                            (let* ((___stx240668240669_
                                                    _L228189_)
                                                   (_g228205228219_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx240668240669_)))))
                                              (let ((___kont240670240671_
                                                     (lambda (_L228267_)
                                                       (let ((__tmp241287
                                                              (let ((__tmp241288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__238948238949_
                                _L228190_
                                _L228189_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp241288 _bind227886_))))
                 (declare (not safe))
                 (_lp227881_
                  _rest227906_
                  _lift1227884_
                  _lift2227885_
                  __tmp241287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240672240673_
                                                     (lambda (_L228232_)
                                                       (let ((_g241289_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx227243_
                         _L228190_
                         _L228232_
                         '#t))))
                 (begin
                   (let ((_g241290_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g241289_)
                                (##vector-length _g241289_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g241290_ 3)))
                         (error "Context expects 3 values" _g241290_)))
                   (let ((_ids228242_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241289_ 0)))
                         (_impls228243_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241289_ 1)))
                         (_clauses228244_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241289_ 2))))
                     (let* ((_g241291_
                             (for-each gx#core-bind-runtime! _ids228242_))
                            (_xbind228247_
                             (map _bind-e227245_ _ids228242_ _impls228243_))
                            (_expr*228249_
                             (let ((__tmp241293
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses228244_)))
                                   (__tmp241292
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp241293
                                __tmp241292)))
                            (_bind*228251_
                             (let ()
                               (declare (not safe))
                               (_bind-e__238948238949_
                                _L228190_
                                _expr*228249_
                                '#f))))
                       (let ((__tmp241295
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L228190_)))
                             (__tmp241294
                              (map gxc#identifier-symbol _ids228242_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp241295
                          '" => "
                          __tmp241294))
                       (let ((__tmp241297
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2227885_ _xbind228247_)))
                             (__tmp241296
                              (let ()
                                (declare (not safe))
                                (cons _bind*228251_ _bind227886_))))
                         (declare (not safe))
                         (_lp227881_
                          _rest227906_
                          _lift1227884_
                          __tmp241297
                          __tmp241296)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match240679240680_
                                                       (lambda (_e228210228259_
                                                                _hd228209228262_
                                                                _tl228208228264_)
                                                         (let ((_L228267_
                                                                _tl228208228264_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L228267_))
                       (___kont240670240671_ _L228267_)
                       (___kont240672240673_ _tl228208228264_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx240668240669_))
                                                      (let ((_e228210228259_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx240668240669_))))
                (let ((_tl228208228264_
                       (let () (declare (not safe)) (##cdr _e228210228259_)))
                      (_hd228209228262_
                       (let () (declare (not safe)) (##car _e228210228259_))))
                  (___match240679240680_
                   _e228210228259_
                   _hd228209228262_
                   _tl228208228264_)))
              (let () (declare (not safe)) (_g228205228219_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont240692240693_
                                          (lambda (_L228017_ _L228018_)
                                            (let* ((_g228032228062_
                                                    (lambda (_g228033228059_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g228033228059_))))
                                                   (_g228031228157_
                                                    (lambda (_g228033228065_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g228033228065_))
                                                          (let ((_e228039228067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g228033228065_))))
                    (let ((_hd228038228070_
                           (let ()
                             (declare (not safe))
                             (##car _e228039228067_)))
                          (_tl228037228072_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228039228067_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl228037228072_))
                          (let ((_e228042228075_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl228037228072_))))
                            (let ((_hd228041228078_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228042228075_)))
                                  (_tl228040228080_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228042228075_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd228041228078_))
                                  (let ((_e228045228083_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd228041228078_))))
                                    (let ((_hd228044228086_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228045228083_)))
                                          (_tl228043228088_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228045228083_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd228044228086_))
                                          (let ((_e228048228091_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd228044228086_))))
                                            (let ((_hd228047228094_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228048228091_)))
                                                  (_tl228046228096_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228048228091_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd228047228094_))
                                                  (let ((_e228051228099_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd228047228094_))))
                                                    (let ((_hd228050228102_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e228051228099_)))
                                                          (_tl228049228104_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e228051228099_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl228049228104_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl228046228096_))
                      (let ((_e228054228107_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl228046228096_))))
                        (let ((_hd228053228110_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228054228107_)))
                              (_tl228052228112_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228054228107_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl228052228112_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl228043228088_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228040228080_))
                                      (let ((_e228057228115_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228040228080_))))
                                        (let ((_hd228056228118_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228057228115_)))
                                              (_tl228055228120_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228057228115_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228055228120_))
                                              ((lambda (_L228123_
                                                        _L228124_
                                                        _L228125_)
                                                 (let* ((_lambda-id228149_
                                                         (let ((__tmp241299
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L228018_)))
                       (__tmp241298 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp241299 __tmp241298)))
                (_lambda-id228151_
                 (let ((__tmp241300
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx227243_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id228149_ __tmp241300)))
                (_g241301_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id228151_)))
                (_new-case-lambda-expr228154_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L228123_
                    _L228125_
                    _lambda-id228151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp241303
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L228018_)))
                                                         (__tmp241302
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id228151_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp241303
                                                      '" => "
                                                      __tmp241302))
                                                   (let ((__tmp241306
                                                          (let ((__tmp241307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__238948238949_
                            _L228018_
                            _new-case-lambda-expr228154_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp241307 _rest227906_)))
                 (__tmp241304
                  (let ((__tmp241305
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__238950238951_
                            _lambda-id228151_
                            _L228124_))))
                    (declare (not safe))
                    (cons __tmp241305 _lift1227884_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp227881_
                                                      __tmp241306
                                                      __tmp241304
                                                      _lift2227885_
                                                      _bind227886_))))
                                               _hd228056228118_
                                               _hd228053228110_
                                               _hd228050228102_)
                                              (let ()
                                                (declare (not safe))
                                                (_g228032228062_
                                                 _g228033228065_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228032228062_ _g228033228065_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g228032228062_ _g228033228065_)))
                              (let ()
                                (declare (not safe))
                                (_g228032228062_ _g228033228065_)))))
                      (let ()
                        (declare (not safe))
                        (_g228032228062_ _g228033228065_)))
                  (let ()
                    (declare (not safe))
                    (_g228032228062_ _g228033228065_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g228032228062_
                                                     _g228033228065_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g228032228062_
                                             _g228033228065_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g228032228062_ _g228033228065_)))))
                          (let ()
                            (declare (not safe))
                            (_g228032228062_ _g228033228065_)))))
                  (let ()
                    (declare (not safe))
                    (_g228032228062_ _g228033228065_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g228031228157_ _L228017_))))
                                         (___kont240694240695_
                                          (lambda (_L227968_ _L227969_)
                                            (let ((__tmp241308
                                                   (let ((__tmp241309
                                                          (let ((__tmp241310
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241311
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L227968_))))
                           (declare (not safe))
                           (cons __tmp241311 '()))))
                    (declare (not safe))
                    (cons _L227969_ __tmp241310))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241309
                                                           _bind227886_))))
                                              (declare (not safe))
                                              (_lp227881_
                                               _rest227906_
                                               _lift1227884_
                                               _lift2227885_
                                               __tmp241308)))))
                                     (let* ((___match240739240740_
                                             (lambda (_e227928227993_
                                                      _hd227927227996_
                                                      _tl227926227998_
                                                      _e227931228001_
                                                      _hd227930228004_
                                                      _tl227929228006_
                                                      _e227934228009_
                                                      _hd227933228012_
                                                      _tl227932228014_)
                                               (let ((_L228017_
                                                      _hd227933228012_)
                                                     (_L228018_
                                                      _hd227930228004_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L228018_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L228017_)))
                                                     (___kont240692240693_
                                                      _L228017_
                                                      _L228018_)
                                                     (___kont240694240695_
                                                      _hd227933228012_
                                                      _hd227927227996_)))))
                                            (___match240717240718_
                                             (lambda (_e227917228165_
                                                      _hd227916228168_
                                                      _tl227915228170_
                                                      _e227920228173_
                                                      _hd227919228176_
                                                      _tl227918228178_
                                                      _e227923228181_
                                                      _hd227922228184_
                                                      _tl227921228186_)
                                               (let ((_L228189_
                                                      _hd227922228184_)
                                                     (_L228190_
                                                      _hd227919228176_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L228190_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L228189_)))
                                                     (___kont240690240691_
                                                      _L228189_
                                                      _L228190_)
                                                     (___match240739240740_
                                                      _e227917228165_
                                                      _hd227916228168_
                                                      _tl227915228170_
                                                      _e227920228173_
                                                      _hd227919228176_
                                                      _tl227918228178_
                                                      _e227923228181_
                                                      _hd227922228184_
                                                      _tl227921228186_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx240688240689_))
                                           (let ((_e227917228165_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx240688240689_))))
                                             (let ((_tl227915228170_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e227917228165_)))
                                                   (_hd227916228168_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e227917228165_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd227916228168_))
                                                   (let ((_e227920228173_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd227916228168_))))
                                                     (let ((_tl227918228178_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e227920228173_)))
                                                           (_hd227919228176_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e227920228173_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl227918228178_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl227915228170_))
                       (let ((_e227923228181_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl227915228170_))))
                         (let ((_tl227921228186_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e227923228181_)))
                               (_hd227922228184_
                                (let ()
                                  (declare (not safe))
                                  (##car _e227923228181_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl227921228186_))
                               (___match240717240718_
                                _e227917228165_
                                _hd227916228168_
                                _tl227915228170_
                                _e227920228173_
                                _hd227919228176_
                                _tl227918228178_
                                _e227923228181_
                                _hd227922228184_
                                _tl227921228186_)
                               (let ()
                                 (declare (not safe))
                                 (_g227911227947_)))))
                       (let () (declare (not safe)) (_g227911227947_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl227915228170_))
                       (let ((_e227942227960_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl227915228170_))))
                         (let ((_tl227940227965_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e227942227960_)))
                               (_hd227941227963_
                                (let ()
                                  (declare (not safe))
                                  (##car _e227942227960_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl227940227965_))
                               (___kont240694240695_
                                _hd227941227963_
                                _hd227916228168_)
                               (let ()
                                 (declare (not safe))
                                 (_g227911227947_)))))
                       (let () (declare (not safe)) (_g227911227947_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl227915228170_))
                                                       (let ((_e227942227960_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl227915228170_))))
                 (let ((_tl227940227965_
                        (let () (declare (not safe)) (##cdr _e227942227960_)))
                       (_hd227941227963_
                        (let () (declare (not safe)) (##car _e227942227960_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl227940227965_))
                       (___kont240694240695_ _hd227941227963_ _hd227916228168_)
                       (let () (declare (not safe)) (_g227911227947_)))))
               (let () (declare (not safe)) (_g227911227947_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g227911227947_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest227887227895_))
                             (let ((_hd227892228285_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest227887227895_)))
                                   (_tl227893228287_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest227887227895_))))
                               (let* ((_hd228290_ _hd227892228285_)
                                      (_rest228292_ _tl227893228287_))
                                 (declare (not safe))
                                 (_K227891228282_ _rest228292_ _hd228290_)))
                             (let ()
                               (declare (not safe))
                               (_else227889227903_)))))))
                  (_lift-kw-lambda?227247_
                   (lambda (_bind227803_)
                     (let* ((___stx240756240757_ _bind227803_)
                            (_g227806227823_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx240756240757_)))))
                       (let ((___kont240758240759_
                              (lambda (_L227859_ _L227860_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L227860_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L227859_))
                                    '#f)))
                             (___kont240760240761_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx240756240757_))
                             (let ((_e227812227835_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx240756240757_))))
                               (let ((_tl227810227840_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e227812227835_)))
                                     (_hd227811227838_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e227812227835_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd227811227838_))
                                     (let ((_e227815227843_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd227811227838_))))
                                       (let ((_tl227813227848_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e227815227843_)))
                                             (_hd227814227846_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e227815227843_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl227813227848_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl227810227840_))
                                                 (let ((_e227818227851_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl227810227840_))))
                                                   (let ((_tl227816227856_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e227818227851_)))
                                                         (_hd227817227854_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e227818227851_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl227816227856_))
                                                         (___kont240758240759_
                                                          _hd227817227854_
                                                          _hd227814227846_)
                                                         (___kont240760240761_))))
                                                 (___kont240760240761_))
                                             (___kont240760240761_))))
                                     (___kont240760240761_))))
                             (___kont240760240761_))))))
                  (_lift-kw-lambda-bindings227248_
                   (lambda (_bindings227415_)
                     (let _lp227417_ ((_rest227419_ _bindings227415_)
                                      (_lift1227420_ '())
                                      (_lift2227421_ '())
                                      (_bind227422_ '()))
                       (let* ((_rest227423227431_ _rest227419_)
                              (_else227425227439_
                               (lambda ()
                                 (values (reverse _lift1227420_)
                                         (reverse _lift2227421_)
                                         (reverse _bind227422_))))
                              (_K227427227791_
                               (lambda (_rest227442_ _hd227443_)
                                 (let* ((___stx240786240787_ _hd227443_)
                                        (_g227446227471_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx240786240787_)))))
                                   (let ((___kont240788240789_
                                          (lambda (_L227541_ _L227542_)
                                            (let* ((_g227556227609_
                                                    (lambda (_g227557227606_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g227557227606_))))
                                                   (_g227555227785_
                                                    (lambda (_g227557227612_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g227557227612_))
                                                          (let ((_e227565227614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g227557227612_))))
                    (let ((_hd227564227617_
                           (let ()
                             (declare (not safe))
                             (##car _e227565227614_)))
                          (_tl227563227619_
                           (let ()
                             (declare (not safe))
                             (##cdr _e227565227614_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl227563227619_))
                          (let ((_e227568227622_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl227563227619_))))
                            (let ((_hd227567227625_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e227568227622_)))
                                  (_tl227566227627_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e227568227622_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd227567227625_))
                                  (let ((_e227571227630_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd227567227625_))))
                                    (let ((_hd227570227633_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227571227630_)))
                                          (_tl227569227635_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227571227630_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd227570227633_))
                                          (let ((_e227574227638_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd227570227633_))))
                                            (let ((_hd227573227641_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e227574227638_)))
                                                  (_tl227572227643_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e227574227638_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd227573227641_))
                                                  (let ((_e227577227646_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd227573227641_))))
                                                    (let ((_hd227576227649_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227577227646_)))
                                                          (_tl227575227651_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227577227646_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl227575227651_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl227572227643_))
                      (let ((_e227580227654_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl227572227643_))))
                        (let ((_hd227579227657_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227580227654_)))
                              (_tl227578227659_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227580227654_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd227579227657_))
                              (let ((_e227583227662_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd227579227657_))))
                                (let ((_hd227582227665_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227583227662_)))
                                      (_tl227581227667_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227583227662_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227581227667_))
                                      (let ((_e227586227670_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227581227667_))))
                                        (let ((_hd227585227673_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227586227670_)))
                                              (_tl227584227675_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227586227670_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd227585227673_))
                                              (let ((_e227589227678_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd227585227673_))))
                                                (let ((_hd227588227681_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e227589227678_)))
                                                      (_tl227587227683_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e227589227678_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd227588227681_))
                                                      (let ((_e227592227686_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd227588227681_))))
                (let ((_hd227591227689_
                       (let () (declare (not safe)) (##car _e227592227686_)))
                      (_tl227590227691_
                       (let () (declare (not safe)) (##cdr _e227592227686_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd227591227689_))
                      (let ((_e227595227694_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd227591227689_))))
                        (let ((_hd227594227697_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227595227694_)))
                              (_tl227593227699_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227595227694_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl227593227699_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl227590227691_))
                                  (let ((_e227598227702_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl227590227691_))))
                                    (let ((_hd227597227705_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227598227702_)))
                                          (_tl227596227707_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227598227702_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl227596227707_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227587227683_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl227584227675_))
                                                  (let ((_e227601227710_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl227584227675_))))
                                                    (let ((_hd227600227713_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227601227710_)))
                                                          (_tl227599227715_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227601227710_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl227599227715_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl227578227659_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl227569227635_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227566227627_))
                              (let ((_e227604227718_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227566227627_))))
                                (let ((_hd227603227721_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227604227718_)))
                                      (_tl227602227723_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227604227718_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl227602227723_))
                                      ((lambda (_L227726_
                                                _L227727_
                                                _L227728_
                                                _L227729_
                                                _L227730_)
                                         (let* ((_get-kws-id227770_
                                                 (let ((__tmp241313
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L227542_)))
                                                       (__tmp241312
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241313
                                                    __tmp241312)))
                                                (_get-kws-id227772_
                                                 (let ((__tmp241314
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx227243_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id227770_
                                                    __tmp241314)))
                                                (_main-id227774_
                                                 (let ((__tmp241316
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L227542_)))
                                                       (__tmp241315
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241316
                                                    __tmp241315)))
                                                (_main-id227776_
                                                 (let ((__tmp241317
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx227243_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id227774_
                                                    __tmp241317)))
                                                (_g241318_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id227772_)))
                                                (_g241319_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id227776_)))
                                                (_new-kw-dispatch227780_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L227726_
                                                    _L227730_
                                                    _get-kws-id227772_)))
                                                (_new-get-kws227782_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L227727_
                                                    _L227729_
                                                    _main-id227776_))))
                                           (let ((__tmp241322
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L227542_)))
                                                 (__tmp241321
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id227772_)))
                                                 (__tmp241320
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id227776_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp241322
                                              '" => "
                                              __tmp241321
                                              '" => "
                                              __tmp241320))
                                           (let ((__tmp241327
                                                  (let ((__tmp241328
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__238948238949_
                                                            _main-id227776_
                                                            _L227728_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp241328
                                                          _lift1227420_)))
                                                 (__tmp241325
                                                  (let ((__tmp241326
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__238948238949_
                                                            _get-kws-id227772_
                                                            _new-get-kws227782_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp241326
                                                          _lift2227421_)))
                                                 (__tmp241323
                                                  (let ((__tmp241324
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__238948238949_
                                                            _L227542_
                                                            _new-kw-dispatch227780_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp241324
                                                          _bind227422_))))
                                             (declare (not safe))
                                             (_lp227417_
                                              _rest227442_
                                              __tmp241327
                                              __tmp241325
                                              __tmp241323))))
                                       _hd227603227721_
                                       _hd227600227713_
                                       _hd227597227705_
                                       _hd227594227697_
                                       _hd227576227649_)
                                      (let ()
                                        (declare (not safe))
                                        (_g227556227609_ _g227557227612_)))))
                              (let ()
                                (declare (not safe))
                                (_g227556227609_ _g227557227612_)))
                          (let ()
                            (declare (not safe))
                            (_g227556227609_ _g227557227612_)))
                      (let ()
                        (declare (not safe))
                        (_g227556227609_ _g227557227612_)))
                  (let ()
                    (declare (not safe))
                    (_g227556227609_ _g227557227612_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g227556227609_
                                                     _g227557227612_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g227556227609_
                                                 _g227557227612_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g227556227609_
                                             _g227557227612_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g227556227609_ _g227557227612_)))
                              (let ()
                                (declare (not safe))
                                (_g227556227609_ _g227557227612_)))))
                      (let ()
                        (declare (not safe))
                        (_g227556227609_ _g227557227612_)))))
              (let ()
                (declare (not safe))
                (_g227556227609_ _g227557227612_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g227556227609_
                                                 _g227557227612_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227556227609_ _g227557227612_)))))
                              (let ()
                                (declare (not safe))
                                (_g227556227609_ _g227557227612_)))))
                      (let ()
                        (declare (not safe))
                        (_g227556227609_ _g227557227612_)))
                  (let ()
                    (declare (not safe))
                    (_g227556227609_ _g227557227612_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g227556227609_
                                                     _g227557227612_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g227556227609_
                                             _g227557227612_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g227556227609_ _g227557227612_)))))
                          (let ()
                            (declare (not safe))
                            (_g227556227609_ _g227557227612_)))))
                  (let ()
                    (declare (not safe))
                    (_g227556227609_ _g227557227612_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g227555227785_ _L227541_))))
                                         (___kont240790240791_
                                          (lambda (_L227492_ _L227493_)
                                            (let ((__tmp241329
                                                   (let ((__tmp241330
                                                          (let ((__tmp241331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L227492_ '()))))
                    (declare (not safe))
                    (cons _L227493_ __tmp241331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241330
                                                           _bind227422_))))
                                              (declare (not safe))
                                              (_lp227417_
                                               _rest227442_
                                               _lift1227420_
                                               _lift2227421_
                                               __tmp241329)))))
                                     (let ((___match240813240814_
                                            (lambda (_e227452227517_
                                                     _hd227451227520_
                                                     _tl227450227522_
                                                     _e227455227525_
                                                     _hd227454227528_
                                                     _tl227453227530_
                                                     _e227458227533_
                                                     _hd227457227536_
                                                     _tl227456227538_)
                                              (let ((_L227541_
                                                     _hd227457227536_)
                                                    (_L227542_
                                                     _hd227454227528_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L227542_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L227541_)))
                                                    (___kont240788240789_
                                                     _L227541_
                                                     _L227542_)
                                                    (___kont240790240791_
                                                     _hd227457227536_
                                                     _hd227451227520_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx240786240787_))
                                           (let ((_e227452227517_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx240786240787_))))
                                             (let ((_tl227450227522_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e227452227517_)))
                                                   (_hd227451227520_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e227452227517_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd227451227520_))
                                                   (let ((_e227455227525_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd227451227520_))))
                                                     (let ((_tl227453227530_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e227455227525_)))
                                                           (_hd227454227528_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e227455227525_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl227453227530_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl227450227522_))
                       (let ((_e227458227533_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl227450227522_))))
                         (let ((_tl227456227538_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e227458227533_)))
                               (_hd227457227536_
                                (let ()
                                  (declare (not safe))
                                  (##car _e227458227533_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl227456227538_))
                               (___match240813240814_
                                _e227452227517_
                                _hd227451227520_
                                _tl227450227522_
                                _e227455227525_
                                _hd227454227528_
                                _tl227453227530_
                                _e227458227533_
                                _hd227457227536_
                                _tl227456227538_)
                               (let ()
                                 (declare (not safe))
                                 (_g227446227471_)))))
                       (let () (declare (not safe)) (_g227446227471_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl227450227522_))
                       (let ((_e227466227484_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl227450227522_))))
                         (let ((_tl227464227489_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e227466227484_)))
                               (_hd227465227487_
                                (let ()
                                  (declare (not safe))
                                  (##car _e227466227484_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl227464227489_))
                               (___kont240790240791_
                                _hd227465227487_
                                _hd227451227520_)
                               (let ()
                                 (declare (not safe))
                                 (_g227446227471_)))))
                       (let () (declare (not safe)) (_g227446227471_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl227450227522_))
                                                       (let ((_e227466227484_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl227450227522_))))
                 (let ((_tl227464227489_
                        (let () (declare (not safe)) (##cdr _e227466227484_)))
                       (_hd227465227487_
                        (let () (declare (not safe)) (##car _e227466227484_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl227464227489_))
                       (___kont240790240791_ _hd227465227487_ _hd227451227520_)
                       (let () (declare (not safe)) (_g227446227471_)))))
               (let () (declare (not safe)) (_g227446227471_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g227446227471_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest227423227431_))
                             (let ((_hd227428227794_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest227423227431_)))
                                   (_tl227429227796_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest227423227431_))))
                               (let* ((_hd227799_ _hd227428227794_)
                                      (_rest227801_ _tl227429227796_))
                                 (declare (not safe))
                                 (_K227427227791_ _rest227801_ _hd227799_)))
                             (let ()
                               (declare (not safe))
                               (_else227425227439_))))))))
          (let* ((___stx240830240831_ _stx227243_)
                 (_g227251227277_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx240830240831_)))))
            (let ((___kont240832240833_
                   (lambda (_L227337_ _L227338_)
                     (let ((__tmp241333
                            (lambda ()
                              (if (let ((__tmp241360
                                         (let ((__tmp241361
                                                (lambda (_g227366227369_
                                                         _g227367227371_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g227366227369_
                                                          _g227367227371_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp241361
                                                   '()
                                                   _L227338_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?227247_
                                            __tmp241360))
                                  (let ((_g241347_
                                         (let ((__tmp241349
                                                (let ((__tmp241350
                                                       (lambda (_g227373227376_
                                                                _g227374227378_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g227373227376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g227374227378_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp241350
                                                          '()
                                                          _L227338_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings227248_
                                            __tmp241349))))
                                    (begin
                                      (let ((_g241348_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g241347_)
                                                   (##vector-length _g241347_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g241348_ 3)))
                                            (error "Context expects 3 values"
                                                   _g241348_)))
                                      (let ((_lift1227381_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241347_ 0)))
                                            (_lift2227382_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241347_ 1)))
                                            (_hd227383_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241347_ 2))))
                                        (let* ((_expr227385_
                                                (let ((__tmp241351
                                                       (let ((__tmp241352
                                                              (let ((__tmp241353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L227337_ '()))))
                        (declare (not safe))
                        (cons _hd227383_ __tmp241353))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241352))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241351
                                                   _stx227243_)))
                                               (_expr227387_
                                                (let ((__tmp241354
                                                       (let ((__tmp241355
                                                              (let ((__tmp241356
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr227385_ '()))))
                        (declare (not safe))
                        (cons _lift2227382_ __tmp241356))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241355))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241354
                                                   _stx227243_)))
                                               (_expr227389_
                                                (let ((__tmp241357
                                                       (let ((__tmp241358
                                                              (let ((__tmp241359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr227387_ '()))))
                        (declare (not safe))
                        (cons _lift1227381_ __tmp241359))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241358))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241357
                                                   _stx227243_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr227389_))))))
                                  (let ((_g241334_
                                         (let ((__tmp241336
                                                (let ((__tmp241337
                                                       (lambda (_g227391227394_
                                                                _g227392227396_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g227391227394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g227392227396_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp241337
                                                          '()
                                                          _L227338_))))
                                           (declare (not safe))
                                           (_compile-bindings227246_
                                            __tmp241336))))
                                    (begin
                                      (let ((_g241335_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g241334_)
                                                   (##vector-length _g241334_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g241335_ 3)))
                                            (error "Context expects 3 values"
                                                   _g241335_)))
                                      (let ((_lift1227399_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241334_ 0)))
                                            (_lift2227400_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241334_ 1)))
                                            (_hd227401_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241334_ 2))))
                                        (let* ((_body227403_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L227337_)))
                                               (_expr227405_
                                                (let ((__tmp241338
                                                       (let ((__tmp241339
                                                              (let ((__tmp241340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body227403_ '()))))
                        (declare (not safe))
                        (cons _hd227401_ __tmp241340))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241339))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241338
                                                   _stx227243_)))
                                               (_expr227407_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2227400_))
                                                    _expr227405_
                                                    (let ((__tmp241341
                                                           (let ((__tmp241342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241343
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr227405_ '()))))
                            (declare (not safe))
                            (cons _lift2227400_ __tmp241343))))
                     (declare (not safe))
                     (cons '%#let-values __tmp241342))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp241341 _stx227243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr227409_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1227399_))
                                                    _expr227407_
                                                    (let ((__tmp241344
                                                           (let ((__tmp241345
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241346
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr227407_ '()))))
                            (declare (not safe))
                            (cons _lift1227399_ __tmp241346))))
                     (declare (not safe))
                     (cons '%#let-values __tmp241345))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp241344 _stx227243_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr227409_)))))))
                           (__tmp241332
                            (let ((__obj241036
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj241036)
                              __obj241036)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp241333
                        gx#current-expander-context
                        __tmp241332))))
                  (___kont240836240837_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx227243_)))))
              (let ((___match240857240858_
                     (lambda (_e227257227289_
                              _hd227256227292_
                              _tl227255227294_
                              _e227260227297_
                              _hd227259227300_
                              _tl227258227302_
                              ___splice240834240835_
                              _target227261227305_
                              _tl227263227307_)
                       (letrec ((_loop227264227310_
                                 (lambda (_hd227262227313_ _bind227268227315_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd227262227313_))
                                       (let ((_e227265227318_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd227262227313_))))
                                         (let ((_lp-tl227267227323_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e227265227318_)))
                                               (_lp-hd227266227321_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e227265227318_))))
                                           (let ((__tmp241364
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd227266227321_
                                                          _bind227268227315_))))
                                             (declare (not safe))
                                             (_loop227264227310_
                                              _lp-tl227267227323_
                                              __tmp241364))))
                                       (let ((_bind227269227326_
                                              (reverse _bind227268227315_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl227258227302_))
                                             (let ((_e227272227329_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl227258227302_))))
                                               (let ((_tl227270227334_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e227272227329_)))
                                                     (_hd227271227332_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e227272227329_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl227270227334_))
                                                     (let ((_L227337_
                                                            _hd227271227332_)
                                                           (_L227338_
                                                            _bind227269227326_))
                                                       (if (let ((__tmp241362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241363
                                 (lambda (_g227358227361_ _g227359227363_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g227358227361_ _g227359227363_)))))
                            (declare (not safe))
                            (foldr1 __tmp241363 '() _L227338_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp241362))
                   (___kont240832240833_ _L227337_ _L227338_)
                   (___kont240836240837_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont240836240837_))))
                                             (___kont240836240837_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop227264227310_ _target227261227305_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx240830240831_))
                    (let ((_e227257227289_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx240830240831_))))
                      (let ((_tl227255227294_
                             (let ()
                               (declare (not safe))
                               (##cdr _e227257227289_)))
                            (_hd227256227292_
                             (let ()
                               (declare (not safe))
                               (##car _e227257227289_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl227255227294_))
                            (let ((_e227260227297_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl227255227294_))))
                              (let ((_tl227258227302_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e227260227297_)))
                                    (_hd227259227300_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e227260227297_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd227259227300_))
                                    (let ((___splice240834240835_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd227259227300_
                                              '0))))
                                      (let ((_tl227263227307_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice240834240835_
                                                '1)))
                                            (_target227261227305_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice240834240835_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl227263227307_))
                                            (___match240857240858_
                                             _e227257227289_
                                             _hd227256227292_
                                             _tl227255227294_
                                             _e227260227297_
                                             _hd227259227300_
                                             _tl227258227302_
                                             ___splice240834240835_
                                             _target227261227305_
                                             _tl227263227307_)
                                            (___kont240836240837_))))
                                    (___kont240836240837_))))
                            (___kont240836240837_))))
                    (___kont240836240837_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx226387_)
        (letrec* ((_bind-e__238953238954_
                   (lambda (_id227227_ _expr227228_ _compile?227229_)
                     (let ((__tmp241367
                            (let ()
                              (declare (not safe))
                              (cons _id227227_ '())))
                           (__tmp241365
                            (let ((__tmp241366
                                   (if _compile?227229_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr227228_))
                                       _expr227228_)))
                              (declare (not safe))
                              (cons __tmp241366 '()))))
                       (declare (not safe))
                       (cons __tmp241367 __tmp241365))))
                  (_bind-e__0__238955238956_
                   (lambda (_id227234_ _expr227235_)
                     (let ((_compile?227237_ '#t))
                       (declare (not safe))
                       (_bind-e__238953238954_
                        _id227234_
                        _expr227235_
                        _compile?227237_))))
                  (_bind-e226389_
                   (lambda _g241369_
                     (let ((_g241368_
                            (let ()
                              (declare (not safe))
                              (##length _g241369_))))
                       (cond ((let () (declare (not safe)) (##fx= _g241368_ 2))
                              (apply (lambda (_id227234_ _expr227235_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__238955238956_
                                          _id227234_
                                          _expr227235_)))
                                     _g241369_))
                             ((let () (declare (not safe)) (##fx= _g241368_ 3))
                              (apply (lambda (_id227239_
                                              _expr227240_
                                              _compile?227241_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__238953238954_
                                          _id227239_
                                          _expr227240_
                                          _compile?227241_)))
                                     _g241369_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g241369_))))))
                  (_compile-bindings226390_
                   (lambda (_rest226525_)
                     (let _lp226527_ ((_rest226529_ _rest226525_)
                                      (_bind226530_ '()))
                       (let* ((_rest226531226539_ _rest226529_)
                              (_else226533226547_
                               (lambda () (reverse _bind226530_)))
                              (_K226535227214_
                               (lambda (_rest226550_ _hd226551_)
                                 (let* ((___stx240880240881_ _hd226551_)
                                        (_g226556226603_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx240880240881_)))))
                                   (let ((___kont240882240883_
                                          (lambda (_L227121_ _L227122_)
                                            (let* ((___stx240860240861_
                                                    _L227121_)
                                                   (_g227137227151_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx240860240861_)))))
                                              (let ((___kont240862240863_
                                                     (lambda (_L227199_)
                                                       (let ((__tmp241370
                                                              (let ((__tmp241371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__238953238954_
                                _L227122_
                                _L227121_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp241371 _bind226530_))))
                 (declare (not safe))
                 (_lp226527_ _rest226550_ __tmp241370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240864240865_
                                                     (lambda (_L227164_)
                                                       (let ((_g241372_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx226387_
                         _L227122_
                         _L227164_
                         '#t))))
                 (begin
                   (let ((_g241373_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g241372_)
                                (##vector-length _g241372_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g241373_ 3)))
                         (error "Context expects 3 values" _g241373_)))
                   (let ((_ids227174_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241372_ 0)))
                         (_impls227175_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241372_ 1)))
                         (_clauses227176_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241372_ 2))))
                     (let* ((_g241374_
                             (for-each gx#core-bind-runtime! _ids227174_))
                            (_xbind227179_
                             (map _bind-e226389_ _ids227174_ _impls227175_))
                            (_expr*227181_
                             (let ((__tmp241376
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses227176_)))
                                   (__tmp241375
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp241376
                                __tmp241375)))
                            (_bind*227183_
                             (let ()
                               (declare (not safe))
                               (_bind-e__238953238954_
                                _L227122_
                                _expr*227181_
                                '#f))))
                       (let ((__tmp241378
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L227122_)))
                             (__tmp241377
                              (map gxc#identifier-symbol _ids227174_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp241378
                          '" => "
                          __tmp241377))
                       (let ((__tmp241379
                              (let ((__tmp241380
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind226530_
                                               _xbind227179_))))
                                (declare (not safe))
                                (cons _bind*227183_ __tmp241380))))
                         (declare (not safe))
                         (_lp226527_ _rest226550_ __tmp241379)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match240871240872_
                                                       (lambda (_e227142227191_
                                                                _hd227141227194_
                                                                _tl227140227196_)
                                                         (let ((_L227199_
                                                                _tl227140227196_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L227199_))
                       (___kont240862240863_ _L227199_)
                       (___kont240864240865_ _tl227140227196_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx240860240861_))
                                                      (let ((_e227142227191_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx240860240861_))))
                (let ((_tl227140227196_
                       (let () (declare (not safe)) (##cdr _e227142227191_)))
                      (_hd227141227194_
                       (let () (declare (not safe)) (##car _e227142227191_))))
                  (___match240871240872_
                   _e227142227191_
                   _hd227141227194_
                   _tl227140227196_)))
              (let () (declare (not safe)) (_g227137227151_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont240884240885_
                                          (lambda (_L226949_ _L226950_)
                                            (let* ((_g226964226994_
                                                    (lambda (_g226965226991_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g226965226991_))))
                                                   (_g226963227089_
                                                    (lambda (_g226965226997_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g226965226997_))
                                                          (let ((_e226971226999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g226965226997_))))
                    (let ((_hd226970227002_
                           (let ()
                             (declare (not safe))
                             (##car _e226971226999_)))
                          (_tl226969227004_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226971226999_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl226969227004_))
                          (let ((_e226974227007_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl226969227004_))))
                            (let ((_hd226973227010_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226974227007_)))
                                  (_tl226972227012_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226974227007_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd226973227010_))
                                  (let ((_e226977227015_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd226973227010_))))
                                    (let ((_hd226976227018_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226977227015_)))
                                          (_tl226975227020_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226977227015_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd226976227018_))
                                          (let ((_e226980227023_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd226976227018_))))
                                            (let ((_hd226979227026_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e226980227023_)))
                                                  (_tl226978227028_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e226980227023_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd226979227026_))
                                                  (let ((_e226983227031_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd226979227026_))))
                                                    (let ((_hd226982227034_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e226983227031_)))
                                                          (_tl226981227036_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e226983227031_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl226981227036_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl226978227028_))
                      (let ((_e226986227039_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl226978227028_))))
                        (let ((_hd226985227042_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226986227039_)))
                              (_tl226984227044_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226986227039_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl226984227044_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl226975227020_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl226972227012_))
                                      (let ((_e226989227047_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl226972227012_))))
                                        (let ((_hd226988227050_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226989227047_)))
                                              (_tl226987227052_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226989227047_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl226987227052_))
                                              ((lambda (_L227055_
                                                        _L227056_
                                                        _L227057_)
                                                 (let* ((_lambda-id227081_
                                                         (let ((__tmp241382
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L226950_)))
                       (__tmp241381 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp241382 __tmp241381)))
                (_lambda-id227083_
                 (let ((__tmp241383
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx226387_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id227081_ __tmp241383)))
                (_g241384_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id227083_)))
                (_new-case-lambda-expr227086_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L227055_
                    _L227057_
                    _lambda-id227083_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp241386
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L226950_)))
                                                         (__tmp241385
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id227083_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp241386
                                                      '" => "
                                                      __tmp241385))
                                                   (let ((__tmp241389
                                                          (let ((__tmp241390
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__238953238954_
                            _L226950_
                            _new-case-lambda-expr227086_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp241390 _rest226550_)))
                 (__tmp241387
                  (let ((__tmp241388
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__238955238956_
                            _lambda-id227083_
                            _L227056_))))
                    (declare (not safe))
                    (cons __tmp241388 _bind226530_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp226527_
                                                      __tmp241389
                                                      __tmp241387))))
                                               _hd226988227050_
                                               _hd226985227042_
                                               _hd226982227034_)
                                              (let ()
                                                (declare (not safe))
                                                (_g226964226994_
                                                 _g226965226997_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g226964226994_ _g226965226997_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g226964226994_ _g226965226997_)))
                              (let ()
                                (declare (not safe))
                                (_g226964226994_ _g226965226997_)))))
                      (let ()
                        (declare (not safe))
                        (_g226964226994_ _g226965226997_)))
                  (let ()
                    (declare (not safe))
                    (_g226964226994_ _g226965226997_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226964226994_
                                                     _g226965226997_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g226964226994_
                                             _g226965226997_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226964226994_ _g226965226997_)))))
                          (let ()
                            (declare (not safe))
                            (_g226964226994_ _g226965226997_)))))
                  (let ()
                    (declare (not safe))
                    (_g226964226994_ _g226965226997_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g226963227089_ _L226949_))))
                                         (___kont240886240887_
                                          (lambda (_L226673_ _L226674_)
                                            (let* ((_g226688226741_
                                                    (lambda (_g226689226738_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g226689226738_))))
                                                   (_g226687226917_
                                                    (lambda (_g226689226744_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g226689226744_))
                                                          (let ((_e226697226746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g226689226744_))))
                    (let ((_hd226696226749_
                           (let ()
                             (declare (not safe))
                             (##car _e226697226746_)))
                          (_tl226695226751_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226697226746_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl226695226751_))
                          (let ((_e226700226754_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl226695226751_))))
                            (let ((_hd226699226757_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226700226754_)))
                                  (_tl226698226759_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226700226754_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd226699226757_))
                                  (let ((_e226703226762_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd226699226757_))))
                                    (let ((_hd226702226765_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226703226762_)))
                                          (_tl226701226767_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226703226762_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd226702226765_))
                                          (let ((_e226706226770_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd226702226765_))))
                                            (let ((_hd226705226773_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e226706226770_)))
                                                  (_tl226704226775_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e226706226770_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd226705226773_))
                                                  (let ((_e226709226778_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd226705226773_))))
                                                    (let ((_hd226708226781_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e226709226778_)))
                                                          (_tl226707226783_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e226709226778_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl226707226783_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl226704226775_))
                      (let ((_e226712226786_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl226704226775_))))
                        (let ((_hd226711226789_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226712226786_)))
                              (_tl226710226791_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226712226786_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd226711226789_))
                              (let ((_e226715226794_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd226711226789_))))
                                (let ((_hd226714226797_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226715226794_)))
                                      (_tl226713226799_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226715226794_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl226713226799_))
                                      (let ((_e226718226802_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl226713226799_))))
                                        (let ((_hd226717226805_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226718226802_)))
                                              (_tl226716226807_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226718226802_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd226717226805_))
                                              (let ((_e226721226810_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd226717226805_))))
                                                (let ((_hd226720226813_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e226721226810_)))
                                                      (_tl226719226815_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e226721226810_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd226720226813_))
                                                      (let ((_e226724226818_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd226720226813_))))
                (let ((_hd226723226821_
                       (let () (declare (not safe)) (##car _e226724226818_)))
                      (_tl226722226823_
                       (let () (declare (not safe)) (##cdr _e226724226818_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd226723226821_))
                      (let ((_e226727226826_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd226723226821_))))
                        (let ((_hd226726226829_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226727226826_)))
                              (_tl226725226831_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226727226826_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl226725226831_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl226722226823_))
                                  (let ((_e226730226834_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl226722226823_))))
                                    (let ((_hd226729226837_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226730226834_)))
                                          (_tl226728226839_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226730226834_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl226728226839_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl226719226815_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl226716226807_))
                                                  (let ((_e226733226842_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl226716226807_))))
                                                    (let ((_hd226732226845_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e226733226842_)))
                                                          (_tl226731226847_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e226733226842_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl226731226847_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl226710226791_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl226701226767_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226698226759_))
                              (let ((_e226736226850_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl226698226759_))))
                                (let ((_hd226735226853_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226736226850_)))
                                      (_tl226734226855_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226736226850_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226734226855_))
                                      ((lambda (_L226858_
                                                _L226859_
                                                _L226860_
                                                _L226861_
                                                _L226862_)
                                         (let* ((_get-kws-id226902_
                                                 (let ((__tmp241392
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L226674_)))
                                                       (__tmp241391
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241392
                                                    __tmp241391)))
                                                (_get-kws-id226904_
                                                 (let ((__tmp241393
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx226387_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id226902_
                                                    __tmp241393)))
                                                (_main-id226906_
                                                 (let ((__tmp241395
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L226674_)))
                                                       (__tmp241394
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241395
                                                    __tmp241394)))
                                                (_main-id226908_
                                                 (let ((__tmp241396
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx226387_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id226906_
                                                    __tmp241396)))
                                                (_g241397_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id226904_)))
                                                (_g241398_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id226908_)))
                                                (_new-kw-dispatch226912_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L226858_
                                                    _L226862_
                                                    _get-kws-id226904_)))
                                                (_new-get-kws226914_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L226859_
                                                    _L226861_
                                                    _main-id226908_))))
                                           (let ((__tmp241401
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L226674_)))
                                                 (__tmp241400
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id226904_)))
                                                 (__tmp241399
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id226908_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp241401
                                              '" => "
                                              __tmp241400
                                              '" => "
                                              __tmp241399))
                                           (let ((__tmp241402
                                                  (let ((__tmp241407
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__238953238954_
                                                            _main-id226908_
                                                            _L226860_
                                                            '#f)))
                                                        (__tmp241403
                                                         (let ((__tmp241406
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__238953238954_
                           _get-kws-id226904_
                           _new-get-kws226914_
                           '#f)))
                       (__tmp241404
                        (let ((__tmp241405
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__238953238954_
                                  _L226674_
                                  _new-kw-dispatch226912_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp241405 _rest226550_))))
                   (declare (not safe))
                   (cons __tmp241406 __tmp241404))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp241407
                                                          __tmp241403))))
                                             (declare (not safe))
                                             (_lp226527_
                                              __tmp241402
                                              _bind226530_))))
                                       _hd226735226853_
                                       _hd226732226845_
                                       _hd226729226837_
                                       _hd226726226829_
                                       _hd226708226781_)
                                      (let ()
                                        (declare (not safe))
                                        (_g226688226741_ _g226689226744_)))))
                              (let ()
                                (declare (not safe))
                                (_g226688226741_ _g226689226744_)))
                          (let ()
                            (declare (not safe))
                            (_g226688226741_ _g226689226744_)))
                      (let ()
                        (declare (not safe))
                        (_g226688226741_ _g226689226744_)))
                  (let ()
                    (declare (not safe))
                    (_g226688226741_ _g226689226744_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226688226741_
                                                     _g226689226744_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g226688226741_
                                                 _g226689226744_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g226688226741_
                                             _g226689226744_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226688226741_ _g226689226744_)))
                              (let ()
                                (declare (not safe))
                                (_g226688226741_ _g226689226744_)))))
                      (let ()
                        (declare (not safe))
                        (_g226688226741_ _g226689226744_)))))
              (let ()
                (declare (not safe))
                (_g226688226741_ _g226689226744_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g226688226741_
                                                 _g226689226744_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g226688226741_ _g226689226744_)))))
                              (let ()
                                (declare (not safe))
                                (_g226688226741_ _g226689226744_)))))
                      (let ()
                        (declare (not safe))
                        (_g226688226741_ _g226689226744_)))
                  (let ()
                    (declare (not safe))
                    (_g226688226741_ _g226689226744_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226688226741_
                                                     _g226689226744_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g226688226741_
                                             _g226689226744_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226688226741_ _g226689226744_)))))
                          (let ()
                            (declare (not safe))
                            (_g226688226741_ _g226689226744_)))))
                  (let ()
                    (declare (not safe))
                    (_g226688226741_ _g226689226744_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g226687226917_ _L226673_))))
                                         (___kont240888240889_
                                          (lambda (_L226624_ _L226625_)
                                            (let ((__tmp241408
                                                   (let ((__tmp241409
                                                          (let ((__tmp241410
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241411
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L226624_))))
                           (declare (not safe))
                           (cons __tmp241411 '()))))
                    (declare (not safe))
                    (cons _L226625_ __tmp241410))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241409
                                                           _bind226530_))))
                                              (declare (not safe))
                                              (_lp226527_
                                               _rest226550_
                                               __tmp241408)))))
                                     (let* ((___match240955240956_
                                             (lambda (_e226584226649_
                                                      _hd226583226652_
                                                      _tl226582226654_
                                                      _e226587226657_
                                                      _hd226586226660_
                                                      _tl226585226662_
                                                      _e226590226665_
                                                      _hd226589226668_
                                                      _tl226588226670_)
                                               (let ((_L226673_
                                                      _hd226589226668_)
                                                     (_L226674_
                                                      _hd226586226660_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L226674_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L226673_)))
                                                     (___kont240886240887_
                                                      _L226673_
                                                      _L226674_)
                                                     (___kont240888240889_
                                                      _hd226589226668_
                                                      _hd226583226652_)))))
                                            (___match240933240934_
                                             (lambda (_e226573226925_
                                                      _hd226572226928_
                                                      _tl226571226930_
                                                      _e226576226933_
                                                      _hd226575226936_
                                                      _tl226574226938_
                                                      _e226579226941_
                                                      _hd226578226944_
                                                      _tl226577226946_)
                                               (let ((_L226949_
                                                      _hd226578226944_)
                                                     (_L226950_
                                                      _hd226575226936_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L226950_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L226949_)))
                                                     (___kont240884240885_
                                                      _L226949_
                                                      _L226950_)
                                                     (___match240955240956_
                                                      _e226573226925_
                                                      _hd226572226928_
                                                      _tl226571226930_
                                                      _e226576226933_
                                                      _hd226575226936_
                                                      _tl226574226938_
                                                      _e226579226941_
                                                      _hd226578226944_
                                                      _tl226577226946_)))))
                                            (___match240911240912_
                                             (lambda (_e226562227097_
                                                      _hd226561227100_
                                                      _tl226560227102_
                                                      _e226565227105_
                                                      _hd226564227108_
                                                      _tl226563227110_
                                                      _e226568227113_
                                                      _hd226567227116_
                                                      _tl226566227118_)
                                               (let ((_L227121_
                                                      _hd226567227116_)
                                                     (_L227122_
                                                      _hd226564227108_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L227122_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L227121_)))
                                                     (___kont240882240883_
                                                      _L227121_
                                                      _L227122_)
                                                     (___match240933240934_
                                                      _e226562227097_
                                                      _hd226561227100_
                                                      _tl226560227102_
                                                      _e226565227105_
                                                      _hd226564227108_
                                                      _tl226563227110_
                                                      _e226568227113_
                                                      _hd226567227116_
                                                      _tl226566227118_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx240880240881_))
                                           (let ((_e226562227097_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx240880240881_))))
                                             (let ((_tl226560227102_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e226562227097_)))
                                                   (_hd226561227100_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e226562227097_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd226561227100_))
                                                   (let ((_e226565227105_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd226561227100_))))
                                                     (let ((_tl226563227110_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e226565227105_)))
                                                           (_hd226564227108_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e226565227105_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl226563227110_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl226560227102_))
                       (let ((_e226568227113_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl226560227102_))))
                         (let ((_tl226566227118_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e226568227113_)))
                               (_hd226567227116_
                                (let ()
                                  (declare (not safe))
                                  (##car _e226568227113_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl226566227118_))
                               (___match240911240912_
                                _e226562227097_
                                _hd226561227100_
                                _tl226560227102_
                                _e226565227105_
                                _hd226564227108_
                                _tl226563227110_
                                _e226568227113_
                                _hd226567227116_
                                _tl226566227118_)
                               (let ()
                                 (declare (not safe))
                                 (_g226556226603_)))))
                       (let () (declare (not safe)) (_g226556226603_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl226560227102_))
                       (let ((_e226598226616_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl226560227102_))))
                         (let ((_tl226596226621_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e226598226616_)))
                               (_hd226597226619_
                                (let ()
                                  (declare (not safe))
                                  (##car _e226598226616_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl226596226621_))
                               (___kont240888240889_
                                _hd226597226619_
                                _hd226561227100_)
                               (let ()
                                 (declare (not safe))
                                 (_g226556226603_)))))
                       (let () (declare (not safe)) (_g226556226603_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl226560227102_))
                                                       (let ((_e226598226616_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl226560227102_))))
                 (let ((_tl226596226621_
                        (let () (declare (not safe)) (##cdr _e226598226616_)))
                       (_hd226597226619_
                        (let () (declare (not safe)) (##car _e226598226616_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl226596226621_))
                       (___kont240888240889_ _hd226597226619_ _hd226561227100_)
                       (let () (declare (not safe)) (_g226556226603_)))))
               (let () (declare (not safe)) (_g226556226603_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g226556226603_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest226531226539_))
                             (let ((_hd226536227217_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest226531226539_)))
                                   (_tl226537227219_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest226531226539_))))
                               (let* ((_hd227222_ _hd226536227217_)
                                      (_rest227224_ _tl226537227219_))
                                 (declare (not safe))
                                 (_K226535227214_ _rest227224_ _hd227222_)))
                             (let ()
                               (declare (not safe))
                               (_else226533226547_))))))))
          (let* ((___stx240972240973_ _stx226387_)
                 (_g226393226420_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx240972240973_)))))
            (let ((___kont240974240975_
                   (lambda (_L226480_ _L226481_ _L226482_)
                     (let ((__tmp241413
                            (lambda ()
                              (let ((_hd226519_
                                     (let ((__tmp241414
                                            (let ((__tmp241415
                                                   (lambda (_g226511226514_
                                                            _g226512226516_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g226511226514_
                                                             _g226512226516_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp241415
                                                      '()
                                                      _L226481_))))
                                       (declare (not safe))
                                       (_compile-bindings226390_ __tmp241414)))
                                    (_body226520_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L226480_))))
                                (let ((__tmp241416
                                       (let ((__tmp241417
                                              (let ((__tmp241418
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body226520_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd226519_
                                                      __tmp241418))))
                                         (declare (not safe))
                                         (cons _L226482_ __tmp241417))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp241416
                                   _stx226387_)))))
                           (__tmp241412
                            (let ((__obj241037
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj241037)
                              __obj241037)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp241413
                        gx#current-expander-context
                        __tmp241412))))
                  (___kont240978240979_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx226387_)))))
              (let ((___match240999241000_
                     (lambda (_e226400226432_
                              _hd226399226435_
                              _tl226398226437_
                              _e226403226440_
                              _hd226402226443_
                              _tl226401226445_
                              ___splice240976240977_
                              _target226404226448_
                              _tl226406226450_)
                       (letrec ((_loop226407226453_
                                 (lambda (_hd226405226456_ _bind226411226458_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd226405226456_))
                                       (let ((_e226408226461_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd226405226456_))))
                                         (let ((_lp-tl226410226466_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e226408226461_)))
                                               (_lp-hd226409226464_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e226408226461_))))
                                           (let ((__tmp241421
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd226409226464_
                                                          _bind226411226458_))))
                                             (declare (not safe))
                                             (_loop226407226453_
                                              _lp-tl226410226466_
                                              __tmp241421))))
                                       (let ((_bind226412226469_
                                              (reverse _bind226411226458_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl226401226445_))
                                             (let ((_e226415226472_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl226401226445_))))
                                               (let ((_tl226413226477_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e226415226472_)))
                                                     (_hd226414226475_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e226415226472_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl226413226477_))
                                                     (let ((_L226480_
                                                            _hd226414226475_)
                                                           (_L226481_
                                                            _bind226412226469_)
                                                           (_L226482_
                                                            _hd226399226435_))
                                                       (if (let ((__tmp241419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241420
                                 (lambda (_g226503226506_ _g226504226508_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g226503226506_ _g226504226508_)))))
                            (declare (not safe))
                            (foldr1 __tmp241420 '() _L226481_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp241419))
                   (___kont240974240975_ _L226480_ _L226481_ _L226482_)
                   (___kont240978240979_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont240978240979_))))
                                             (___kont240978240979_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop226407226453_ _target226404226448_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx240972240973_))
                    (let ((_e226400226432_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx240972240973_))))
                      (let ((_tl226398226437_
                             (let ()
                               (declare (not safe))
                               (##cdr _e226400226432_)))
                            (_hd226399226435_
                             (let ()
                               (declare (not safe))
                               (##car _e226400226432_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl226398226437_))
                            (let ((_e226403226440_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl226398226437_))))
                              (let ((_tl226401226445_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e226403226440_)))
                                    (_hd226402226443_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e226403226440_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd226402226443_))
                                    (let ((___splice240976240977_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd226402226443_
                                              '0))))
                                      (let ((_tl226406226450_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice240976240977_
                                                '1)))
                                            (_target226404226448_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice240976240977_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl226406226450_))
                                            (___match240999241000_
                                             _e226400226432_
                                             _hd226399226435_
                                             _tl226398226437_
                                             _e226403226440_
                                             _hd226402226443_
                                             _tl226401226445_
                                             ___splice240976240977_
                                             _target226404226448_
                                             _tl226406226450_)
                                            (___kont240978240979_))))
                                    (___kont240978240979_))))
                            (___kont240978240979_))))
                    (___kont240978240979_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind226305_)
        (let* ((___stx241002241003_ _bind226305_)
               (_g226308226325_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241002241003_)))))
          (let ((___kont241004241005_
                 (lambda (_L226361_ _L226362_)
                   (if (let () (declare (not safe)) (gx#identifier? _L226362_))
                       (let ((_$e226378_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L226361_))))
                         (if _$e226378_
                             _$e226378_
                             (let ((_$e226381_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L226361_))))
                               (if _$e226381_
                                   _$e226381_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L226361_))))))
                       '#f)))
                (___kont241006241007_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx241002241003_))
                (let ((_e226314226337_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx241002241003_))))
                  (let ((_tl226312226342_
                         (let () (declare (not safe)) (##cdr _e226314226337_)))
                        (_hd226313226340_
                         (let ()
                           (declare (not safe))
                           (##car _e226314226337_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd226313226340_))
                        (let ((_e226317226345_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd226313226340_))))
                          (let ((_tl226315226350_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e226317226345_)))
                                (_hd226316226348_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e226317226345_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl226315226350_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl226312226342_))
                                    (let ((_e226320226353_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl226312226342_))))
                                      (let ((_tl226318226358_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e226320226353_)))
                                            (_hd226319226356_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e226320226353_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl226318226358_))
                                            (___kont241004241005_
                                             _hd226319226356_
                                             _hd226316226348_)
                                            (___kont241006241007_))))
                                    (___kont241006241007_))
                                (___kont241006241007_))))
                        (___kont241006241007_))))
                (___kont241006241007_))))))))
