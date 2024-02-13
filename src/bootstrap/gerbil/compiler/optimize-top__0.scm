(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1707847730)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl238403_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp245064 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl238403_ __tmp245064))
           (let ()
             (declare (not safe))
             (table-set! _tbl238403_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238403_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238403_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238403_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl238403_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx238386_ . _args238388_)
        (let ((__tmp245066
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238388_)
                     (gxc#compile-e__0 _stx238386_)
                     (let ((_arg1238393_ (car _args238388_))
                           (_rest238395_ (cdr _args238388_)))
                       (if (null? _rest238395_)
                           (gxc#compile-e__1 _stx238386_ _arg1238393_)
                           (let ((_arg2238398_ (car _rest238395_))
                                 (_rest238400_ (cdr _rest238395_)))
                             (if (null? _rest238400_)
                                 (gxc#compile-e__2
                                  _stx238386_
                                  _arg1238393_
                                  _arg2238398_)
                                 (apply gxc#compile-e
                                        _stx238386_
                                        _arg1238393_
                                        _arg2238398_
                                        _rest238400_))))))))
              (__tmp245065 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp245066
           gxc#current-compile-methods
           __tmp245065))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl238383_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp245067 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl238383_ __tmp245067))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238383_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238383_ '%#call gxc#basic-expression-type-call%))
           _tbl238383_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx238366_ . _args238368_)
        (let ((__tmp245069
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238368_)
                     (gxc#compile-e__0 _stx238366_)
                     (let ((_arg1238373_ (car _args238368_))
                           (_rest238375_ (cdr _args238368_)))
                       (if (null? _rest238375_)
                           (gxc#compile-e__1 _stx238366_ _arg1238373_)
                           (let ((_arg2238378_ (car _rest238375_))
                                 (_rest238380_ (cdr _rest238375_)))
                             (if (null? _rest238380_)
                                 (gxc#compile-e__2
                                  _stx238366_
                                  _arg1238373_
                                  _arg2238378_)
                                 (apply gxc#compile-e
                                        _stx238366_
                                        _arg1238373_
                                        _arg2238378_
                                        _rest238380_))))))))
              (__tmp245068 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp245069
           gxc#current-compile-methods
           __tmp245068))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl238363_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp245070 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl238363_ __tmp245070))
           (let ()
             (declare (not safe))
             (table-set! _tbl238363_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238363_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238363_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238363_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238363_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238363_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238363_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238363_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238363_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238363_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238363_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238363_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl238363_ '%#set! gxc#collect-body-setq%))
           _tbl238363_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx238346_ . _args238348_)
        (let ((__tmp245072
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238348_)
                     (gxc#compile-e__0 _stx238346_)
                     (let ((_arg1238353_ (car _args238348_))
                           (_rest238355_ (cdr _args238348_)))
                       (if (null? _rest238355_)
                           (gxc#compile-e__1 _stx238346_ _arg1238353_)
                           (let ((_arg2238358_ (car _rest238355_))
                                 (_rest238360_ (cdr _rest238355_)))
                             (if (null? _rest238360_)
                                 (gxc#compile-e__2
                                  _stx238346_
                                  _arg1238353_
                                  _arg2238358_)
                                 (apply gxc#compile-e
                                        _stx238346_
                                        _arg1238353_
                                        _arg2238358_
                                        _rest238360_))))))))
              (__tmp245071 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp245072
           gxc#current-compile-methods
           __tmp245071))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl238343_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp245073 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl238343_ __tmp245073))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238343_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238343_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238343_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238343_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238343_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238343_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238343_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238343_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238343_ '%#ref gxc#basic-expression-type-ref%))
           _tbl238343_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx238326_ . _args238328_)
        (let ((__tmp245075
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238328_)
                     (gxc#compile-e__0 _stx238326_)
                     (let ((_arg1238333_ (car _args238328_))
                           (_rest238335_ (cdr _args238328_)))
                       (if (null? _rest238335_)
                           (gxc#compile-e__1 _stx238326_ _arg1238333_)
                           (let ((_arg2238338_ (car _rest238335_))
                                 (_rest238340_ (cdr _rest238335_)))
                             (if (null? _rest238340_)
                                 (gxc#compile-e__2
                                  _stx238326_
                                  _arg1238333_
                                  _arg2238338_)
                                 (apply gxc#compile-e
                                        _stx238326_
                                        _arg1238333_
                                        _arg2238338_
                                        _rest238340_))))))))
              (__tmp245074 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp245075
           gxc#current-compile-methods
           __tmp245074))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl238323_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp245076 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl238323_ __tmp245076))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238323_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238323_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238323_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238323_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl238323_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx238306_ . _args238308_)
        (let ((__tmp245078
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238308_)
                     (gxc#compile-e__0 _stx238306_)
                     (let ((_arg1238313_ (car _args238308_))
                           (_rest238315_ (cdr _args238308_)))
                       (if (null? _rest238315_)
                           (gxc#compile-e__1 _stx238306_ _arg1238313_)
                           (let ((_arg2238318_ (car _rest238315_))
                                 (_rest238320_ (cdr _rest238315_)))
                             (if (null? _rest238320_)
                                 (gxc#compile-e__2
                                  _stx238306_
                                  _arg1238313_
                                  _arg2238318_)
                                 (apply gxc#compile-e
                                        _stx238306_
                                        _arg1238313_
                                        _arg2238318_
                                        _rest238320_))))))))
              (__tmp245077 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp245078
           gxc#current-compile-methods
           __tmp245077))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx238209_)
        (let* ((___stx242984242985_ _stx238209_)
               (_g238212238232_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242984242985_)))))
          (let ((___kont242986242987_
                 (lambda (_L238276_ _L238277_)
                   (let ((_sym238295_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L238277_))))
                     (if (let ((__tmp245079 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp245079 _sym238295_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym238295_))
                         (let ((_type238296238298_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L238276_))))
                           (if _type238296238298_
                               (let ((_type238301_ _type238296238298_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym238295_
                                  _type238301_))
                               '#f))))))
                (___kont242988242989_ (lambda () '#!void)))
            (let ((___match243017243018_
                   (lambda (_e238218238244_
                            _hd238217238247_
                            _tl238216238249_
                            _e238221238252_
                            _hd238220238255_
                            _tl238219238257_
                            _e238224238260_
                            _hd238223238263_
                            _tl238222238265_
                            _e238227238268_
                            _hd238226238271_
                            _tl238225238273_)
                     (let ((_L238276_ _hd238226238271_)
                           (_L238277_ _hd238223238263_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L238277_))
                           (___kont242986242987_ _L238276_ _L238277_)
                           (___kont242988242989_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx242984242985_))
                  (let ((_e238218238244_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx242984242985_))))
                    (let ((_tl238216238249_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238218238244_)))
                          (_hd238217238247_
                           (let ()
                             (declare (not safe))
                             (##car _e238218238244_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238216238249_))
                          (let ((_e238221238252_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238216238249_))))
                            (let ((_tl238219238257_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238221238252_)))
                                  (_hd238220238255_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238221238252_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd238220238255_))
                                  (let ((_e238224238260_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd238220238255_))))
                                    (let ((_tl238222238265_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238224238260_)))
                                          (_hd238223238263_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238224238260_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl238222238265_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl238219238257_))
                                              (let ((_e238227238268_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl238219238257_))))
                                                (let ((_tl238225238273_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e238227238268_)))
                                                      (_hd238226238271_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e238227238268_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl238225238273_))
                                                      (___match243017243018_
                                                       _e238218238244_
                                                       _hd238217238247_
                                                       _tl238216238249_
                                                       _e238221238252_
                                                       _hd238220238255_
                                                       _tl238219238257_
                                                       _e238224238260_
                                                       _hd238223238263_
                                                       _tl238222238265_
                                                       _e238227238268_
                                                       _hd238226238271_
                                                       _tl238225238273_)
                                                      (___kont242988242989_))))
                                              (___kont242988242989_))
                                          (___kont242988242989_))))
                                  (___kont242988242989_))))
                          (___kont242988242989_))))
                  (___kont242988242989_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx238065_)
        (let* ((___stx243020243021_ _stx238065_)
               (_g238068238099_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243020243021_)))))
          (let ((___kont243022243023_
                 (lambda (_L238181_ _L238182_)
                   (let ((_sym238198_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L238182_))))
                     (if (let ((__tmp245080 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp245080 _sym238198_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym238198_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym238198_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym238198_))
                             (let ((_type238199238201_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L238181_))))
                               (if _type238199238201_
                                   (let ((_type238204_ _type238199238201_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym238198_
                                      _type238204_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L238181_)))))
                (___kont243024243025_
                 (lambda (_L238128_ _L238129_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L238128_)))))
            (let ((___match243053243054_
                   (lambda (_e238074238149_
                            _hd238073238152_
                            _tl238072238154_
                            _e238077238157_
                            _hd238076238160_
                            _tl238075238162_
                            _e238080238165_
                            _hd238079238168_
                            _tl238078238170_
                            _e238083238173_
                            _hd238082238176_
                            _tl238081238178_)
                     (let ((_L238181_ _hd238082238176_)
                           (_L238182_ _hd238079238168_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L238182_))
                           (___kont243022243023_ _L238181_ _L238182_)
                           (___kont243024243025_
                            _hd238082238176_
                            _hd238076238160_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243020243021_))
                  (let ((_e238074238149_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243020243021_))))
                    (let ((_tl238072238154_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238074238149_)))
                          (_hd238073238152_
                           (let ()
                             (declare (not safe))
                             (##car _e238074238149_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238072238154_))
                          (let ((_e238077238157_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238072238154_))))
                            (let ((_tl238075238162_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238077238157_)))
                                  (_hd238076238160_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238077238157_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd238076238160_))
                                  (let ((_e238080238165_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd238076238160_))))
                                    (let ((_tl238078238170_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238080238165_)))
                                          (_hd238079238168_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238080238165_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl238078238170_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl238075238162_))
                                              (let ((_e238083238173_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl238075238162_))))
                                                (let ((_tl238081238178_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e238083238173_)))
                                                      (_hd238082238176_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e238083238173_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl238081238178_))
                                                      (___match243053243054_
                                                       _e238074238149_
                                                       _hd238073238152_
                                                       _tl238072238154_
                                                       _e238077238157_
                                                       _hd238076238160_
                                                       _tl238075238162_
                                                       _e238080238165_
                                                       _hd238079238168_
                                                       _tl238078238170_
                                                       _e238083238173_
                                                       _hd238082238176_
                                                       _tl238081238178_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g238068238099_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g238068238099_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl238075238162_))
                                              (let ((_e238094238120_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl238075238162_))))
                                                (let ((_tl238092238125_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e238094238120_)))
                                                      (_hd238093238123_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e238094238120_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl238092238125_))
                                                      (___kont243024243025_
                                                       _hd238093238123_
                                                       _hd238076238160_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g238068238099_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g238068238099_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl238075238162_))
                                      (let ((_e238094238120_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl238075238162_))))
                                        (let ((_tl238092238125_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238094238120_)))
                                              (_hd238093238123_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238094238120_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl238092238125_))
                                              (___kont243024243025_
                                               _hd238093238123_
                                               _hd238076238160_)
                                              (let ()
                                                (declare (not safe))
                                                (_g238068238099_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g238068238099_))))))
                          (let () (declare (not safe)) (_g238068238099_)))))
                  (let () (declare (not safe)) (_g238068238099_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx237850_)
        (letrec ((_collect-e237852_
                  (lambda (_hd238009_ _expr238010_)
                    (let* ((___stx243076243077_ _hd238009_)
                           (_g238013238023_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx243076243077_)))))
                      (let ((___kont243078243079_
                             (lambda (_L238043_)
                               (let ((_sym238054_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L238043_))))
                                 (if (let ((__tmp245081
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (table-ref __tmp245081 _sym238054_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym238054_))
                                     (let ((_type238055238057_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr238010_))))
                                       (if _type238055238057_
                                           (let ((_type238060_
                                                  _type238055238057_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym238054_
                                              _type238060_
                                              '#t))
                                           '#f))))))
                            (___kont243080243081_ (lambda () '#!void)))
                        (let ((___match243089243090_
                               (lambda (_e238018238035_
                                        _hd238017238038_
                                        _tl238016238040_)
                                 (let ((_L238043_ _hd238017238038_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L238043_))
                                       (___kont243078243079_ _L238043_)
                                       (___kont243080243081_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx243076243077_))
                              (let ((_e238018238035_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx243076243077_))))
                                (let ((_tl238016238040_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e238018238035_)))
                                      (_hd238017238038_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e238018238035_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl238016238040_))
                                      (___match243089243090_
                                       _e238018238035_
                                       _hd238017238038_
                                       _tl238016238040_)
                                      (___kont243080243081_))))
                              (___kont243080243081_))))))))
          (let* ((_g237854237889_
                  (lambda (_g237855237886_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g237855237886_))))
                 (_g237853238006_
                  (lambda (_g237855237892_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g237855237892_))
                        (let ((_e237861237894_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g237855237892_))))
                          (let ((_hd237860237897_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e237861237894_)))
                                (_tl237859237899_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e237861237894_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl237859237899_))
                                (let ((_e237864237902_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl237859237899_))))
                                  (let ((_hd237863237905_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237864237902_)))
                                        (_tl237862237907_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237864237902_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd237863237905_))
                                        (let ((_g245082_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd237863237905_
                                                  '0))))
                                          (begin
                                            (let ((_g245083_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g245082_)
                                                         (##vector-length
                                                          _g245082_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g245083_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g245083_)))
                                            (let ((_target237865237910_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g245082_
                                                      0)))
                                                  (_tl237867237912_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g245082_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237867237912_))
                                                  (letrec ((_loop237868237915_
                                                            (lambda (_hd237866237918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr237872237920_
                             _hd237873237922_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd237866237918_))
                          (let ((_e237869237925_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd237866237918_))))
                            (let ((_lp-hd237870237928_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237869237925_)))
                                  (_lp-tl237871237930_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237869237925_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd237870237928_))
                                  (let ((_e237878237933_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd237870237928_))))
                                    (let ((_hd237877237936_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237878237933_)))
                                          (_tl237876237938_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237878237933_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl237876237938_))
                                          (let ((_e237881237941_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl237876237938_))))
                                            (let ((_hd237880237944_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e237881237941_)))
                                                  (_tl237879237946_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e237881237941_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237879237946_))
                                                  (let ((__tmp245088
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd237880237944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr237872237920_)))
                (__tmp245087
                 (let ()
                   (declare (not safe))
                   (cons _hd237877237936_ _hd237873237922_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop237868237915_
                                                     _lp-tl237871237930_
                                                     __tmp245088
                                                     __tmp245087))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237854237889_
                                                     _g237855237892_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237854237889_
                                             _g237855237892_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237854237889_ _g237855237892_)))))
                          (let ((_expr237874237949_
                                 (reverse _expr237872237920_))
                                (_hd237875237951_ (reverse _hd237873237922_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl237862237907_))
                                (let ((_e237884237954_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl237862237907_))))
                                  (let ((_hd237883237957_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237884237954_)))
                                        (_tl237882237959_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237884237954_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl237882237959_))
                                        ((lambda (_L237962_
                                                  _L237963_
                                                  _L237964_)
                                           (for-each
                                            _collect-e237852_
                                            (let ((__tmp245084
                                                   (lambda (_g237984237987_
                                                            _g237985237989_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g237984237987_
                                                             _g237985237989_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp245084
                                                      '()
                                                      _L237964_))
                                            (let ((__tmp245085
                                                   (lambda (_g237991237994_
                                                            _g237992237996_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g237991237994_
                                                             _g237992237996_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp245085
                                                      '()
                                                      _L237963_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp245086
                                                   (lambda (_g237998238001_
                                                            _g237999238003_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g237998238001_
                                                             _g237999238003_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp245086
                                                      '()
                                                      _L237963_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L237962_)))
                                         _hd237883237957_
                                         _expr237874237949_
                                         _hd237875237951_)
                                        (let ()
                                          (declare (not safe))
                                          (_g237854237889_ _g237855237892_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g237854237889_ _g237855237892_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop237868237915_
                                                       _target237865237910_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237854237889_
                                                     _g237855237892_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g237854237889_ _g237855237892_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g237854237889_ _g237855237892_)))))
                        (let ()
                          (declare (not safe))
                          (_g237854237889_ _g237855237892_))))))
            (declare (not safe))
            (_g237853238006_ _stx237850_)))))
    (define gxc#collect-type-call%
      (lambda (_stx237342_)
        (let* ((___stx243092243093_ _stx237342_)
               (_g237346237461_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243092243093_)))))
          (let ((___kont243094243095_
                 (lambda (_L237800_ _L237801_ _L237802_ _L237803_ _L237804_)
                   (let ((__tmp245092
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L237803_)))
                         (__tmp245091
                          (let () (declare (not safe)) (gx#stx-e _L237802_)))
                         (__tmp245090
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L237801_)))
                         (__tmp245089
                          (let () (declare (not safe)) (gx#stx-e _L237800_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp245092
                      __tmp245091
                      __tmp245090
                      __tmp245089))))
                (___kont243096243097_
                 (lambda (_L237628_ _L237629_ _L237630_ _L237631_)
                   (let ((__tmp245095
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L237630_)))
                         (__tmp245094
                          (let () (declare (not safe)) (gx#stx-e _L237629_)))
                         (__tmp245093
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L237628_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp245095
                      __tmp245094
                      __tmp245093
                      '#f))))
                (___kont243098243099_
                 (lambda (_L237498_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp245096
                           (lambda (_g237511237514_ _g237512237516_)
                             (let ()
                               (declare (not safe))
                               (cons _g237511237514_ _g237512237516_)))))
                      (declare (not safe))
                      (foldr1 __tmp245096 '() _L237498_))))))
            (let* ((___match243349243350_
                    (lambda (_e237447237466_
                             _hd237446237469_
                             _tl237445237471_
                             ___splice243100243101_
                             _target237448237474_
                             _tl237450237476_)
                      (letrec ((_loop237451237479_
                                (lambda (_hd237449237482_ _expr237455237484_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd237449237482_))
                                      (let ((_e237452237487_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd237449237482_))))
                                        (let ((_lp-tl237454237492_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237452237487_)))
                                              (_lp-hd237453237490_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237452237487_))))
                                          (let ((__tmp245097
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd237453237490_
                                                         _expr237455237484_))))
                                            (declare (not safe))
                                            (_loop237451237479_
                                             _lp-tl237454237492_
                                             __tmp245097))))
                                      (let ((_expr237456237495_
                                             (reverse _expr237455237484_)))
                                        (___kont243098243099_
                                         _expr237456237495_))))))
                        (let ()
                          (declare (not safe))
                          (_loop237451237479_ _target237448237474_ '())))))
                   (___match243229243230_
                    (lambda (_e237355237672_
                             _hd237354237675_
                             _tl237353237677_
                             _e237358237680_
                             _hd237357237683_
                             _tl237356237685_
                             _e237361237688_
                             _hd237360237691_
                             _tl237359237693_
                             _e237364237696_
                             _hd237363237699_
                             _tl237362237701_
                             _e237367237704_
                             _hd237366237707_
                             _tl237365237709_
                             _e237370237712_
                             _hd237369237715_
                             _tl237368237717_
                             _e237373237720_
                             _hd237372237723_
                             _tl237371237725_
                             _e237376237728_
                             _hd237375237731_
                             _tl237374237733_
                             _e237379237736_
                             _hd237378237739_
                             _tl237377237741_
                             _e237382237744_
                             _hd237381237747_
                             _tl237380237749_
                             _e237385237752_
                             _hd237384237755_
                             _tl237383237757_
                             _e237388237760_
                             _hd237387237763_
                             _tl237386237765_
                             _e237391237768_
                             _hd237390237771_
                             _tl237389237773_
                             _e237394237776_
                             _hd237393237779_
                             _tl237392237781_
                             _e237397237784_
                             _hd237396237787_
                             _tl237395237789_
                             _e237400237792_
                             _hd237399237795_
                             _tl237398237797_)
                      (let ((_L237800_ _hd237399237795_)
                            (_L237801_ _hd237390237771_)
                            (_L237802_ _hd237381237747_)
                            (_L237803_ _hd237372237723_)
                            (_L237804_ _hd237363237699_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L237804_
                               'bind-method!))
                            (___kont243094243095_
                             _L237800_
                             _L237801_
                             _L237802_
                             _L237803_
                             _L237804_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl237353237677_))
                                (let ((___splice243100243101_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl237353237677_
                                          '0))))
                                  (let ((_tl237450237476_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice243100243101_
                                            '1)))
                                        (_target237448237474_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice243100243101_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl237450237476_))
                                        (___match243349243350_
                                         _e237355237672_
                                         _hd237354237675_
                                         _tl237353237677_
                                         ___splice243100243101_
                                         _target237448237474_
                                         _tl237450237476_)
                                        (let ()
                                          (declare (not safe))
                                          (_g237346237461_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g237346237461_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243092243093_))
                  (let ((_e237355237672_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243092243093_))))
                    (let ((_tl237353237677_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237355237672_)))
                          (_hd237354237675_
                           (let ()
                             (declare (not safe))
                             (##car _e237355237672_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl237353237677_))
                          (let ((_e237358237680_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl237353237677_))))
                            (let ((_tl237356237685_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237358237680_)))
                                  (_hd237357237683_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237358237680_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd237357237683_))
                                  (let ((_e237361237688_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd237357237683_))))
                                    (let ((_tl237359237693_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237361237688_)))
                                          (_hd237360237691_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237361237688_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd237360237691_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd237360237691_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl237359237693_))
                                                  (let ((_e237364237696_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl237359237693_))))
                                                    (let ((_tl237362237701_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237364237696_)))
                                                          (_hd237363237699_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237364237696_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237362237701_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl237356237685_))
                      (let ((_e237367237704_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl237356237685_))))
                        (let ((_tl237365237709_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237367237704_)))
                              (_hd237366237707_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237367237704_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd237366237707_))
                              (let ((_e237370237712_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd237366237707_))))
                                (let ((_tl237368237717_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237370237712_)))
                                      (_hd237369237715_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237370237712_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd237369237715_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd237369237715_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl237368237717_))
                                              (let ((_e237373237720_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl237368237717_))))
                                                (let ((_tl237371237725_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e237373237720_)))
                                                      (_hd237372237723_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e237373237720_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237371237725_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl237365237709_))
                                                          (let ((_e237376237728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl237365237709_))))
                    (let ((_tl237374237733_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237376237728_)))
                          (_hd237375237731_
                           (let ()
                             (declare (not safe))
                             (##car _e237376237728_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd237375237731_))
                          (let ((_e237379237736_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd237375237731_))))
                            (let ((_tl237377237741_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237379237736_)))
                                  (_hd237378237739_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237379237736_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd237378237739_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd237378237739_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl237377237741_))
                                          (let ((_e237382237744_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl237377237741_))))
                                            (let ((_tl237380237749_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e237382237744_)))
                                                  (_hd237381237747_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e237382237744_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237380237749_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl237374237733_))
                                                      (let ((_e237385237752_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl237374237733_))))
                (let ((_tl237383237757_
                       (let () (declare (not safe)) (##cdr _e237385237752_)))
                      (_hd237384237755_
                       (let () (declare (not safe)) (##car _e237385237752_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd237384237755_))
                      (let ((_e237388237760_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd237384237755_))))
                        (let ((_tl237386237765_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237388237760_)))
                              (_hd237387237763_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237388237760_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd237387237763_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd237387237763_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237386237765_))
                                      (let ((_e237391237768_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237386237765_))))
                                        (let ((_tl237389237773_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237391237768_)))
                                              (_hd237390237771_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237391237768_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237389237773_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl237383237757_))
                                                  (let ((_e237394237776_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl237383237757_))))
                                                    (let ((_tl237392237781_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237394237776_)))
                                                          (_hd237393237779_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237394237776_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd237393237779_))
                                                          (let ((_e237397237784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd237393237779_))))
                    (let ((_tl237395237789_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237397237784_)))
                          (_hd237396237787_
                           (let ()
                             (declare (not safe))
                             (##car _e237397237784_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd237396237787_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd237396237787_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl237395237789_))
                                  (let ((_e237400237792_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl237395237789_))))
                                    (let ((_tl237398237797_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237400237792_)))
                                          (_hd237399237795_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237400237792_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237398237797_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237392237781_))
                                              (___match243229243230_
                                               _e237355237672_
                                               _hd237354237675_
                                               _tl237353237677_
                                               _e237358237680_
                                               _hd237357237683_
                                               _tl237356237685_
                                               _e237361237688_
                                               _hd237360237691_
                                               _tl237359237693_
                                               _e237364237696_
                                               _hd237363237699_
                                               _tl237362237701_
                                               _e237367237704_
                                               _hd237366237707_
                                               _tl237365237709_
                                               _e237370237712_
                                               _hd237369237715_
                                               _tl237368237717_
                                               _e237373237720_
                                               _hd237372237723_
                                               _tl237371237725_
                                               _e237376237728_
                                               _hd237375237731_
                                               _tl237374237733_
                                               _e237379237736_
                                               _hd237378237739_
                                               _tl237377237741_
                                               _e237382237744_
                                               _hd237381237747_
                                               _tl237380237749_
                                               _e237385237752_
                                               _hd237384237755_
                                               _tl237383237757_
                                               _e237388237760_
                                               _hd237387237763_
                                               _tl237386237765_
                                               _e237391237768_
                                               _hd237390237771_
                                               _tl237389237773_
                                               _e237394237776_
                                               _hd237393237779_
                                               _tl237392237781_
                                               _e237397237784_
                                               _hd237396237787_
                                               _tl237395237789_
                                               _e237400237792_
                                               _hd237399237795_
                                               _tl237398237797_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl237353237677_))
                                                  (let ((___splice243100243101_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl237353237677_
                                                            '0))))
                                                    (let ((_tl237450237476_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243100243101_
                                                              '1)))
                                                          (_target237448237474_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243100243101_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237450237476_))
                                                          (___match243349243350_
                                                           _e237355237672_
                                                           _hd237354237675_
                                                           _tl237353237677_
                                                           ___splice243100243101_
                                                           _target237448237474_
                                                           _tl237450237476_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g237346237461_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237346237461_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl237353237677_))
                                              (let ((___splice243100243101_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl237353237677_
                                                        '0))))
                                                (let ((_tl237450237476_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243100243101_
                                                          '1)))
                                                      (_target237448237474_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243100243101_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237450237476_))
                                                      (___match243349243350_
                                                       _e237355237672_
                                                       _hd237354237675_
                                                       _tl237353237677_
                                                       ___splice243100243101_
                                                       _target237448237474_
                                                       _tl237450237476_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g237346237461_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g237346237461_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl237353237677_))
                                      (let ((___splice243100243101_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl237353237677_
                                                '0))))
                                        (let ((_tl237450237476_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243100243101_
                                                  '1)))
                                              (_target237448237474_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243100243101_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237450237476_))
                                              (___match243349243350_
                                               _e237355237672_
                                               _hd237354237675_
                                               _tl237353237677_
                                               ___splice243100243101_
                                               _target237448237474_
                                               _tl237450237476_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237346237461_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237346237461_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl237353237677_))
                                  (let ((___splice243100243101_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl237353237677_
                                            '0))))
                                    (let ((_tl237450237476_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243100243101_
                                              '1)))
                                          (_target237448237474_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243100243101_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237450237476_))
                                          (___match243349243350_
                                           _e237355237672_
                                           _hd237354237675_
                                           _tl237353237677_
                                           ___splice243100243101_
                                           _target237448237474_
                                           _tl237450237476_)
                                          (let ()
                                            (declare (not safe))
                                            (_g237346237461_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237346237461_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl237353237677_))
                              (let ((___splice243100243101_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl237353237677_
                                        '0))))
                                (let ((_tl237450237476_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243100243101_
                                          '1)))
                                      (_target237448237474_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243100243101_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl237450237476_))
                                      (___match243349243350_
                                       _e237355237672_
                                       _hd237354237675_
                                       _tl237353237677_
                                       ___splice243100243101_
                                       _target237448237474_
                                       _tl237450237476_)
                                      (let ()
                                        (declare (not safe))
                                        (_g237346237461_)))))
                              (let ()
                                (declare (not safe))
                                (_g237346237461_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl237353237677_))
                      (let ((___splice243100243101_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl237353237677_ '0))))
                        (let ((_tl237450237476_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243100243101_ '1)))
                              (_target237448237474_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243100243101_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237450237476_))
                              (___match243349243350_
                               _e237355237672_
                               _hd237354237675_
                               _tl237353237677_
                               ___splice243100243101_
                               _target237448237474_
                               _tl237450237476_)
                              (let ()
                                (declare (not safe))
                                (_g237346237461_)))))
                      (let () (declare (not safe)) (_g237346237461_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237383237757_))
                                                      (if (let ((__tmp245098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp245098 'bind-method!))
                  (let ((_L237628_ _hd237390237771_)
                        (_L237629_ _hd237381237747_)
                        (_L237630_ _hd237372237723_)
                        (_L237631_ _hd237363237699_))
                    (___kont243096243097_
                     _L237628_
                     _L237629_
                     _L237630_
                     _L237631_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl237353237677_))
                      (let ((___splice243100243101_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl237353237677_ '0))))
                        (let ((_tl237450237476_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243100243101_ '1)))
                              (_target237448237474_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243100243101_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237450237476_))
                              (___match243349243350_
                               _e237355237672_
                               _hd237354237675_
                               _tl237353237677_
                               ___splice243100243101_
                               _target237448237474_
                               _tl237450237476_)
                              (let ()
                                (declare (not safe))
                                (_g237346237461_)))))
                      (let () (declare (not safe)) (_g237346237461_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl237353237677_))
                  (let ((___splice243100243101_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl237353237677_ '0))))
                    (let ((_tl237450237476_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243100243101_ '1)))
                          (_target237448237474_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243100243101_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl237450237476_))
                          (___match243349243350_
                           _e237355237672_
                           _hd237354237675_
                           _tl237353237677_
                           ___splice243100243101_
                           _target237448237474_
                           _tl237450237476_)
                          (let () (declare (not safe)) (_g237346237461_)))))
                  (let () (declare (not safe)) (_g237346237461_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl237353237677_))
                                                  (let ((___splice243100243101_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl237353237677_
                                                            '0))))
                                                    (let ((_tl237450237476_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243100243101_
                                                              '1)))
                                                          (_target237448237474_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243100243101_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237450237476_))
                                                          (___match243349243350_
                                                           _e237355237672_
                                                           _hd237354237675_
                                                           _tl237353237677_
                                                           ___splice243100243101_
                                                           _target237448237474_
                                                           _tl237450237476_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g237346237461_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237346237461_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl237353237677_))
                                          (let ((___splice243100243101_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl237353237677_
                                                    '0))))
                                            (let ((_tl237450237476_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243100243101_
                                                      '1)))
                                                  (_target237448237474_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243100243101_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237450237476_))
                                                  (___match243349243350_
                                                   _e237355237672_
                                                   _hd237354237675_
                                                   _tl237353237677_
                                                   ___splice243100243101_
                                                   _target237448237474_
                                                   _tl237450237476_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237346237461_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237346237461_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl237353237677_))
                                      (let ((___splice243100243101_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl237353237677_
                                                '0))))
                                        (let ((_tl237450237476_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243100243101_
                                                  '1)))
                                              (_target237448237474_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243100243101_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237450237476_))
                                              (___match243349243350_
                                               _e237355237672_
                                               _hd237354237675_
                                               _tl237353237677_
                                               ___splice243100243101_
                                               _target237448237474_
                                               _tl237450237476_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237346237461_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237346237461_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl237353237677_))
                                  (let ((___splice243100243101_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl237353237677_
                                            '0))))
                                    (let ((_tl237450237476_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243100243101_
                                              '1)))
                                          (_target237448237474_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243100243101_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237450237476_))
                                          (___match243349243350_
                                           _e237355237672_
                                           _hd237354237675_
                                           _tl237353237677_
                                           ___splice243100243101_
                                           _target237448237474_
                                           _tl237450237476_)
                                          (let ()
                                            (declare (not safe))
                                            (_g237346237461_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237346237461_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl237353237677_))
                          (let ((___splice243100243101_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl237353237677_
                                    '0))))
                            (let ((_tl237450237476_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice243100243101_ '1)))
                                  (_target237448237474_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice243100243101_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl237450237476_))
                                  (___match243349243350_
                                   _e237355237672_
                                   _hd237354237675_
                                   _tl237353237677_
                                   ___splice243100243101_
                                   _target237448237474_
                                   _tl237450237476_)
                                  (let ()
                                    (declare (not safe))
                                    (_g237346237461_)))))
                          (let () (declare (not safe)) (_g237346237461_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl237353237677_))
                  (let ((___splice243100243101_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl237353237677_ '0))))
                    (let ((_tl237450237476_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243100243101_ '1)))
                          (_target237448237474_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243100243101_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl237450237476_))
                          (___match243349243350_
                           _e237355237672_
                           _hd237354237675_
                           _tl237353237677_
                           ___splice243100243101_
                           _target237448237474_
                           _tl237450237476_)
                          (let () (declare (not safe)) (_g237346237461_)))))
                  (let () (declare (not safe)) (_g237346237461_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl237353237677_))
                                                      (let ((___splice243100243101_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl237353237677_ '0))))
                (let ((_tl237450237476_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice243100243101_ '1)))
                      (_target237448237474_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice243100243101_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl237450237476_))
                      (___match243349243350_
                       _e237355237672_
                       _hd237354237675_
                       _tl237353237677_
                       ___splice243100243101_
                       _target237448237474_
                       _tl237450237476_)
                      (let () (declare (not safe)) (_g237346237461_)))))
              (let () (declare (not safe)) (_g237346237461_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl237353237677_))
                                              (let ((___splice243100243101_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl237353237677_
                                                        '0))))
                                                (let ((_tl237450237476_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243100243101_
                                                          '1)))
                                                      (_target237448237474_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243100243101_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237450237476_))
                                                      (___match243349243350_
                                                       _e237355237672_
                                                       _hd237354237675_
                                                       _tl237353237677_
                                                       ___splice243100243101_
                                                       _target237448237474_
                                                       _tl237450237476_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g237346237461_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g237346237461_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl237353237677_))
                                          (let ((___splice243100243101_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl237353237677_
                                                    '0))))
                                            (let ((_tl237450237476_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243100243101_
                                                      '1)))
                                                  (_target237448237474_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243100243101_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237450237476_))
                                                  (___match243349243350_
                                                   _e237355237672_
                                                   _hd237354237675_
                                                   _tl237353237677_
                                                   ___splice243100243101_
                                                   _target237448237474_
                                                   _tl237450237476_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237346237461_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237346237461_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl237353237677_))
                                      (let ((___splice243100243101_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl237353237677_
                                                '0))))
                                        (let ((_tl237450237476_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243100243101_
                                                  '1)))
                                              (_target237448237474_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243100243101_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237450237476_))
                                              (___match243349243350_
                                               _e237355237672_
                                               _hd237354237675_
                                               _tl237353237677_
                                               ___splice243100243101_
                                               _target237448237474_
                                               _tl237450237476_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237346237461_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237346237461_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl237353237677_))
                              (let ((___splice243100243101_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl237353237677_
                                        '0))))
                                (let ((_tl237450237476_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243100243101_
                                          '1)))
                                      (_target237448237474_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243100243101_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl237450237476_))
                                      (___match243349243350_
                                       _e237355237672_
                                       _hd237354237675_
                                       _tl237353237677_
                                       ___splice243100243101_
                                       _target237448237474_
                                       _tl237450237476_)
                                      (let ()
                                        (declare (not safe))
                                        (_g237346237461_)))))
                              (let ()
                                (declare (not safe))
                                (_g237346237461_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl237353237677_))
                      (let ((___splice243100243101_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl237353237677_ '0))))
                        (let ((_tl237450237476_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243100243101_ '1)))
                              (_target237448237474_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243100243101_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237450237476_))
                              (___match243349243350_
                               _e237355237672_
                               _hd237354237675_
                               _tl237353237677_
                               ___splice243100243101_
                               _target237448237474_
                               _tl237450237476_)
                              (let ()
                                (declare (not safe))
                                (_g237346237461_)))))
                      (let () (declare (not safe)) (_g237346237461_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl237353237677_))
                  (let ((___splice243100243101_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl237353237677_ '0))))
                    (let ((_tl237450237476_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243100243101_ '1)))
                          (_target237448237474_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243100243101_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl237450237476_))
                          (___match243349243350_
                           _e237355237672_
                           _hd237354237675_
                           _tl237353237677_
                           ___splice243100243101_
                           _target237448237474_
                           _tl237450237476_)
                          (let () (declare (not safe)) (_g237346237461_)))))
                  (let () (declare (not safe)) (_g237346237461_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl237353237677_))
                                                  (let ((___splice243100243101_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl237353237677_
                                                            '0))))
                                                    (let ((_tl237450237476_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243100243101_
                                                              '1)))
                                                          (_target237448237474_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243100243101_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237450237476_))
                                                          (___match243349243350_
                                                           _e237355237672_
                                                           _hd237354237675_
                                                           _tl237353237677_
                                                           ___splice243100243101_
                                                           _target237448237474_
                                                           _tl237450237476_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g237346237461_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237346237461_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl237353237677_))
                                              (let ((___splice243100243101_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl237353237677_
                                                        '0))))
                                                (let ((_tl237450237476_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243100243101_
                                                          '1)))
                                                      (_target237448237474_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243100243101_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237450237476_))
                                                      (___match243349243350_
                                                       _e237355237672_
                                                       _hd237354237675_
                                                       _tl237353237677_
                                                       ___splice243100243101_
                                                       _target237448237474_
                                                       _tl237450237476_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g237346237461_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g237346237461_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl237353237677_))
                                          (let ((___splice243100243101_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl237353237677_
                                                    '0))))
                                            (let ((_tl237450237476_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243100243101_
                                                      '1)))
                                                  (_target237448237474_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243100243101_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237450237476_))
                                                  (___match243349243350_
                                                   _e237355237672_
                                                   _hd237354237675_
                                                   _tl237353237677_
                                                   ___splice243100243101_
                                                   _target237448237474_
                                                   _tl237450237476_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237346237461_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237346237461_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl237353237677_))
                                  (let ((___splice243100243101_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl237353237677_
                                            '0))))
                                    (let ((_tl237450237476_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243100243101_
                                              '1)))
                                          (_target237448237474_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243100243101_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237450237476_))
                                          (___match243349243350_
                                           _e237355237672_
                                           _hd237354237675_
                                           _tl237353237677_
                                           ___splice243100243101_
                                           _target237448237474_
                                           _tl237450237476_)
                                          (let ()
                                            (declare (not safe))
                                            (_g237346237461_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237346237461_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl237353237677_))
                          (let ((___splice243100243101_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl237353237677_
                                    '0))))
                            (let ((_tl237450237476_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice243100243101_ '1)))
                                  (_target237448237474_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice243100243101_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl237450237476_))
                                  (___match243349243350_
                                   _e237355237672_
                                   _hd237354237675_
                                   _tl237353237677_
                                   ___splice243100243101_
                                   _target237448237474_
                                   _tl237450237476_)
                                  (let ()
                                    (declare (not safe))
                                    (_g237346237461_)))))
                          (let () (declare (not safe)) (_g237346237461_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl237353237677_))
                      (let ((___splice243100243101_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl237353237677_ '0))))
                        (let ((_tl237450237476_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243100243101_ '1)))
                              (_target237448237474_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243100243101_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237450237476_))
                              (___match243349243350_
                               _e237355237672_
                               _hd237354237675_
                               _tl237353237677_
                               ___splice243100243101_
                               _target237448237474_
                               _tl237450237476_)
                              (let ()
                                (declare (not safe))
                                (_g237346237461_)))))
                      (let () (declare (not safe)) (_g237346237461_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl237353237677_))
                                                      (let ((___splice243100243101_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl237353237677_ '0))))
                (let ((_tl237450237476_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice243100243101_ '1)))
                      (_target237448237474_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice243100243101_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl237450237476_))
                      (___match243349243350_
                       _e237355237672_
                       _hd237354237675_
                       _tl237353237677_
                       ___splice243100243101_
                       _target237448237474_
                       _tl237450237476_)
                      (let () (declare (not safe)) (_g237346237461_)))))
              (let () (declare (not safe)) (_g237346237461_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl237353237677_))
                                                  (let ((___splice243100243101_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl237353237677_
                                                            '0))))
                                                    (let ((_tl237450237476_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243100243101_
                                                              '1)))
                                                          (_target237448237474_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243100243101_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237450237476_))
                                                          (___match243349243350_
                                                           _e237355237672_
                                                           _hd237354237675_
                                                           _tl237353237677_
                                                           ___splice243100243101_
                                                           _target237448237474_
                                                           _tl237450237476_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g237346237461_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237346237461_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl237353237677_))
                                              (let ((___splice243100243101_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl237353237677_
                                                        '0))))
                                                (let ((_tl237450237476_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243100243101_
                                                          '1)))
                                                      (_target237448237474_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243100243101_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237450237476_))
                                                      (___match243349243350_
                                                       _e237355237672_
                                                       _hd237354237675_
                                                       _tl237353237677_
                                                       ___splice243100243101_
                                                       _target237448237474_
                                                       _tl237450237476_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g237346237461_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g237346237461_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl237353237677_))
                                      (let ((___splice243100243101_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl237353237677_
                                                '0))))
                                        (let ((_tl237450237476_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243100243101_
                                                  '1)))
                                              (_target237448237474_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243100243101_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237450237476_))
                                              (___match243349243350_
                                               _e237355237672_
                                               _hd237354237675_
                                               _tl237353237677_
                                               ___splice243100243101_
                                               _target237448237474_
                                               _tl237450237476_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237346237461_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237346237461_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl237353237677_))
                              (let ((___splice243100243101_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl237353237677_
                                        '0))))
                                (let ((_tl237450237476_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243100243101_
                                          '1)))
                                      (_target237448237474_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243100243101_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl237450237476_))
                                      (___match243349243350_
                                       _e237355237672_
                                       _hd237354237675_
                                       _tl237353237677_
                                       ___splice243100243101_
                                       _target237448237474_
                                       _tl237450237476_)
                                      (let ()
                                        (declare (not safe))
                                        (_g237346237461_)))))
                              (let ()
                                (declare (not safe))
                                (_g237346237461_))))))
                  (let () (declare (not safe)) (_g237346237461_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx237282_)
        (let* ((___stx243352243353_ _stx237282_)
               (_g237285237298_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243352243353_)))))
          (let ((___kont243354243355_
                 (lambda (_L237326_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L237326_))))
                (___kont243356243357_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx243352243353_))
                (let ((_e237290237310_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx243352243353_))))
                  (let ((_tl237288237315_
                         (let () (declare (not safe)) (##cdr _e237290237310_)))
                        (_hd237289237313_
                         (let ()
                           (declare (not safe))
                           (##car _e237290237310_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl237288237315_))
                        (let ((_e237293237318_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl237288237315_))))
                          (let ((_tl237291237323_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e237293237318_)))
                                (_hd237292237321_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e237293237318_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl237291237323_))
                                (___kont243354243355_ _hd237292237321_)
                                (___kont243356243357_))))
                        (___kont243356243357_))))
                (___kont243356243357_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx237162_)
        (let* ((_g237164237181_
                (lambda (_g237165237178_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g237165237178_))))
               (_g237163237279_
                (lambda (_g237165237184_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g237165237184_))
                      (let ((_e237170237186_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g237165237184_))))
                        (let ((_hd237169237189_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237170237186_)))
                              (_tl237168237191_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237170237186_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl237168237191_))
                              (let ((_e237173237194_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl237168237191_))))
                                (let ((_hd237172237197_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237173237194_)))
                                      (_tl237171237199_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237173237194_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237171237199_))
                                      (let ((_e237176237202_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237171237199_))))
                                        (let ((_hd237175237205_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237176237202_)))
                                              (_tl237174237207_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237176237202_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237174237207_))
                                              ((lambda (_L237210_ _L237211_)
                                                 (let* ((___stx243374243375_
                                                         _L237211_)
                                                        (_g237227237238_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx243374243375_)))))
                                                   (let ((___kont243376243377_
                                                          (lambda (_L237258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L237259_)
                    (let ((_$e237271_
                           (let ((__tmp245099
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L237259_))))
                             (declare (not safe))
                             (table-ref
                              gxc#basic-expression-type-annotations
                              __tmp245099
                              '#f))))
                      (if _$e237271_
                          ((lambda (_type-e237274_)
                             (_type-e237274_ _stx237162_ _L237211_))
                           _$e237271_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L237210_))))))
                 (___kont243378243379_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L237210_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match243385243386_
                                                            (lambda (_e237233237250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd237232237253_
                             _tl237231237255_)
                      (let ((_L237258_ _tl237231237255_)
                            (_L237259_ _hd237232237253_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L237259_))
                            (___kont243376243377_ _L237258_ _L237259_)
                            (___kont243378243379_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx243374243375_))
                   (let ((_e237233237250_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx243374243375_))))
                     (let ((_tl237231237255_
                            (let ()
                              (declare (not safe))
                              (##cdr _e237233237250_)))
                           (_hd237232237253_
                            (let ()
                              (declare (not safe))
                              (##car _e237233237250_))))
                       (___match243385243386_
                        _e237233237250_
                        _hd237232237253_
                        _tl237231237255_)))
                   (___kont243378243379_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd237175237205_
                                               _hd237172237197_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237164237181_
                                                 _g237165237184_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237164237181_ _g237165237184_)))))
                              (let ()
                                (declare (not safe))
                                (_g237164237181_ _g237165237184_)))))
                      (let ()
                        (declare (not safe))
                        (_g237164237181_ _g237165237184_))))))
          (declare (not safe))
          (_g237163237279_ _stx237162_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx237006_ _ann237007_)
        (let* ((_g237009237046_
                (lambda (_g237010237043_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g237010237043_))))
               (_g237008237159_
                (lambda (_g237010237049_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g237010237049_))
                      (let ((_e237020237051_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g237010237049_))))
                        (let ((_hd237019237054_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237020237051_)))
                              (_tl237018237056_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237020237051_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl237018237056_))
                              (let ((_e237023237059_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl237018237056_))))
                                (let ((_hd237022237062_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237023237059_)))
                                      (_tl237021237064_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237023237059_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237021237064_))
                                      (let ((_e237026237067_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237021237064_))))
                                        (let ((_hd237025237070_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237026237067_)))
                                              (_tl237024237072_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237026237067_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl237024237072_))
                                              (let ((_e237029237075_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl237024237072_))))
                                                (let ((_hd237028237078_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e237029237075_)))
                                                      (_tl237027237080_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e237029237075_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl237027237080_))
                                                      (let ((_e237032237083_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl237027237080_))))
                (let ((_hd237031237086_
                       (let () (declare (not safe)) (##car _e237032237083_)))
                      (_tl237030237088_
                       (let () (declare (not safe)) (##cdr _e237032237083_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl237030237088_))
                      (let ((_e237035237091_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl237030237088_))))
                        (let ((_hd237034237094_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237035237091_)))
                              (_tl237033237096_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237035237091_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl237033237096_))
                              (let ((_e237038237099_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl237033237096_))))
                                (let ((_hd237037237102_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237038237099_)))
                                      (_tl237036237104_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237038237099_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237036237104_))
                                      (let ((_e237041237107_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237036237104_))))
                                        (let ((_hd237040237110_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237041237107_)))
                                              (_tl237039237112_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237041237107_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237039237112_))
                                              ((lambda (_L237115_
                                                        _L237116_
                                                        _L237117_
                                                        _L237118_
                                                        _L237119_
                                                        _L237120_
                                                        _L237121_)
                                                 (let ((_type-id237151_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237121_)))
                                                       (_super237152_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L237120_)))
                                                       (_slots237153_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L237119_)))
                                                       (_ctor-method237154_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237118_)))
                                                       (_struct?237155_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237117_)))
                                                       (_final?237156_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237116_)))
                                                       (_metaclass237157_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L237115_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L237115_))
                                                            '#f)))
                                                   (let ((__obj245057
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
                                                      __obj245057
                                                      _type-id237151_
                                                      _super237152_
                                                      _slots237153_
                                                      _ctor-method237154_
                                                      _struct?237155_
                                                      _final?237156_
                                                      _metaclass237157_)
                                                     __obj245057)))
                                               _hd237040237110_
                                               _hd237037237102_
                                               _hd237034237094_
                                               _hd237031237086_
                                               _hd237028237078_
                                               _hd237025237070_
                                               _hd237022237062_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237009237046_
                                                 _g237010237049_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237009237046_ _g237010237049_)))))
                              (let ()
                                (declare (not safe))
                                (_g237009237046_ _g237010237049_)))))
                      (let ()
                        (declare (not safe))
                        (_g237009237046_ _g237010237049_)))))
              (let ()
                (declare (not safe))
                (_g237009237046_ _g237010237049_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g237009237046_
                                                 _g237010237049_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237009237046_ _g237010237049_)))))
                              (let ()
                                (declare (not safe))
                                (_g237009237046_ _g237010237049_)))))
                      (let ()
                        (declare (not safe))
                        (_g237009237046_ _g237010237049_))))))
          (declare (not safe))
          (_g237008237159_ _ann237007_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx236954_ _ann236955_)
        (let* ((_g236957236970_
                (lambda (_g236958236967_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g236958236967_))))
               (_g236956237003_
                (lambda (_g236958236973_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g236958236973_))
                      (let ((_e236962236975_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g236958236973_))))
                        (let ((_hd236961236978_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236962236975_)))
                              (_tl236960236980_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236962236975_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236960236980_))
                              (let ((_e236965236983_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236960236980_))))
                                (let ((_hd236964236986_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236965236983_)))
                                      (_tl236963236988_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236965236983_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236963236988_))
                                      ((lambda (_L236991_)
                                         (let ((__tmp245100
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L236991_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp245100)))
                                       _hd236964236986_)
                                      (let ()
                                        (declare (not safe))
                                        (_g236957236970_ _g236958236973_)))))
                              (let ()
                                (declare (not safe))
                                (_g236957236970_ _g236958236973_)))))
                      (let ()
                        (declare (not safe))
                        (_g236957236970_ _g236958236973_))))))
          (declare (not safe))
          (_g236956237003_ _ann236955_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx236902_ _ann236903_)
        (let* ((_g236905236918_
                (lambda (_g236906236915_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g236906236915_))))
               (_g236904236951_
                (lambda (_g236906236921_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g236906236921_))
                      (let ((_e236910236923_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g236906236921_))))
                        (let ((_hd236909236926_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236910236923_)))
                              (_tl236908236928_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236910236923_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236908236928_))
                              (let ((_e236913236931_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236908236928_))))
                                (let ((_hd236912236934_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236913236931_)))
                                      (_tl236911236936_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236913236931_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236911236936_))
                                      ((lambda (_L236939_)
                                         (let ((__tmp245101
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L236939_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp245101)))
                                       _hd236912236934_)
                                      (let ()
                                        (declare (not safe))
                                        (_g236905236918_ _g236906236921_)))))
                              (let ()
                                (declare (not safe))
                                (_g236905236918_ _g236906236921_)))))
                      (let ()
                        (declare (not safe))
                        (_g236905236918_ _g236906236921_))))))
          (declare (not safe))
          (_g236904236951_ _ann236903_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx236818_ _ann236819_)
        (let* ((_g236821236842_
                (lambda (_g236822236839_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g236822236839_))))
               (_g236820236899_
                (lambda (_g236822236845_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g236822236845_))
                      (let ((_e236828236847_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g236822236845_))))
                        (let ((_hd236827236850_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236828236847_)))
                              (_tl236826236852_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236828236847_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236826236852_))
                              (let ((_e236831236855_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236826236852_))))
                                (let ((_hd236830236858_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236831236855_)))
                                      (_tl236829236860_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236831236855_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236829236860_))
                                      (let ((_e236834236863_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236829236860_))))
                                        (let ((_hd236833236866_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236834236863_)))
                                              (_tl236832236868_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236834236863_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236832236868_))
                                              (let ((_e236837236871_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236832236868_))))
                                                (let ((_hd236836236874_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236837236871_)))
                                                      (_tl236835236876_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236837236871_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236835236876_))
                                                      ((lambda (_L236879_
                                                                _L236880_
                                                                _L236881_)
                                                         (let ((__tmp245104
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L236881_)))
                       (__tmp245103
                        (let () (declare (not safe)) (gx#stx-e _L236880_)))
                       (__tmp245102
                        (let () (declare (not safe)) (gx#stx-e _L236879_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp245104
                    __tmp245103
                    __tmp245102)))
               _hd236836236874_
               _hd236833236866_
               _hd236830236858_)
              (let ()
                (declare (not safe))
                (_g236821236842_ _g236822236845_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g236821236842_
                                                 _g236822236845_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236821236842_ _g236822236845_)))))
                              (let ()
                                (declare (not safe))
                                (_g236821236842_ _g236822236845_)))))
                      (let ()
                        (declare (not safe))
                        (_g236821236842_ _g236822236845_))))))
          (declare (not safe))
          (_g236820236899_ _ann236819_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx236734_ _ann236735_)
        (let* ((_g236737236758_
                (lambda (_g236738236755_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g236738236755_))))
               (_g236736236815_
                (lambda (_g236738236761_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g236738236761_))
                      (let ((_e236744236763_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g236738236761_))))
                        (let ((_hd236743236766_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236744236763_)))
                              (_tl236742236768_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236744236763_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236742236768_))
                              (let ((_e236747236771_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236742236768_))))
                                (let ((_hd236746236774_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236747236771_)))
                                      (_tl236745236776_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236747236771_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236745236776_))
                                      (let ((_e236750236779_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236745236776_))))
                                        (let ((_hd236749236782_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236750236779_)))
                                              (_tl236748236784_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236750236779_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236748236784_))
                                              (let ((_e236753236787_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236748236784_))))
                                                (let ((_hd236752236790_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236753236787_)))
                                                      (_tl236751236792_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236753236787_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236751236792_))
                                                      ((lambda (_L236795_
                                                                _L236796_
                                                                _L236797_)
                                                         (let ((__tmp245107
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L236797_)))
                       (__tmp245106
                        (let () (declare (not safe)) (gx#stx-e _L236796_)))
                       (__tmp245105
                        (let () (declare (not safe)) (gx#stx-e _L236795_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp245107
                    __tmp245106
                    __tmp245105)))
               _hd236752236790_
               _hd236749236782_
               _hd236746236774_)
              (let ()
                (declare (not safe))
                (_g236737236758_ _g236738236761_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g236737236758_
                                                 _g236738236761_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236737236758_ _g236738236761_)))))
                              (let ()
                                (declare (not safe))
                                (_g236737236758_ _g236738236761_)))))
                      (let ()
                        (declare (not safe))
                        (_g236737236758_ _g236738236761_))))))
          (declare (not safe))
          (_g236736236815_ _ann236735_))))
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
      (lambda (_stx235854_)
        (let* ((___stx243388243389_ _stx235854_)
               (_g235860236056_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243388243389_)))))
          (let ((___kont243390243391_
                 (lambda (_L236722_)
                   (let ((__obj245058
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj245058
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L236722_))
                      '#f)
                     __obj245058)))
                (___kont243392243393_
                 (lambda (_L236649_
                          _L236650_
                          _L236651_
                          _L236652_
                          _L236653_
                          _L236654_)
                   (let* ((_tab236704_
                           (let () (declare (not safe)) (gx#stx-e _L236651_)))
                          (_keys236706_
                           (if _tab236704_
                               (let ((__tmp245108 (vector->list _tab236704_)))
                                 (declare (not safe))
                                 (filter values __tmp245108))
                               '#f)))
                     (let ((__tmp245109
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L236650_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys236706_
                        __tmp245109)))))
                (___kont243394243395_
                 (lambda (_L236382_
                          _L236383_
                          _L236384_
                          _L236385_
                          _L236386_
                          _L236387_
                          _L236388_
                          _L236389_
                          _L236390_
                          _L236391_)
                   (let ((__tmp245111
                          (map gx#stx-e
                               (let ((__tmp245112
                                      (lambda (_g236484236487_ _g236485236489_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g236484236487_
                                                _g236485236489_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp245112 '() _L236384_))))
                         (__tmp245110
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236388_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp245111
                      __tmp245110))))
                (___kont243398243399_
                 (lambda (_L236092_)
                   (let ((__obj245059
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj245059
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L236092_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L236092_)))
                     __obj245059)))
                (___kont243400243401_
                 (lambda (_L236069_)
                   (let ((__obj245060
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj245060
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L236069_))
                      '#f)
                     __obj245060))))
            (let* ((___match243707243708_
                    (lambda (_e236047236084_ _hd236046236087_ _tl236045236089_)
                      (let ((_L236092_ _tl236045236089_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L236092_))
                            (___kont243398243399_ _L236092_)
                            (___kont243400243401_ _tl236045236089_)))))
                   (___match243701243702_
                    (lambda (_e235941236106_
                             _hd235940236109_
                             _tl235939236111_
                             _e235944236114_
                             _hd235943236117_
                             _tl235942236119_
                             _e235947236122_
                             _hd235946236125_
                             _tl235945236127_
                             _e235950236130_
                             _hd235949236133_
                             _tl235948236135_
                             _e235953236138_
                             _hd235952236141_
                             _tl235951236143_
                             _e235956236146_
                             _hd235955236149_
                             _tl235954236151_
                             _e235959236154_
                             _hd235958236157_
                             _tl235957236159_
                             _e235962236162_
                             _hd235961236165_
                             _tl235960236167_
                             _e235965236170_
                             _hd235964236173_
                             _tl235963236175_
                             _e235968236178_
                             _hd235967236181_
                             _tl235966236183_
                             _e235971236186_
                             _hd235970236189_
                             _tl235969236191_
                             _e235974236194_
                             _hd235973236197_
                             _tl235972236199_
                             _e235977236202_
                             _hd235976236205_
                             _tl235975236207_
                             _e235980236210_
                             _hd235979236213_
                             _tl235978236215_
                             ___splice243396243397_
                             _target235981236218_
                             _tl235983236220_
                             _e235998236223_
                             _hd235997236226_
                             _tl235996236228_
                             _e236001236231_
                             _hd236000236234_
                             _tl235999236236_
                             _e236004236239_
                             _hd236003236242_
                             _tl236002236244_)
                      (letrec ((_loop235984236247_
                                (lambda (_hd235982236250_
                                         _-absent-value235988236252_
                                         _key235989236254_
                                         _-xkwvar235990236256_
                                         _-hash-ref235991236258_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd235982236250_))
                                      (let ((_e235985236261_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd235982236250_))))
                                        (let ((_lp-tl235987236266_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235985236261_)))
                                              (_lp-hd235986236264_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235985236261_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd235986236264_))
                                              (let ((_e236007236269_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd235986236264_))))
                                                (let ((_tl236005236274_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236007236269_)))
                                                      (_hd236006236272_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236007236269_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd236006236272_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd236006236272_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl236005236274_))
                      (let ((_e236010236277_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl236005236274_))))
                        (let ((_tl236008236282_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236010236277_)))
                              (_hd236009236280_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236010236277_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd236009236280_))
                              (let ((_e236013236285_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd236009236280_))))
                                (let ((_tl236011236290_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236013236285_)))
                                      (_hd236012236288_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236013236285_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd236012236288_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd236012236288_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236011236290_))
                                              (let ((_e236016236293_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236011236290_))))
                                                (let ((_tl236014236298_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236016236293_)))
                                                      (_hd236015236296_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236016236293_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236014236298_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl236008236282_))
                                                          (let ((_e236019236301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl236008236282_))))
                    (let ((_tl236017236306_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236019236301_)))
                          (_hd236018236304_
                           (let ()
                             (declare (not safe))
                             (##car _e236019236301_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd236018236304_))
                          (let ((_e236022236309_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd236018236304_))))
                            (let ((_tl236020236314_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236022236309_)))
                                  (_hd236021236312_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236022236309_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd236021236312_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd236021236312_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl236020236314_))
                                          (let ((_e236025236317_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl236020236314_))))
                                            (let ((_tl236023236322_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236025236317_)))
                                                  (_hd236024236320_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236025236317_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236023236322_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl236017236306_))
                                                      (let ((_e236028236325_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl236017236306_))))
                (let ((_tl236026236330_
                       (let () (declare (not safe)) (##cdr _e236028236325_)))
                      (_hd236027236328_
                       (let () (declare (not safe)) (##car _e236028236325_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd236027236328_))
                      (let ((_e236031236333_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd236027236328_))))
                        (let ((_tl236029236338_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236031236333_)))
                              (_hd236030236336_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236031236333_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd236030236336_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd236030236336_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236029236338_))
                                      (let ((_e236034236341_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236029236338_))))
                                        (let ((_tl236032236346_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236034236341_)))
                                              (_hd236033236344_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236034236341_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236032236346_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl236026236330_))
                                                  (let ((_e236037236349_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl236026236330_))))
                                                    (let ((_tl236035236354_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e236037236349_)))
                                                          (_hd236036236352_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e236037236349_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd236036236352_))
                                                          (let ((_e236040236357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd236036236352_))))
                    (let ((_tl236038236362_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236040236357_)))
                          (_hd236039236360_
                           (let ()
                             (declare (not safe))
                             (##car _e236040236357_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd236039236360_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd236039236360_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl236038236362_))
                                  (let ((_e236043236365_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl236038236362_))))
                                    (let ((_tl236041236370_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236043236365_)))
                                          (_hd236042236368_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236043236365_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236041236370_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236035236354_))
                                              (let ((__tmp245127
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd236042236368_
                                                             _-absent-value235988236252_)))
                                                    (__tmp245126
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd236033236344_
                                                             _key235989236254_)))
                                                    (__tmp245125
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd236024236320_
                                                             _-xkwvar235990236256_)))
                                                    (__tmp245124
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd236015236296_
                                                             _-hash-ref235991236258_))))
                                                (declare (not safe))
                                                (_loop235984236247_
                                                 _lp-tl235987236266_
                                                 __tmp245127
                                                 __tmp245126
                                                 __tmp245125
                                                 __tmp245124))
                                              (___match243707243708_
                                               _e235941236106_
                                               _hd235940236109_
                                               _tl235939236111_))
                                          (___match243707243708_
                                           _e235941236106_
                                           _hd235940236109_
                                           _tl235939236111_))))
                                  (___match243707243708_
                                   _e235941236106_
                                   _hd235940236109_
                                   _tl235939236111_))
                              (___match243707243708_
                               _e235941236106_
                               _hd235940236109_
                               _tl235939236111_))
                          (___match243707243708_
                           _e235941236106_
                           _hd235940236109_
                           _tl235939236111_))))
                  (___match243707243708_
                   _e235941236106_
                   _hd235940236109_
                   _tl235939236111_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243707243708_
                                                   _e235941236106_
                                                   _hd235940236109_
                                                   _tl235939236111_))
                                              (___match243707243708_
                                               _e235941236106_
                                               _hd235940236109_
                                               _tl235939236111_))))
                                      (___match243707243708_
                                       _e235941236106_
                                       _hd235940236109_
                                       _tl235939236111_))
                                  (___match243707243708_
                                   _e235941236106_
                                   _hd235940236109_
                                   _tl235939236111_))
                              (___match243707243708_
                               _e235941236106_
                               _hd235940236109_
                               _tl235939236111_))))
                      (___match243707243708_
                       _e235941236106_
                       _hd235940236109_
                       _tl235939236111_))))
              (___match243707243708_
               _e235941236106_
               _hd235940236109_
               _tl235939236111_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243707243708_
                                                   _e235941236106_
                                                   _hd235940236109_
                                                   _tl235939236111_))))
                                          (___match243707243708_
                                           _e235941236106_
                                           _hd235940236109_
                                           _tl235939236111_))
                                      (___match243707243708_
                                       _e235941236106_
                                       _hd235940236109_
                                       _tl235939236111_))
                                  (___match243707243708_
                                   _e235941236106_
                                   _hd235940236109_
                                   _tl235939236111_))))
                          (___match243707243708_
                           _e235941236106_
                           _hd235940236109_
                           _tl235939236111_))))
                  (___match243707243708_
                   _e235941236106_
                   _hd235940236109_
                   _tl235939236111_))
              (___match243707243708_
               _e235941236106_
               _hd235940236109_
               _tl235939236111_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match243707243708_
                                               _e235941236106_
                                               _hd235940236109_
                                               _tl235939236111_))
                                          (___match243707243708_
                                           _e235941236106_
                                           _hd235940236109_
                                           _tl235939236111_))
                                      (___match243707243708_
                                       _e235941236106_
                                       _hd235940236109_
                                       _tl235939236111_))))
                              (___match243707243708_
                               _e235941236106_
                               _hd235940236109_
                               _tl235939236111_))))
                      (___match243707243708_
                       _e235941236106_
                       _hd235940236109_
                       _tl235939236111_))
                  (___match243707243708_
                   _e235941236106_
                   _hd235940236109_
                   _tl235939236111_))
              (___match243707243708_
               _e235941236106_
               _hd235940236109_
               _tl235939236111_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match243707243708_
                                               _e235941236106_
                                               _hd235940236109_
                                               _tl235939236111_))))
                                      (let ((_-hash-ref235995236379_
                                             (reverse _-hash-ref235991236258_))
                                            (_-xkwvar235994236377_
                                             (reverse _-xkwvar235990236256_))
                                            (_key235993236375_
                                             (reverse _key235989236254_))
                                            (_-absent-value235992236373_
                                             (reverse _-absent-value235988236252_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl235948236135_))
                                            (let ((_L236382_ _hd236003236242_)
                                                  (_L236383_
                                                   _-absent-value235992236373_)
                                                  (_L236384_ _key235993236375_)
                                                  (_L236385_
                                                   _-xkwvar235994236377_)
                                                  (_L236386_
                                                   _-hash-ref235995236379_)
                                                  (_L236387_ _hd235979236213_)
                                                  (_L236388_ _hd235970236189_)
                                                  (_L236389_ _hd235961236165_)
                                                  (_L236390_ _tl235945236127_)
                                                  (_L236391_ _hd235946236125_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L236391_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L236390_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L236389_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L236391_
                                                          _L236387_))
                                                       (let ((__tmp245122
                                                              (let ((__tmp245123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g236444236447_ _g236445236449_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g236444236447_ _g236445236449_)))))
                        (declare (not safe))
                        (foldr1 __tmp245123 '() _L236384_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp245122))
               (let ((__tmp245121
                      (lambda (_g236451236453_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g236451236453_
                           'hash-ref))))
                     (__tmp245119
                      (let ((__tmp245120
                             (lambda (_g236455236458_ _g236456236460_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g236455236458_ _g236456236460_)))))
                        (declare (not safe))
                        (foldr1 __tmp245120 '() _L236386_))))
                 (declare (not safe))
                 (andmap1 __tmp245121 __tmp245119))
               (let ((__tmp245118
                      (lambda (_g236462236464_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g236462236464_
                           'absent-value))))
                     (__tmp245116
                      (let ((__tmp245117
                             (lambda (_g236466236469_ _g236467236471_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g236466236469_ _g236467236471_)))))
                        (declare (not safe))
                        (foldr1 __tmp245117 '() _L236383_))))
                 (declare (not safe))
                 (andmap1 __tmp245118 __tmp245116))
               (let ((__tmp245115
                      (lambda (_g236473236475_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g236473236475_ _L236391_))))
                     (__tmp245113
                      (let ((__tmp245114
                             (lambda (_g236477236480_ _g236478236482_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g236477236480_ _g236478236482_)))))
                        (declare (not safe))
                        (foldr1 __tmp245114 '() _L236385_))))
                 (declare (not safe))
                 (andmap1 __tmp245115 __tmp245113)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243394243395_
                                                   _L236382_
                                                   _L236383_
                                                   _L236384_
                                                   _L236385_
                                                   _L236386_
                                                   _L236387_
                                                   _L236388_
                                                   _L236389_
                                                   _L236390_
                                                   _L236391_)
                                                  (___match243707243708_
                                                   _e235941236106_
                                                   _hd235940236109_
                                                   _tl235939236111_)))
                                            (___match243707243708_
                                             _e235941236106_
                                             _hd235940236109_
                                             _tl235939236111_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop235984236247_
                           _target235981236218_
                           '()
                           '()
                           '()
                           '())))))
                   (___match243573243574_
                    (lambda (_e235941236106_
                             _hd235940236109_
                             _tl235939236111_
                             _e235944236114_
                             _hd235943236117_
                             _tl235942236119_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235943236117_))
                          (let ((_e235947236122_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235943236117_))))
                            (let ((_tl235945236127_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235947236122_)))
                                  (_hd235946236125_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235947236122_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235942236119_))
                                  (let ((_e235950236130_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235942236119_))))
                                    (let ((_tl235948236135_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235950236130_)))
                                          (_hd235949236133_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235950236130_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd235949236133_))
                                          (let ((_e235953236138_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd235949236133_))))
                                            (let ((_tl235951236143_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235953236138_)))
                                                  (_hd235952236141_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235953236138_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd235952236141_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd235952236141_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl235951236143_))
                                                          (let ((_e235956236146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl235951236143_))))
                    (let ((_tl235954236151_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235956236146_)))
                          (_hd235955236149_
                           (let ()
                             (declare (not safe))
                             (##car _e235956236146_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235955236149_))
                          (let ((_e235959236154_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235955236149_))))
                            (let ((_tl235957236159_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235959236154_)))
                                  (_hd235958236157_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235959236154_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd235958236157_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd235958236157_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235957236159_))
                                          (let ((_e235962236162_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235957236159_))))
                                            (let ((_tl235960236167_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235962236162_)))
                                                  (_hd235961236165_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235962236162_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235960236167_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl235954236151_))
                                                      (let ((_e235965236170_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl235954236151_))))
                (let ((_tl235963236175_
                       (let () (declare (not safe)) (##cdr _e235965236170_)))
                      (_hd235964236173_
                       (let () (declare (not safe)) (##car _e235965236170_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd235964236173_))
                      (let ((_e235968236178_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd235964236173_))))
                        (let ((_tl235966236183_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235968236178_)))
                              (_hd235967236181_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235968236178_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd235967236181_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd235967236181_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235966236183_))
                                      (let ((_e235971236186_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235966236183_))))
                                        (let ((_tl235969236191_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235971236186_)))
                                              (_hd235970236189_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235971236186_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235969236191_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235963236175_))
                                                  (let ((_e235974236194_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235963236175_))))
                                                    (let ((_tl235972236199_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235974236194_)))
                                                          (_hd235973236197_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235974236194_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd235973236197_))
                                                          (let ((_e235977236202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd235973236197_))))
                    (let ((_tl235975236207_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235977236202_)))
                          (_hd235976236205_
                           (let ()
                             (declare (not safe))
                             (##car _e235977236202_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd235976236205_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd235976236205_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235975236207_))
                                  (let ((_e235980236210_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235975236207_))))
                                    (let ((_tl235978236215_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235980236210_)))
                                          (_hd235979236213_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235980236210_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235978236215_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235972236199_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl235972236199_))
                                                        '1)
                                                  (let ((___splice243396243397_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235972236199_
                                                            '1))))
                                                    (let ((_tl235983236220_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243396243397_
                                                              '1)))
                                                          (_target235981236218_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243396243397_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl235983236220_))
                                                          (let ((_e235998236223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl235983236220_))))
                    (let ((_tl235996236228_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235998236223_)))
                          (_hd235997236226_
                           (let ()
                             (declare (not safe))
                             (##car _e235998236223_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235997236226_))
                          (let ((_e236001236231_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235997236226_))))
                            (let ((_tl235999236236_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236001236231_)))
                                  (_hd236000236234_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236001236231_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd236000236234_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd236000236234_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235999236236_))
                                          (let ((_e236004236239_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235999236236_))))
                                            (let ((_tl236002236244_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236004236239_)))
                                                  (_hd236003236242_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236004236239_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236002236244_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235996236228_))
                                                      (___match243701243702_
                                                       _e235941236106_
                                                       _hd235940236109_
                                                       _tl235939236111_
                                                       _e235944236114_
                                                       _hd235943236117_
                                                       _tl235942236119_
                                                       _e235947236122_
                                                       _hd235946236125_
                                                       _tl235945236127_
                                                       _e235950236130_
                                                       _hd235949236133_
                                                       _tl235948236135_
                                                       _e235953236138_
                                                       _hd235952236141_
                                                       _tl235951236143_
                                                       _e235956236146_
                                                       _hd235955236149_
                                                       _tl235954236151_
                                                       _e235959236154_
                                                       _hd235958236157_
                                                       _tl235957236159_
                                                       _e235962236162_
                                                       _hd235961236165_
                                                       _tl235960236167_
                                                       _e235965236170_
                                                       _hd235964236173_
                                                       _tl235963236175_
                                                       _e235968236178_
                                                       _hd235967236181_
                                                       _tl235966236183_
                                                       _e235971236186_
                                                       _hd235970236189_
                                                       _tl235969236191_
                                                       _e235974236194_
                                                       _hd235973236197_
                                                       _tl235972236199_
                                                       _e235977236202_
                                                       _hd235976236205_
                                                       _tl235975236207_
                                                       _e235980236210_
                                                       _hd235979236213_
                                                       _tl235978236215_
                                                       ___splice243396243397_
                                                       _target235981236218_
                                                       _tl235983236220_
                                                       _e235998236223_
                                                       _hd235997236226_
                                                       _tl235996236228_
                                                       _e236001236231_
                                                       _hd236000236234_
                                                       _tl235999236236_
                                                       _e236004236239_
                                                       _hd236003236242_
                                                       _tl236002236244_)
                                                      (___match243707243708_
                                                       _e235941236106_
                                                       _hd235940236109_
                                                       _tl235939236111_))
                                                  (___match243707243708_
                                                   _e235941236106_
                                                   _hd235940236109_
                                                   _tl235939236111_))))
                                          (___match243707243708_
                                           _e235941236106_
                                           _hd235940236109_
                                           _tl235939236111_))
                                      (___match243707243708_
                                       _e235941236106_
                                       _hd235940236109_
                                       _tl235939236111_))
                                  (___match243707243708_
                                   _e235941236106_
                                   _hd235940236109_
                                   _tl235939236111_))))
                          (___match243707243708_
                           _e235941236106_
                           _hd235940236109_
                           _tl235939236111_))))
                  (___match243707243708_
                   _e235941236106_
                   _hd235940236109_
                   _tl235939236111_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243707243708_
                                                   _e235941236106_
                                                   _hd235940236109_
                                                   _tl235939236111_))
                                              (___match243707243708_
                                               _e235941236106_
                                               _hd235940236109_
                                               _tl235939236111_))
                                          (___match243707243708_
                                           _e235941236106_
                                           _hd235940236109_
                                           _tl235939236111_))))
                                  (___match243707243708_
                                   _e235941236106_
                                   _hd235940236109_
                                   _tl235939236111_))
                              (___match243707243708_
                               _e235941236106_
                               _hd235940236109_
                               _tl235939236111_))
                          (___match243707243708_
                           _e235941236106_
                           _hd235940236109_
                           _tl235939236111_))))
                  (___match243707243708_
                   _e235941236106_
                   _hd235940236109_
                   _tl235939236111_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243707243708_
                                                   _e235941236106_
                                                   _hd235940236109_
                                                   _tl235939236111_))
                                              (___match243707243708_
                                               _e235941236106_
                                               _hd235940236109_
                                               _tl235939236111_))))
                                      (___match243707243708_
                                       _e235941236106_
                                       _hd235940236109_
                                       _tl235939236111_))
                                  (___match243707243708_
                                   _e235941236106_
                                   _hd235940236109_
                                   _tl235939236111_))
                              (___match243707243708_
                               _e235941236106_
                               _hd235940236109_
                               _tl235939236111_))))
                      (___match243707243708_
                       _e235941236106_
                       _hd235940236109_
                       _tl235939236111_))))
              (___match243707243708_
               _e235941236106_
               _hd235940236109_
               _tl235939236111_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243707243708_
                                                   _e235941236106_
                                                   _hd235940236109_
                                                   _tl235939236111_))))
                                          (___match243707243708_
                                           _e235941236106_
                                           _hd235940236109_
                                           _tl235939236111_))
                                      (___match243707243708_
                                       _e235941236106_
                                       _hd235940236109_
                                       _tl235939236111_))
                                  (___match243707243708_
                                   _e235941236106_
                                   _hd235940236109_
                                   _tl235939236111_))))
                          (___match243707243708_
                           _e235941236106_
                           _hd235940236109_
                           _tl235939236111_))))
                  (___match243707243708_
                   _e235941236106_
                   _hd235940236109_
                   _tl235939236111_))
              (___match243707243708_
               _e235941236106_
               _hd235940236109_
               _tl235939236111_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243707243708_
                                                   _e235941236106_
                                                   _hd235940236109_
                                                   _tl235939236111_))))
                                          (___match243707243708_
                                           _e235941236106_
                                           _hd235940236109_
                                           _tl235939236111_))))
                                  (___match243707243708_
                                   _e235941236106_
                                   _hd235940236109_
                                   _tl235939236111_))))
                          (___match243707243708_
                           _e235941236106_
                           _hd235940236109_
                           _tl235939236111_))))
                   (___match243561243562_
                    (lambda (_e235874236497_
                             _hd235873236500_
                             _tl235872236502_
                             _e235877236505_
                             _hd235876236508_
                             _tl235875236510_
                             _e235880236513_
                             _hd235879236516_
                             _tl235878236518_
                             _e235883236521_
                             _hd235882236524_
                             _tl235881236526_
                             _e235886236529_
                             _hd235885236532_
                             _tl235884236534_
                             _e235889236537_
                             _hd235888236540_
                             _tl235887236542_
                             _e235892236545_
                             _hd235891236548_
                             _tl235890236550_
                             _e235895236553_
                             _hd235894236556_
                             _tl235893236558_
                             _e235898236561_
                             _hd235897236564_
                             _tl235896236566_
                             _e235901236569_
                             _hd235900236572_
                             _tl235899236574_
                             _e235904236577_
                             _hd235903236580_
                             _tl235902236582_
                             _e235907236585_
                             _hd235906236588_
                             _tl235905236590_
                             _e235910236593_
                             _hd235909236596_
                             _tl235908236598_
                             _e235913236601_
                             _hd235912236604_
                             _tl235911236606_
                             _e235916236609_
                             _hd235915236612_
                             _tl235914236614_
                             _e235919236617_
                             _hd235918236620_
                             _tl235917236622_
                             _e235922236625_
                             _hd235921236628_
                             _tl235920236630_
                             _e235925236633_
                             _hd235924236636_
                             _tl235923236638_
                             _e235928236641_
                             _hd235927236644_
                             _tl235926236646_)
                      (let ((_L236649_ _hd235927236644_)
                            (_L236650_ _hd235918236620_)
                            (_L236651_ _hd235909236596_)
                            (_L236652_ _hd235900236572_)
                            (_L236653_ _hd235891236548_)
                            (_L236654_ _hd235876236508_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L236654_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L236653_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L236652_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L236654_ _L236649_)))
                            (___kont243392243393_
                             _L236649_
                             _L236650_
                             _L236651_
                             _L236652_
                             _L236653_
                             _L236654_)
                            (___match243573243574_
                             _e235874236497_
                             _hd235873236500_
                             _tl235872236502_
                             _e235877236505_
                             _hd235876236508_
                             _tl235875236510_)))))
                   (___match243415243416_
                    (lambda (_e235874236497_ _hd235873236500_ _tl235872236502_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl235872236502_))
                          (let ((_e235877236505_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl235872236502_))))
                            (let ((_tl235875236510_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235877236505_)))
                                  (_hd235876236508_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235877236505_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235875236510_))
                                  (let ((_e235880236513_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235875236510_))))
                                    (let ((_tl235878236518_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235880236513_)))
                                          (_hd235879236516_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235880236513_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd235879236516_))
                                          (let ((_e235883236521_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd235879236516_))))
                                            (let ((_tl235881236526_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235883236521_)))
                                                  (_hd235882236524_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235883236521_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd235882236524_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd235882236524_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl235881236526_))
                                                          (let ((_e235886236529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl235881236526_))))
                    (let ((_tl235884236534_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235886236529_)))
                          (_hd235885236532_
                           (let ()
                             (declare (not safe))
                             (##car _e235886236529_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235885236532_))
                          (let ((_e235889236537_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235885236532_))))
                            (let ((_tl235887236542_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235889236537_)))
                                  (_hd235888236540_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235889236537_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd235888236540_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd235888236540_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235887236542_))
                                          (let ((_e235892236545_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235887236542_))))
                                            (let ((_tl235890236550_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235892236545_)))
                                                  (_hd235891236548_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235892236545_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235890236550_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl235884236534_))
                                                      (let ((_e235895236553_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl235884236534_))))
                (let ((_tl235893236558_
                       (let () (declare (not safe)) (##cdr _e235895236553_)))
                      (_hd235894236556_
                       (let () (declare (not safe)) (##car _e235895236553_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd235894236556_))
                      (let ((_e235898236561_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd235894236556_))))
                        (let ((_tl235896236566_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235898236561_)))
                              (_hd235897236564_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235898236561_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd235897236564_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd235897236564_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235896236566_))
                                      (let ((_e235901236569_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235896236566_))))
                                        (let ((_tl235899236574_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235901236569_)))
                                              (_hd235900236572_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235901236569_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235899236574_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235893236558_))
                                                  (let ((_e235904236577_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235893236558_))))
                                                    (let ((_tl235902236582_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235904236577_)))
                                                          (_hd235903236580_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235904236577_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd235903236580_))
                                                          (let ((_e235907236585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd235903236580_))))
                    (let ((_tl235905236590_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235907236585_)))
                          (_hd235906236588_
                           (let ()
                             (declare (not safe))
                             (##car _e235907236585_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd235906236588_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd235906236588_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235905236590_))
                                  (let ((_e235910236593_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235905236590_))))
                                    (let ((_tl235908236598_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235910236593_)))
                                          (_hd235909236596_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235910236593_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235908236598_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235902236582_))
                                              (let ((_e235913236601_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235902236582_))))
                                                (let ((_tl235911236606_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235913236601_)))
                                                      (_hd235912236604_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235913236601_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd235912236604_))
                                                      (let ((_e235916236609_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd235912236604_))))
                (let ((_tl235914236614_
                       (let () (declare (not safe)) (##cdr _e235916236609_)))
                      (_hd235915236612_
                       (let () (declare (not safe)) (##car _e235916236609_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd235915236612_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd235915236612_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235914236614_))
                              (let ((_e235919236617_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235914236614_))))
                                (let ((_tl235917236622_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235919236617_)))
                                      (_hd235918236620_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235919236617_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235917236622_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235911236606_))
                                          (let ((_e235922236625_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235911236606_))))
                                            (let ((_tl235920236630_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235922236625_)))
                                                  (_hd235921236628_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235922236625_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd235921236628_))
                                                  (let ((_e235925236633_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd235921236628_))))
                                                    (let ((_tl235923236638_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235925236633_)))
                                                          (_hd235924236636_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235925236633_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd235924236636_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd235924236636_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl235923236638_))
                          (let ((_e235928236641_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl235923236638_))))
                            (let ((_tl235926236646_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235928236641_)))
                                  (_hd235927236644_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235928236641_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl235926236646_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235920236630_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235878236518_))
                                          (___match243561243562_
                                           _e235874236497_
                                           _hd235873236500_
                                           _tl235872236502_
                                           _e235877236505_
                                           _hd235876236508_
                                           _tl235875236510_
                                           _e235880236513_
                                           _hd235879236516_
                                           _tl235878236518_
                                           _e235883236521_
                                           _hd235882236524_
                                           _tl235881236526_
                                           _e235886236529_
                                           _hd235885236532_
                                           _tl235884236534_
                                           _e235889236537_
                                           _hd235888236540_
                                           _tl235887236542_
                                           _e235892236545_
                                           _hd235891236548_
                                           _tl235890236550_
                                           _e235895236553_
                                           _hd235894236556_
                                           _tl235893236558_
                                           _e235898236561_
                                           _hd235897236564_
                                           _tl235896236566_
                                           _e235901236569_
                                           _hd235900236572_
                                           _tl235899236574_
                                           _e235904236577_
                                           _hd235903236580_
                                           _tl235902236582_
                                           _e235907236585_
                                           _hd235906236588_
                                           _tl235905236590_
                                           _e235910236593_
                                           _hd235909236596_
                                           _tl235908236598_
                                           _e235913236601_
                                           _hd235912236604_
                                           _tl235911236606_
                                           _e235916236609_
                                           _hd235915236612_
                                           _tl235914236614_
                                           _e235919236617_
                                           _hd235918236620_
                                           _tl235917236622_
                                           _e235922236625_
                                           _hd235921236628_
                                           _tl235920236630_
                                           _e235925236633_
                                           _hd235924236636_
                                           _tl235923236638_
                                           _e235928236641_
                                           _hd235927236644_
                                           _tl235926236646_)
                                          (___match243573243574_
                                           _e235874236497_
                                           _hd235873236500_
                                           _tl235872236502_
                                           _e235877236505_
                                           _hd235876236508_
                                           _tl235875236510_))
                                      (___match243573243574_
                                       _e235874236497_
                                       _hd235873236500_
                                       _tl235872236502_
                                       _e235877236505_
                                       _hd235876236508_
                                       _tl235875236510_))
                                  (___match243573243574_
                                   _e235874236497_
                                   _hd235873236500_
                                   _tl235872236502_
                                   _e235877236505_
                                   _hd235876236508_
                                   _tl235875236510_))))
                          (___match243573243574_
                           _e235874236497_
                           _hd235873236500_
                           _tl235872236502_
                           _e235877236505_
                           _hd235876236508_
                           _tl235875236510_))
                      (___match243573243574_
                       _e235874236497_
                       _hd235873236500_
                       _tl235872236502_
                       _e235877236505_
                       _hd235876236508_
                       _tl235875236510_))
                  (___match243573243574_
                   _e235874236497_
                   _hd235873236500_
                   _tl235872236502_
                   _e235877236505_
                   _hd235876236508_
                   _tl235875236510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243573243574_
                                                   _e235874236497_
                                                   _hd235873236500_
                                                   _tl235872236502_
                                                   _e235877236505_
                                                   _hd235876236508_
                                                   _tl235875236510_))))
                                          (___match243573243574_
                                           _e235874236497_
                                           _hd235873236500_
                                           _tl235872236502_
                                           _e235877236505_
                                           _hd235876236508_
                                           _tl235875236510_))
                                      (___match243573243574_
                                       _e235874236497_
                                       _hd235873236500_
                                       _tl235872236502_
                                       _e235877236505_
                                       _hd235876236508_
                                       _tl235875236510_))))
                              (___match243573243574_
                               _e235874236497_
                               _hd235873236500_
                               _tl235872236502_
                               _e235877236505_
                               _hd235876236508_
                               _tl235875236510_))
                          (___match243573243574_
                           _e235874236497_
                           _hd235873236500_
                           _tl235872236502_
                           _e235877236505_
                           _hd235876236508_
                           _tl235875236510_))
                      (___match243573243574_
                       _e235874236497_
                       _hd235873236500_
                       _tl235872236502_
                       _e235877236505_
                       _hd235876236508_
                       _tl235875236510_))))
              (___match243573243574_
               _e235874236497_
               _hd235873236500_
               _tl235872236502_
               _e235877236505_
               _hd235876236508_
               _tl235875236510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match243573243574_
                                               _e235874236497_
                                               _hd235873236500_
                                               _tl235872236502_
                                               _e235877236505_
                                               _hd235876236508_
                                               _tl235875236510_))
                                          (___match243573243574_
                                           _e235874236497_
                                           _hd235873236500_
                                           _tl235872236502_
                                           _e235877236505_
                                           _hd235876236508_
                                           _tl235875236510_))))
                                  (___match243573243574_
                                   _e235874236497_
                                   _hd235873236500_
                                   _tl235872236502_
                                   _e235877236505_
                                   _hd235876236508_
                                   _tl235875236510_))
                              (___match243573243574_
                               _e235874236497_
                               _hd235873236500_
                               _tl235872236502_
                               _e235877236505_
                               _hd235876236508_
                               _tl235875236510_))
                          (___match243573243574_
                           _e235874236497_
                           _hd235873236500_
                           _tl235872236502_
                           _e235877236505_
                           _hd235876236508_
                           _tl235875236510_))))
                  (___match243573243574_
                   _e235874236497_
                   _hd235873236500_
                   _tl235872236502_
                   _e235877236505_
                   _hd235876236508_
                   _tl235875236510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243573243574_
                                                   _e235874236497_
                                                   _hd235873236500_
                                                   _tl235872236502_
                                                   _e235877236505_
                                                   _hd235876236508_
                                                   _tl235875236510_))
                                              (___match243573243574_
                                               _e235874236497_
                                               _hd235873236500_
                                               _tl235872236502_
                                               _e235877236505_
                                               _hd235876236508_
                                               _tl235875236510_))))
                                      (___match243573243574_
                                       _e235874236497_
                                       _hd235873236500_
                                       _tl235872236502_
                                       _e235877236505_
                                       _hd235876236508_
                                       _tl235875236510_))
                                  (___match243573243574_
                                   _e235874236497_
                                   _hd235873236500_
                                   _tl235872236502_
                                   _e235877236505_
                                   _hd235876236508_
                                   _tl235875236510_))
                              (___match243573243574_
                               _e235874236497_
                               _hd235873236500_
                               _tl235872236502_
                               _e235877236505_
                               _hd235876236508_
                               _tl235875236510_))))
                      (___match243573243574_
                       _e235874236497_
                       _hd235873236500_
                       _tl235872236502_
                       _e235877236505_
                       _hd235876236508_
                       _tl235875236510_))))
              (___match243573243574_
               _e235874236497_
               _hd235873236500_
               _tl235872236502_
               _e235877236505_
               _hd235876236508_
               _tl235875236510_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243573243574_
                                                   _e235874236497_
                                                   _hd235873236500_
                                                   _tl235872236502_
                                                   _e235877236505_
                                                   _hd235876236508_
                                                   _tl235875236510_))))
                                          (___match243573243574_
                                           _e235874236497_
                                           _hd235873236500_
                                           _tl235872236502_
                                           _e235877236505_
                                           _hd235876236508_
                                           _tl235875236510_))
                                      (___match243573243574_
                                       _e235874236497_
                                       _hd235873236500_
                                       _tl235872236502_
                                       _e235877236505_
                                       _hd235876236508_
                                       _tl235875236510_))
                                  (___match243573243574_
                                   _e235874236497_
                                   _hd235873236500_
                                   _tl235872236502_
                                   _e235877236505_
                                   _hd235876236508_
                                   _tl235875236510_))))
                          (___match243573243574_
                           _e235874236497_
                           _hd235873236500_
                           _tl235872236502_
                           _e235877236505_
                           _hd235876236508_
                           _tl235875236510_))))
                  (___match243573243574_
                   _e235874236497_
                   _hd235873236500_
                   _tl235872236502_
                   _e235877236505_
                   _hd235876236508_
                   _tl235875236510_))
              (___match243573243574_
               _e235874236497_
               _hd235873236500_
               _tl235872236502_
               _e235877236505_
               _hd235876236508_
               _tl235875236510_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243573243574_
                                                   _e235874236497_
                                                   _hd235873236500_
                                                   _tl235872236502_
                                                   _e235877236505_
                                                   _hd235876236508_
                                                   _tl235875236510_))))
                                          (___match243573243574_
                                           _e235874236497_
                                           _hd235873236500_
                                           _tl235872236502_
                                           _e235877236505_
                                           _hd235876236508_
                                           _tl235875236510_))))
                                  (___match243573243574_
                                   _e235874236497_
                                   _hd235873236500_
                                   _tl235872236502_
                                   _e235877236505_
                                   _hd235876236508_
                                   _tl235875236510_))))
                          (___match243707243708_
                           _e235874236497_
                           _hd235873236500_
                           _tl235872236502_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243388243389_))
                  (let ((_e235865236714_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243388243389_))))
                    (let ((_tl235863236719_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235865236714_)))
                          (_hd235864236717_
                           (let ()
                             (declare (not safe))
                             (##car _e235865236714_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L236722_ _tl235863236719_))
                            (___kont243390243391_ _L236722_))
                          (___match243415243416_
                           _e235865236714_
                           _hd235864236717_
                           _tl235863236719_))))
                  (let () (declare (not safe)) (_g235860236056_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx235809_)
        (letrec ((_clause-e235811_
                  (lambda (_form235852_)
                    (let ((__obj245061
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
                       __obj245061
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form235852_))
                       (if (let ((__tmp245128
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp245128))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form235852_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form235852_))
                               '#f)
                           '#f))
                      __obj245061))))
          (let* ((_g235813235823_
                  (lambda (_g235814235820_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g235814235820_))))
                 (_g235812235849_
                  (lambda (_g235814235826_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g235814235826_))
                        (let ((_e235818235828_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g235814235826_))))
                          (let ((_hd235817235831_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e235818235828_)))
                                (_tl235816235833_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e235818235828_))))
                            ((lambda (_L235836_)
                               (let ((_clauses235847_
                                      (map _clause-e235811_ _L235836_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses235847_)))
                             _tl235816235833_)))
                        (let ()
                          (declare (not safe))
                          (_g235813235823_ _g235814235826_))))))
            (declare (not safe))
            (_g235812235849_ _stx235809_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx235741_)
        (let* ((_g235743235760_
                (lambda (_g235744235757_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235744235757_))))
               (_g235742235806_
                (lambda (_g235744235763_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235744235763_))
                      (let ((_e235749235765_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235744235763_))))
                        (let ((_hd235748235768_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235749235765_)))
                              (_tl235747235770_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235749235765_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235747235770_))
                              (let ((_e235752235773_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235747235770_))))
                                (let ((_hd235751235776_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235752235773_)))
                                      (_tl235750235778_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235752235773_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235750235778_))
                                      (let ((_e235755235781_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235750235778_))))
                                        (let ((_hd235754235784_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235755235781_)))
                                              (_tl235753235786_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235755235781_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235753235786_))
                                              ((lambda (_L235789_ _L235790_)
                                                 (let ((__tmp245129
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L235789_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp245129
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd235754235784_
                                               _hd235751235776_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235743235760_
                                                 _g235744235763_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235743235760_ _g235744235763_)))))
                              (let ()
                                (declare (not safe))
                                (_g235743235760_ _g235744235763_)))))
                      (let ()
                        (declare (not safe))
                        (_g235743235760_ _g235744235763_))))))
          (declare (not safe))
          (_g235742235806_ _stx235741_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx235646_)
        (let* ((___stx243716243717_ _stx235646_)
               (_g235649235669_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243716243717_)))))
          (let ((___kont243718243719_
                 (lambda (_L235713_ _L235714_)
                   (let ((_type-e235731235733_
                          (let ((__tmp245130
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L235714_))))
                            (declare (not safe))
                            (table-ref
                             gxc#basic-expression-type-builtin
                             __tmp245130
                             '#f))))
                     (if _type-e235731235733_
                         (let ((_type-e235736_ _type-e235731235733_))
                           (_type-e235736_ _stx235646_ _L235713_))
                         '#f))))
                (___kont243720243721_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx243716243717_))
                (let ((_e235655235681_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx243716243717_))))
                  (let ((_tl235653235686_
                         (let () (declare (not safe)) (##cdr _e235655235681_)))
                        (_hd235654235684_
                         (let ()
                           (declare (not safe))
                           (##car _e235655235681_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl235653235686_))
                        (let ((_e235658235689_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl235653235686_))))
                          (let ((_tl235656235694_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e235658235689_)))
                                (_hd235657235692_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e235658235689_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd235657235692_))
                                (let ((_e235661235697_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd235657235692_))))
                                  (let ((_tl235659235702_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e235661235697_)))
                                        (_hd235660235700_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e235661235697_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd235660235700_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd235660235700_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl235659235702_))
                                                (let ((_e235664235705_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl235659235702_))))
                                                  (let ((_tl235662235710_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e235664235705_)))
                                                        (_hd235663235708_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e235664235705_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl235662235710_))
                                                        (___kont243718243719_
                                                         _tl235656235694_
                                                         _hd235663235708_)
                                                        (___kont243720243721_))))
                                                (___kont243720243721_))
                                            (___kont243720243721_))
                                        (___kont243720243721_))))
                                (___kont243720243721_))))
                        (___kont243720243721_))))
                (___kont243720243721_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx235595_)
        (let* ((_g235597235610_
                (lambda (_g235598235607_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235598235607_))))
               (_g235596235643_
                (lambda (_g235598235613_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235598235613_))
                      (let ((_e235602235615_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235598235613_))))
                        (let ((_hd235601235618_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235602235615_)))
                              (_tl235600235620_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235602235615_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235600235620_))
                              (let ((_e235605235623_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235600235620_))))
                                (let ((_hd235604235626_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235605235623_)))
                                      (_tl235603235628_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235605235623_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235603235628_))
                                      ((lambda (_L235631_)
                                         (let ((__tmp245131
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L235631_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp245131)))
                                       _hd235604235626_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235597235610_ _g235598235613_)))))
                              (let ()
                                (declare (not safe))
                                (_g235597235610_ _g235598235613_)))))
                      (let ()
                        (declare (not safe))
                        (_g235597235610_ _g235598235613_))))))
          (declare (not safe))
          (_g235596235643_ _stx235595_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form234829_)
        (let* ((___stx243754243755_ _form234829_)
               (_g234834234991_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243754243755_)))))
          (let ((___kont243756243757_
                 (lambda (_L235515_ _L235516_ _L235517_) '#t))
                (___kont243762243763_
                 (lambda (_L235303_
                          _L235304_
                          _L235305_
                          _L235306_
                          _L235307_
                          _L235308_)
                   '#t))
                (___kont243768243769_
                 (lambda (_L235099_ _L235100_ _L235101_ _L235102_) '#t))
                (___kont243770243771_ (lambda () '#f)))
            (let* ((___match243895243896_
                    (lambda (_e234953235003_
                             _hd234952235006_
                             _tl234951235008_
                             _e234956235011_
                             _hd234955235014_
                             _tl234954235016_
                             _e234959235019_
                             _hd234958235022_
                             _tl234957235024_
                             _e234962235027_
                             _hd234961235030_
                             _tl234960235032_
                             _e234965235035_
                             _hd234964235038_
                             _tl234963235040_
                             _e234968235043_
                             _hd234967235046_
                             _tl234966235048_
                             _e234971235051_
                             _hd234970235054_
                             _tl234969235056_
                             _e234974235059_
                             _hd234973235062_
                             _tl234972235064_
                             _e234977235067_
                             _hd234976235070_
                             _tl234975235072_
                             _e234980235075_
                             _hd234979235078_
                             _tl234978235080_
                             _e234983235083_
                             _hd234982235086_
                             _tl234981235088_
                             _e234986235091_
                             _hd234985235094_
                             _tl234984235096_)
                      (let ((_L235099_ _hd234985235094_)
                            (_L235100_ _hd234976235070_)
                            (_L235101_ _hd234967235046_)
                            (_L235102_ _hd234952235006_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L235102_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L235101_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L235102_ _L235099_))
                                 (let ((__tmp245132
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L235100_
                                           _L235102_))))
                                   (declare (not safe))
                                   (not __tmp245132)))
                            (___kont243768243769_
                             _L235099_
                             _L235100_
                             _L235101_
                             _L235102_)
                            (___kont243770243771_)))))
                   (___match243867243868_
                    (lambda (_e234953235003_
                             _hd234952235006_
                             _tl234951235008_
                             _e234956235011_
                             _hd234955235014_
                             _tl234954235016_
                             _e234959235019_
                             _hd234958235022_
                             _tl234957235024_
                             _e234962235027_
                             _hd234961235030_
                             _tl234960235032_
                             _e234965235035_
                             _hd234964235038_
                             _tl234963235040_
                             _e234968235043_
                             _hd234967235046_
                             _tl234966235048_
                             _e234971235051_
                             _hd234970235054_
                             _tl234969235056_
                             _e234974235059_
                             _hd234973235062_
                             _tl234972235064_
                             _e234977235067_
                             _hd234976235070_
                             _tl234975235072_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234969235056_))
                          (let ((_e234980235075_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234969235056_))))
                            (let ((_tl234978235080_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234980235075_)))
                                  (_hd234979235078_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234980235075_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd234979235078_))
                                  (let ((_e234983235083_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd234979235078_))))
                                    (let ((_tl234981235088_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234983235083_)))
                                          (_hd234982235086_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234983235083_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd234982235086_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd234982235086_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234981235088_))
                                                  (let ((_e234986235091_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234981235088_))))
                                                    (let ((_tl234984235096_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234986235091_)))
                                                          (_hd234985235094_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234986235091_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl234984235096_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl234978235080_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl234954235016_))
                          (___match243895243896_
                           _e234953235003_
                           _hd234952235006_
                           _tl234951235008_
                           _e234956235011_
                           _hd234955235014_
                           _tl234954235016_
                           _e234959235019_
                           _hd234958235022_
                           _tl234957235024_
                           _e234962235027_
                           _hd234961235030_
                           _tl234960235032_
                           _e234965235035_
                           _hd234964235038_
                           _tl234963235040_
                           _e234968235043_
                           _hd234967235046_
                           _tl234966235048_
                           _e234971235051_
                           _hd234970235054_
                           _tl234969235056_
                           _e234974235059_
                           _hd234973235062_
                           _tl234972235064_
                           _e234977235067_
                           _hd234976235070_
                           _tl234975235072_
                           _e234980235075_
                           _hd234979235078_
                           _tl234978235080_
                           _e234983235083_
                           _hd234982235086_
                           _tl234981235088_
                           _e234986235091_
                           _hd234985235094_
                           _tl234984235096_)
                          (___kont243770243771_))
                      (___kont243770243771_))
                  (___kont243770243771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243770243771_))
                                              (___kont243770243771_))
                                          (___kont243770243771_))))
                                  (___kont243770243771_))))
                          (___kont243770243771_))))
                   (___match243797243798_
                    (lambda (_e234889235143_
                             _hd234888235146_
                             _tl234887235148_
                             ___splice243764243765_
                             _target234890235151_
                             _tl234892235153_)
                      (letrec ((_loop234893235156_
                                (lambda (_hd234891235159_ _arg234897235161_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234891235159_))
                                      (let ((_e234894235164_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234891235159_))))
                                        (let ((_lp-tl234896235169_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234894235164_)))
                                              (_lp-hd234895235167_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234894235164_))))
                                          (let ((__tmp245147
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234895235167_
                                                         _arg234897235161_))))
                                            (declare (not safe))
                                            (_loop234893235156_
                                             _lp-tl234896235169_
                                             __tmp245147))))
                                      (let ((_arg234898235172_
                                             (reverse _arg234897235161_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl234887235148_))
                                            (let ((_e234901235175_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl234887235148_))))
                                              (let ((_tl234899235180_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e234901235175_)))
                                                    (_hd234900235178_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e234901235175_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd234900235178_))
                                                    (let ((_e234904235183_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd234900235178_))))
                                                      (let ((_tl234902235188_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234904235183_)))
                    (_hd234903235186_
                     (let () (declare (not safe)) (##car _e234904235183_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd234903235186_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd234903235186_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl234902235188_))
                            (let ((_e234907235191_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl234902235188_))))
                              (let ((_tl234905235196_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234907235191_)))
                                    (_hd234906235194_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234907235191_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd234906235194_))
                                    (let ((_e234910235199_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd234906235194_))))
                                      (let ((_tl234908235204_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e234910235199_)))
                                            (_hd234909235202_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e234910235199_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd234909235202_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd234909235202_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl234908235204_))
                                                    (let ((_e234913235207_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl234908235204_))))
                                                      (let ((_tl234911235212_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234913235207_)))
                    (_hd234912235210_
                     (let () (declare (not safe)) (##car _e234913235207_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl234911235212_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl234905235196_))
                        (let ((_e234916235215_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl234905235196_))))
                          (let ((_tl234914235220_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e234916235215_)))
                                (_hd234915235218_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e234916235215_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd234915235218_))
                                (let ((_e234919235223_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd234915235218_))))
                                  (let ((_tl234917235228_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234919235223_)))
                                        (_hd234918235226_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234919235223_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd234918235226_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd234918235226_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl234917235228_))
                                                (let ((_e234922235231_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl234917235228_))))
                                                  (let ((_tl234920235236_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e234922235231_)))
                                                        (_hd234921235234_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e234922235231_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl234920235236_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl234914235220_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl234914235220_))
                              '1)
                        (let ((___splice243766243767_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl234914235220_
                                  '1))))
                          (let ((_tl234925235241_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243766243767_ '1)))
                                (_target234923235239_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243766243767_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl234925235241_))
                                (let ((_e234934235244_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl234925235241_))))
                                  (let ((_tl234932235249_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234934235244_)))
                                        (_hd234933235247_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234934235244_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd234933235247_))
                                        (let ((_e234937235252_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd234933235247_))))
                                          (let ((_tl234935235257_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e234937235252_)))
                                                (_hd234936235255_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e234937235252_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd234936235255_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd234936235255_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl234935235257_))
                                                        (let ((_e234940235260_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl234935235257_))))
                  (let ((_tl234938235265_
                         (let () (declare (not safe)) (##cdr _e234940235260_)))
                        (_hd234939235263_
                         (let ()
                           (declare (not safe))
                           (##car _e234940235260_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl234938235265_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl234932235249_))
                            (letrec ((_loop234926235268_
                                      (lambda (_hd234924235271_
                                               _xarg234930235273_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd234924235271_))
                                            (let ((_e234927235276_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd234924235271_))))
                                              (let ((_lp-tl234929235281_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e234927235276_)))
                                                    (_lp-hd234928235279_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e234927235276_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd234928235279_))
                                                    (let ((_e234943235284_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd234928235279_))))
                                                      (let ((_tl234941235289_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234943235284_)))
                    (_hd234942235287_
                     (let () (declare (not safe)) (##car _e234943235284_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd234942235287_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd234942235287_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl234941235289_))
                            (let ((_e234946235292_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl234941235289_))))
                              (let ((_tl234944235297_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234946235292_)))
                                    (_hd234945235295_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234946235292_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl234944235297_))
                                    (let ((__tmp245146
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd234945235295_
                                                   _xarg234930235273_))))
                                      (declare (not safe))
                                      (_loop234926235268_
                                       _lp-tl234929235281_
                                       __tmp245146))
                                    (___match243867243868_
                                     _e234889235143_
                                     _hd234888235146_
                                     _tl234887235148_
                                     _e234901235175_
                                     _hd234900235178_
                                     _tl234899235180_
                                     _e234904235183_
                                     _hd234903235186_
                                     _tl234902235188_
                                     _e234907235191_
                                     _hd234906235194_
                                     _tl234905235196_
                                     _e234910235199_
                                     _hd234909235202_
                                     _tl234908235204_
                                     _e234913235207_
                                     _hd234912235210_
                                     _tl234911235212_
                                     _e234916235215_
                                     _hd234915235218_
                                     _tl234914235220_
                                     _e234919235223_
                                     _hd234918235226_
                                     _tl234917235228_
                                     _e234922235231_
                                     _hd234921235234_
                                     _tl234920235236_))))
                            (___match243867243868_
                             _e234889235143_
                             _hd234888235146_
                             _tl234887235148_
                             _e234901235175_
                             _hd234900235178_
                             _tl234899235180_
                             _e234904235183_
                             _hd234903235186_
                             _tl234902235188_
                             _e234907235191_
                             _hd234906235194_
                             _tl234905235196_
                             _e234910235199_
                             _hd234909235202_
                             _tl234908235204_
                             _e234913235207_
                             _hd234912235210_
                             _tl234911235212_
                             _e234916235215_
                             _hd234915235218_
                             _tl234914235220_
                             _e234919235223_
                             _hd234918235226_
                             _tl234917235228_
                             _e234922235231_
                             _hd234921235234_
                             _tl234920235236_))
                        (___match243867243868_
                         _e234889235143_
                         _hd234888235146_
                         _tl234887235148_
                         _e234901235175_
                         _hd234900235178_
                         _tl234899235180_
                         _e234904235183_
                         _hd234903235186_
                         _tl234902235188_
                         _e234907235191_
                         _hd234906235194_
                         _tl234905235196_
                         _e234910235199_
                         _hd234909235202_
                         _tl234908235204_
                         _e234913235207_
                         _hd234912235210_
                         _tl234911235212_
                         _e234916235215_
                         _hd234915235218_
                         _tl234914235220_
                         _e234919235223_
                         _hd234918235226_
                         _tl234917235228_
                         _e234922235231_
                         _hd234921235234_
                         _tl234920235236_))
                    (___match243867243868_
                     _e234889235143_
                     _hd234888235146_
                     _tl234887235148_
                     _e234901235175_
                     _hd234900235178_
                     _tl234899235180_
                     _e234904235183_
                     _hd234903235186_
                     _tl234902235188_
                     _e234907235191_
                     _hd234906235194_
                     _tl234905235196_
                     _e234910235199_
                     _hd234909235202_
                     _tl234908235204_
                     _e234913235207_
                     _hd234912235210_
                     _tl234911235212_
                     _e234916235215_
                     _hd234915235218_
                     _tl234914235220_
                     _e234919235223_
                     _hd234918235226_
                     _tl234917235228_
                     _e234922235231_
                     _hd234921235234_
                     _tl234920235236_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243867243868_
                                                     _e234889235143_
                                                     _hd234888235146_
                                                     _tl234887235148_
                                                     _e234901235175_
                                                     _hd234900235178_
                                                     _tl234899235180_
                                                     _e234904235183_
                                                     _hd234903235186_
                                                     _tl234902235188_
                                                     _e234907235191_
                                                     _hd234906235194_
                                                     _tl234905235196_
                                                     _e234910235199_
                                                     _hd234909235202_
                                                     _tl234908235204_
                                                     _e234913235207_
                                                     _hd234912235210_
                                                     _tl234911235212_
                                                     _e234916235215_
                                                     _hd234915235218_
                                                     _tl234914235220_
                                                     _e234919235223_
                                                     _hd234918235226_
                                                     _tl234917235228_
                                                     _e234922235231_
                                                     _hd234921235234_
                                                     _tl234920235236_))))
                                            (let ((_xarg234931235300_
                                                   (reverse _xarg234930235273_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234899235180_))
                                                  (let ((_L235303_
                                                         _hd234939235263_)
                                                        (_L235304_
                                                         _xarg234931235300_)
                                                        (_L235305_
                                                         _hd234921235234_)
                                                        (_L235306_
                                                         _hd234912235210_)
                                                        (_L235307_
                                                         _tl234892235153_)
                                                        (_L235308_
                                                         _arg234898235172_))
                                                    (if (and (let ((__tmp245144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp245145
                                   (lambda (_g235351235354_ _g235352235356_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g235351235354_
                                             _g235352235356_)))))
                              (declare (not safe))
                              (foldr1 __tmp245145 '() _L235308_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp245144))
                     (let () (declare (not safe)) (gx#identifier? _L235307_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L235306_ 'apply))
                     (fx= (length (let ((__tmp245142
                                         (lambda (_g235358235361_
                                                  _g235359235363_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g235358235361_
                                                   _g235359235363_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp245142 '() _L235308_)))
                          (length (let ((__tmp245143
                                         (lambda (_g235365235368_
                                                  _g235366235370_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g235365235368_
                                                   _g235366235370_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp245143 '() _L235304_))))
                     (let ((__tmp245140
                            (let ((__tmp245141
                                   (lambda (_g235372235375_ _g235373235377_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g235372235375_
                                             _g235373235377_)))))
                              (declare (not safe))
                              (foldr1 __tmp245141 '() _L235308_)))
                           (__tmp245138
                            (let ((__tmp245139
                                   (lambda (_g235379235382_ _g235380235384_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g235379235382_
                                             _g235380235384_)))))
                              (declare (not safe))
                              (foldr1 __tmp245139 '() _L235304_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp245140 __tmp245138))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L235307_ _L235303_))
                     (let ((__tmp245133
                            (let ((__tmp245137
                                   (lambda (_g235386235388_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g235386235388_
                                        _L235305_))))
                                  (__tmp245134
                                   (let ((__tmp245136
                                          (lambda (_g235390235393_
                                                   _g235391235395_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g235390235393_
                                                    _g235391235395_))))
                                         (__tmp245135
                                          (let ()
                                            (declare (not safe))
                                            (cons _L235307_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp245136
                                             __tmp245135
                                             _L235308_))))
                              (declare (not safe))
                              (find __tmp245137 __tmp245134))))
                       (declare (not safe))
                       (not __tmp245133)))
                (___kont243762243763_
                 _L235303_
                 _L235304_
                 _L235305_
                 _L235306_
                 _L235307_
                 _L235308_)
                (___match243867243868_
                 _e234889235143_
                 _hd234888235146_
                 _tl234887235148_
                 _e234901235175_
                 _hd234900235178_
                 _tl234899235180_
                 _e234904235183_
                 _hd234903235186_
                 _tl234902235188_
                 _e234907235191_
                 _hd234906235194_
                 _tl234905235196_
                 _e234910235199_
                 _hd234909235202_
                 _tl234908235204_
                 _e234913235207_
                 _hd234912235210_
                 _tl234911235212_
                 _e234916235215_
                 _hd234915235218_
                 _tl234914235220_
                 _e234919235223_
                 _hd234918235226_
                 _tl234917235228_
                 _e234922235231_
                 _hd234921235234_
                 _tl234920235236_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243867243868_
                                                   _e234889235143_
                                                   _hd234888235146_
                                                   _tl234887235148_
                                                   _e234901235175_
                                                   _hd234900235178_
                                                   _tl234899235180_
                                                   _e234904235183_
                                                   _hd234903235186_
                                                   _tl234902235188_
                                                   _e234907235191_
                                                   _hd234906235194_
                                                   _tl234905235196_
                                                   _e234910235199_
                                                   _hd234909235202_
                                                   _tl234908235204_
                                                   _e234913235207_
                                                   _hd234912235210_
                                                   _tl234911235212_
                                                   _e234916235215_
                                                   _hd234915235218_
                                                   _tl234914235220_
                                                   _e234919235223_
                                                   _hd234918235226_
                                                   _tl234917235228_
                                                   _e234922235231_
                                                   _hd234921235234_
                                                   _tl234920235236_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop234926235268_ _target234923235239_ '())))
                            (___match243867243868_
                             _e234889235143_
                             _hd234888235146_
                             _tl234887235148_
                             _e234901235175_
                             _hd234900235178_
                             _tl234899235180_
                             _e234904235183_
                             _hd234903235186_
                             _tl234902235188_
                             _e234907235191_
                             _hd234906235194_
                             _tl234905235196_
                             _e234910235199_
                             _hd234909235202_
                             _tl234908235204_
                             _e234913235207_
                             _hd234912235210_
                             _tl234911235212_
                             _e234916235215_
                             _hd234915235218_
                             _tl234914235220_
                             _e234919235223_
                             _hd234918235226_
                             _tl234917235228_
                             _e234922235231_
                             _hd234921235234_
                             _tl234920235236_))
                        (___match243867243868_
                         _e234889235143_
                         _hd234888235146_
                         _tl234887235148_
                         _e234901235175_
                         _hd234900235178_
                         _tl234899235180_
                         _e234904235183_
                         _hd234903235186_
                         _tl234902235188_
                         _e234907235191_
                         _hd234906235194_
                         _tl234905235196_
                         _e234910235199_
                         _hd234909235202_
                         _tl234908235204_
                         _e234913235207_
                         _hd234912235210_
                         _tl234911235212_
                         _e234916235215_
                         _hd234915235218_
                         _tl234914235220_
                         _e234919235223_
                         _hd234918235226_
                         _tl234917235228_
                         _e234922235231_
                         _hd234921235234_
                         _tl234920235236_))))
                (___match243867243868_
                 _e234889235143_
                 _hd234888235146_
                 _tl234887235148_
                 _e234901235175_
                 _hd234900235178_
                 _tl234899235180_
                 _e234904235183_
                 _hd234903235186_
                 _tl234902235188_
                 _e234907235191_
                 _hd234906235194_
                 _tl234905235196_
                 _e234910235199_
                 _hd234909235202_
                 _tl234908235204_
                 _e234913235207_
                 _hd234912235210_
                 _tl234911235212_
                 _e234916235215_
                 _hd234915235218_
                 _tl234914235220_
                 _e234919235223_
                 _hd234918235226_
                 _tl234917235228_
                 _e234922235231_
                 _hd234921235234_
                 _tl234920235236_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243867243868_
                                                     _e234889235143_
                                                     _hd234888235146_
                                                     _tl234887235148_
                                                     _e234901235175_
                                                     _hd234900235178_
                                                     _tl234899235180_
                                                     _e234904235183_
                                                     _hd234903235186_
                                                     _tl234902235188_
                                                     _e234907235191_
                                                     _hd234906235194_
                                                     _tl234905235196_
                                                     _e234910235199_
                                                     _hd234909235202_
                                                     _tl234908235204_
                                                     _e234913235207_
                                                     _hd234912235210_
                                                     _tl234911235212_
                                                     _e234916235215_
                                                     _hd234915235218_
                                                     _tl234914235220_
                                                     _e234919235223_
                                                     _hd234918235226_
                                                     _tl234917235228_
                                                     _e234922235231_
                                                     _hd234921235234_
                                                     _tl234920235236_))
                                                (___match243867243868_
                                                 _e234889235143_
                                                 _hd234888235146_
                                                 _tl234887235148_
                                                 _e234901235175_
                                                 _hd234900235178_
                                                 _tl234899235180_
                                                 _e234904235183_
                                                 _hd234903235186_
                                                 _tl234902235188_
                                                 _e234907235191_
                                                 _hd234906235194_
                                                 _tl234905235196_
                                                 _e234910235199_
                                                 _hd234909235202_
                                                 _tl234908235204_
                                                 _e234913235207_
                                                 _hd234912235210_
                                                 _tl234911235212_
                                                 _e234916235215_
                                                 _hd234915235218_
                                                 _tl234914235220_
                                                 _e234919235223_
                                                 _hd234918235226_
                                                 _tl234917235228_
                                                 _e234922235231_
                                                 _hd234921235234_
                                                 _tl234920235236_))))
                                        (___match243867243868_
                                         _e234889235143_
                                         _hd234888235146_
                                         _tl234887235148_
                                         _e234901235175_
                                         _hd234900235178_
                                         _tl234899235180_
                                         _e234904235183_
                                         _hd234903235186_
                                         _tl234902235188_
                                         _e234907235191_
                                         _hd234906235194_
                                         _tl234905235196_
                                         _e234910235199_
                                         _hd234909235202_
                                         _tl234908235204_
                                         _e234913235207_
                                         _hd234912235210_
                                         _tl234911235212_
                                         _e234916235215_
                                         _hd234915235218_
                                         _tl234914235220_
                                         _e234919235223_
                                         _hd234918235226_
                                         _tl234917235228_
                                         _e234922235231_
                                         _hd234921235234_
                                         _tl234920235236_))))
                                (___match243867243868_
                                 _e234889235143_
                                 _hd234888235146_
                                 _tl234887235148_
                                 _e234901235175_
                                 _hd234900235178_
                                 _tl234899235180_
                                 _e234904235183_
                                 _hd234903235186_
                                 _tl234902235188_
                                 _e234907235191_
                                 _hd234906235194_
                                 _tl234905235196_
                                 _e234910235199_
                                 _hd234909235202_
                                 _tl234908235204_
                                 _e234913235207_
                                 _hd234912235210_
                                 _tl234911235212_
                                 _e234916235215_
                                 _hd234915235218_
                                 _tl234914235220_
                                 _e234919235223_
                                 _hd234918235226_
                                 _tl234917235228_
                                 _e234922235231_
                                 _hd234921235234_
                                 _tl234920235236_))))
                        (___match243867243868_
                         _e234889235143_
                         _hd234888235146_
                         _tl234887235148_
                         _e234901235175_
                         _hd234900235178_
                         _tl234899235180_
                         _e234904235183_
                         _hd234903235186_
                         _tl234902235188_
                         _e234907235191_
                         _hd234906235194_
                         _tl234905235196_
                         _e234910235199_
                         _hd234909235202_
                         _tl234908235204_
                         _e234913235207_
                         _hd234912235210_
                         _tl234911235212_
                         _e234916235215_
                         _hd234915235218_
                         _tl234914235220_
                         _e234919235223_
                         _hd234918235226_
                         _tl234917235228_
                         _e234922235231_
                         _hd234921235234_
                         _tl234920235236_))
                    (___match243867243868_
                     _e234889235143_
                     _hd234888235146_
                     _tl234887235148_
                     _e234901235175_
                     _hd234900235178_
                     _tl234899235180_
                     _e234904235183_
                     _hd234903235186_
                     _tl234902235188_
                     _e234907235191_
                     _hd234906235194_
                     _tl234905235196_
                     _e234910235199_
                     _hd234909235202_
                     _tl234908235204_
                     _e234913235207_
                     _hd234912235210_
                     _tl234911235212_
                     _e234916235215_
                     _hd234915235218_
                     _tl234914235220_
                     _e234919235223_
                     _hd234918235226_
                     _tl234917235228_
                     _e234922235231_
                     _hd234921235234_
                     _tl234920235236_))
                (___kont243770243771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont243770243771_))
                                            (___kont243770243771_))
                                        (___kont243770243771_))))
                                (___kont243770243771_))))
                        (___kont243770243771_))
                    (___kont243770243771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243770243771_))
                                                (___kont243770243771_))
                                            (___kont243770243771_))))
                                    (___kont243770243771_))))
                            (___kont243770243771_))
                        (___kont243770243771_))
                    (___kont243770243771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243770243771_))))
                                            (___kont243770243771_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop234893235156_ _target234890235151_ '())))))
                   (___match243785243786_
                    (lambda (_e234841235403_
                             _hd234840235406_
                             _tl234839235408_
                             ___splice243758243759_
                             _target234842235411_
                             _tl234844235413_)
                      (letrec ((_loop234845235416_
                                (lambda (_hd234843235419_ _arg234849235421_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234843235419_))
                                      (let ((_e234846235424_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234843235419_))))
                                        (let ((_lp-tl234848235429_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234846235424_)))
                                              (_lp-hd234847235427_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234846235424_))))
                                          (let ((__tmp245161
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234847235427_
                                                         _arg234849235421_))))
                                            (declare (not safe))
                                            (_loop234845235416_
                                             _lp-tl234848235429_
                                             __tmp245161))))
                                      (let ((_arg234850235432_
                                             (reverse _arg234849235421_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl234839235408_))
                                            (let ((_e234853235435_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl234839235408_))))
                                              (let ((_tl234851235440_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e234853235435_)))
                                                    (_hd234852235438_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e234853235435_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd234852235438_))
                                                    (let ((_e234856235443_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd234852235438_))))
                                                      (let ((_tl234854235448_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234856235443_)))
                    (_hd234855235446_
                     (let () (declare (not safe)) (##car _e234856235443_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd234855235446_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd234855235446_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl234854235448_))
                            (let ((_e234859235451_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl234854235448_))))
                              (let ((_tl234857235456_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234859235451_)))
                                    (_hd234858235454_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234859235451_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd234858235454_))
                                    (let ((_e234862235459_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd234858235454_))))
                                      (let ((_tl234860235464_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e234862235459_)))
                                            (_hd234861235462_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e234862235459_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd234861235462_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd234861235462_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl234860235464_))
                                                    (let ((_e234865235467_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl234860235464_))))
                                                      (let ((_tl234863235472_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234865235467_)))
                    (_hd234864235470_
                     (let () (declare (not safe)) (##car _e234865235467_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl234863235472_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl234857235456_))
                        (let ((___splice243760243761_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl234857235456_
                                  '0))))
                          (let ((_tl234868235477_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243760243761_ '1)))
                                (_target234866235475_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243760243761_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl234868235477_))
                                (letrec ((_loop234869235480_
                                          (lambda (_hd234867235483_
                                                   _xarg234873235485_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd234867235483_))
                                                (let ((_e234870235488_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd234867235483_))))
                                                  (let ((_lp-tl234872235493_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e234870235488_)))
                                                        (_lp-hd234871235491_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e234870235488_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd234871235491_))
                                                        (let ((_e234877235496_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd234871235491_))))
                  (let ((_tl234875235501_
                         (let () (declare (not safe)) (##cdr _e234877235496_)))
                        (_hd234876235499_
                         (let ()
                           (declare (not safe))
                           (##car _e234877235496_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd234876235499_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd234876235499_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl234875235501_))
                                (let ((_e234880235504_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl234875235501_))))
                                  (let ((_tl234878235509_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234880235504_)))
                                        (_hd234879235507_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234880235504_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl234878235509_))
                                        (let ((__tmp245160
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd234879235507_
                                                       _xarg234873235485_))))
                                          (declare (not safe))
                                          (_loop234869235480_
                                           _lp-tl234872235493_
                                           __tmp245160))
                                        (___match243797243798_
                                         _e234841235403_
                                         _hd234840235406_
                                         _tl234839235408_
                                         ___splice243758243759_
                                         _target234842235411_
                                         _tl234844235413_))))
                                (___match243797243798_
                                 _e234841235403_
                                 _hd234840235406_
                                 _tl234839235408_
                                 ___splice243758243759_
                                 _target234842235411_
                                 _tl234844235413_))
                            (___match243797243798_
                             _e234841235403_
                             _hd234840235406_
                             _tl234839235408_
                             ___splice243758243759_
                             _target234842235411_
                             _tl234844235413_))
                        (___match243797243798_
                         _e234841235403_
                         _hd234840235406_
                         _tl234839235408_
                         ___splice243758243759_
                         _target234842235411_
                         _tl234844235413_))))
                (___match243797243798_
                 _e234841235403_
                 _hd234840235406_
                 _tl234839235408_
                 ___splice243758243759_
                 _target234842235411_
                 _tl234844235413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg234874235512_
                                                       (reverse _xarg234873235485_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234851235440_))
                                                      (let ((_L235515_
                                                             _xarg234874235512_)
                                                            (_L235516_
                                                             _hd234864235470_)
                                                            (_L235517_
                                                             _arg234850235432_))
                                                        (if (and (let ((__tmp245158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp245159
                                       (lambda (_g235545235548_
                                                _g235546235550_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g235545235548_
                                                 _g235546235550_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp245159 '() _L235517_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp245158))
                         (fx= (length (let ((__tmp245156
                                             (lambda (_g235552235555_
                                                      _g235553235557_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g235552235555_
                                                       _g235553235557_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp245156 '() _L235517_)))
                              (length (let ((__tmp245157
                                             (lambda (_g235559235562_
                                                      _g235560235564_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g235559235562_
                                                       _g235560235564_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp245157 '() _L235515_))))
                         (let ((__tmp245154
                                (let ((__tmp245155
                                       (lambda (_g235566235569_
                                                _g235567235571_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g235566235569_
                                                 _g235567235571_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp245155 '() _L235517_)))
                               (__tmp245152
                                (let ((__tmp245153
                                       (lambda (_g235573235576_
                                                _g235574235578_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g235573235576_
                                                 _g235574235578_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp245153 '() _L235515_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp245154
                                    __tmp245152))
                         (let ((__tmp245148
                                (let ((__tmp245151
                                       (lambda (_g235580235582_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g235580235582_
                                            _L235516_))))
                                      (__tmp245149
                                       (let ((__tmp245150
                                              (lambda (_g235584235587_
                                                       _g235585235589_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g235584235587_
                                                        _g235585235589_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp245150 '() _L235517_))))
                                  (declare (not safe))
                                  (find __tmp245151 __tmp245149))))
                           (declare (not safe))
                           (not __tmp245148)))
                    (___kont243756243757_ _L235515_ _L235516_ _L235517_)
                    (___match243797243798_
                     _e234841235403_
                     _hd234840235406_
                     _tl234839235408_
                     ___splice243758243759_
                     _target234842235411_
                     _tl234844235413_)))
              (___match243797243798_
               _e234841235403_
               _hd234840235406_
               _tl234839235408_
               ___splice243758243759_
               _target234842235411_
               _tl234844235413_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop234869235480_
                                     _target234866235475_
                                     '())))
                                (___match243797243798_
                                 _e234841235403_
                                 _hd234840235406_
                                 _tl234839235408_
                                 ___splice243758243759_
                                 _target234842235411_
                                 _tl234844235413_))))
                        (___match243797243798_
                         _e234841235403_
                         _hd234840235406_
                         _tl234839235408_
                         ___splice243758243759_
                         _target234842235411_
                         _tl234844235413_))
                    (___match243797243798_
                     _e234841235403_
                     _hd234840235406_
                     _tl234839235408_
                     ___splice243758243759_
                     _target234842235411_
                     _tl234844235413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243797243798_
                                                     _e234841235403_
                                                     _hd234840235406_
                                                     _tl234839235408_
                                                     ___splice243758243759_
                                                     _target234842235411_
                                                     _tl234844235413_))
                                                (___match243797243798_
                                                 _e234841235403_
                                                 _hd234840235406_
                                                 _tl234839235408_
                                                 ___splice243758243759_
                                                 _target234842235411_
                                                 _tl234844235413_))
                                            (___match243797243798_
                                             _e234841235403_
                                             _hd234840235406_
                                             _tl234839235408_
                                             ___splice243758243759_
                                             _target234842235411_
                                             _tl234844235413_))))
                                    (___match243797243798_
                                     _e234841235403_
                                     _hd234840235406_
                                     _tl234839235408_
                                     ___splice243758243759_
                                     _target234842235411_
                                     _tl234844235413_))))
                            (___match243797243798_
                             _e234841235403_
                             _hd234840235406_
                             _tl234839235408_
                             ___splice243758243759_
                             _target234842235411_
                             _tl234844235413_))
                        (___match243797243798_
                         _e234841235403_
                         _hd234840235406_
                         _tl234839235408_
                         ___splice243758243759_
                         _target234842235411_
                         _tl234844235413_))
                    (___match243797243798_
                     _e234841235403_
                     _hd234840235406_
                     _tl234839235408_
                     ___splice243758243759_
                     _target234842235411_
                     _tl234844235413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243797243798_
                                                     _e234841235403_
                                                     _hd234840235406_
                                                     _tl234839235408_
                                                     ___splice243758243759_
                                                     _target234842235411_
                                                     _tl234844235413_))))
                                            (___match243797243798_
                                             _e234841235403_
                                             _hd234840235406_
                                             _tl234839235408_
                                             ___splice243758243759_
                                             _target234842235411_
                                             _tl234844235413_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop234845235416_ _target234842235411_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243754243755_))
                  (let ((_e234841235403_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243754243755_))))
                    (let ((_tl234839235408_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234841235403_)))
                          (_hd234840235406_
                           (let ()
                             (declare (not safe))
                             (##car _e234841235403_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd234840235406_))
                          (let ((___splice243758243759_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd234840235406_
                                    '0))))
                            (let ((_tl234844235413_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice243758243759_ '1)))
                                  (_target234842235411_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice243758243759_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234844235413_))
                                  (___match243785243786_
                                   _e234841235403_
                                   _hd234840235406_
                                   _tl234839235408_
                                   ___splice243758243759_
                                   _target234842235411_
                                   _tl234844235413_)
                                  (___match243797243798_
                                   _e234841235403_
                                   _hd234840235406_
                                   _tl234839235408_
                                   ___splice243758243759_
                                   _target234842235411_
                                   _tl234844235413_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234839235408_))
                              (let ((_e234956235011_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234839235408_))))
                                (let ((_tl234954235016_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234956235011_)))
                                      (_hd234955235014_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234956235011_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234955235014_))
                                      (let ((_e234959235019_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234955235014_))))
                                        (let ((_tl234957235024_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234959235019_)))
                                              (_hd234958235022_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234959235019_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd234958235022_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd234958235022_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234957235024_))
                                                      (let ((_e234962235027_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234957235024_))))
                (let ((_tl234960235032_
                       (let () (declare (not safe)) (##cdr _e234962235027_)))
                      (_hd234961235030_
                       (let () (declare (not safe)) (##car _e234962235027_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234961235030_))
                      (let ((_e234965235035_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234961235030_))))
                        (let ((_tl234963235040_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234965235035_)))
                              (_hd234964235038_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234965235035_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234964235038_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd234964235038_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234963235040_))
                                      (let ((_e234968235043_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234963235040_))))
                                        (let ((_tl234966235048_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234968235043_)))
                                              (_hd234967235046_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234968235043_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234966235048_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234960235032_))
                                                  (let ((_e234971235051_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234960235032_))))
                                                    (let ((_tl234969235056_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234971235051_)))
                                                          (_hd234970235054_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234971235051_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234970235054_))
                                                          (let ((_e234974235059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234970235054_))))
                    (let ((_tl234972235064_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234974235059_)))
                          (_hd234973235062_
                           (let ()
                             (declare (not safe))
                             (##car _e234974235059_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234973235062_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd234973235062_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234972235064_))
                                  (let ((_e234977235067_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234972235064_))))
                                    (let ((_tl234975235072_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234977235067_)))
                                          (_hd234976235070_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234977235067_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234975235072_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234969235056_))
                                              (let ((_e234980235075_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234969235056_))))
                                                (let ((_tl234978235080_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234980235075_)))
                                                      (_hd234979235078_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234980235075_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd234979235078_))
                                                      (let ((_e234983235083_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd234979235078_))))
                (let ((_tl234981235088_
                       (let () (declare (not safe)) (##cdr _e234983235083_)))
                      (_hd234982235086_
                       (let () (declare (not safe)) (##car _e234983235083_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd234982235086_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd234982235086_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234981235088_))
                              (let ((_e234986235091_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234981235088_))))
                                (let ((_tl234984235096_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234986235091_)))
                                      (_hd234985235094_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234986235091_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234984235096_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234978235080_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234954235016_))
                                              (___match243895243896_
                                               _e234841235403_
                                               _hd234840235406_
                                               _tl234839235408_
                                               _e234956235011_
                                               _hd234955235014_
                                               _tl234954235016_
                                               _e234959235019_
                                               _hd234958235022_
                                               _tl234957235024_
                                               _e234962235027_
                                               _hd234961235030_
                                               _tl234960235032_
                                               _e234965235035_
                                               _hd234964235038_
                                               _tl234963235040_
                                               _e234968235043_
                                               _hd234967235046_
                                               _tl234966235048_
                                               _e234971235051_
                                               _hd234970235054_
                                               _tl234969235056_
                                               _e234974235059_
                                               _hd234973235062_
                                               _tl234972235064_
                                               _e234977235067_
                                               _hd234976235070_
                                               _tl234975235072_
                                               _e234980235075_
                                               _hd234979235078_
                                               _tl234978235080_
                                               _e234983235083_
                                               _hd234982235086_
                                               _tl234981235088_
                                               _e234986235091_
                                               _hd234985235094_
                                               _tl234984235096_)
                                              (___kont243770243771_))
                                          (___kont243770243771_))
                                      (___kont243770243771_))))
                              (___kont243770243771_))
                          (___kont243770243771_))
                      (___kont243770243771_))))
              (___kont243770243771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont243770243771_))
                                          (___kont243770243771_))))
                                  (___kont243770243771_))
                              (___kont243770243771_))
                          (___kont243770243771_))))
                  (___kont243770243771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243770243771_))
                                              (___kont243770243771_))))
                                      (___kont243770243771_))
                                  (___kont243770243771_))
                              (___kont243770243771_))))
                      (___kont243770243771_))))
              (___kont243770243771_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243770243771_))
                                              (___kont243770243771_))))
                                      (___kont243770243771_))))
                              (___kont243770243771_)))))
                  (___kont243770243771_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form234297_)
        (let* ((___stx243898243899_ _form234297_)
               (_g234301234425_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243898243899_)))))
          (let ((___kont243900243901_
                 (lambda (_L234795_ _L234796_ _L234797_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L234796_))))
                (___kont243906243907_
                 (lambda (_L234643_ _L234644_ _L234645_ _L234646_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L234643_))))
                (___kont243910243911_
                 (lambda (_L234510_ _L234511_ _L234512_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L234510_)))))
            (let* ((___match244007244008_
                    (lambda (_e234393234430_
                             _hd234392234433_
                             _tl234391234435_
                             _e234396234438_
                             _hd234395234441_
                             _tl234394234443_
                             _e234399234446_
                             _hd234398234449_
                             _tl234397234451_
                             _e234402234454_
                             _hd234401234457_
                             _tl234400234459_
                             _e234405234462_
                             _hd234404234465_
                             _tl234403234467_
                             _e234408234470_
                             _hd234407234473_
                             _tl234406234475_
                             _e234411234478_
                             _hd234410234481_
                             _tl234409234483_
                             _e234414234486_
                             _hd234413234489_
                             _tl234412234491_
                             _e234417234494_
                             _hd234416234497_
                             _tl234415234499_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234409234483_))
                          (let ((_e234420234502_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234409234483_))))
                            (let ((_tl234418234507_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234420234502_)))
                                  (_hd234419234505_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234420234502_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234418234507_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234394234443_))
                                      (___kont243910243911_
                                       _hd234416234497_
                                       _hd234407234473_
                                       _hd234392234433_)
                                      (let ()
                                        (declare (not safe))
                                        (_g234301234425_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g234301234425_)))))
                          (let () (declare (not safe)) (_g234301234425_)))))
                   (___match243937243938_
                    (lambda (_e234354234547_
                             _hd234353234550_
                             _tl234352234552_
                             ___splice243908243909_
                             _target234355234555_
                             _tl234357234557_)
                      (letrec ((_loop234358234560_
                                (lambda (_hd234356234563_ _arg234362234565_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234356234563_))
                                      (let ((_e234359234568_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234356234563_))))
                                        (let ((_lp-tl234361234573_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234359234568_)))
                                              (_lp-hd234360234571_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234359234568_))))
                                          (let ((__tmp245162
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234360234571_
                                                         _arg234362234565_))))
                                            (declare (not safe))
                                            (_loop234358234560_
                                             _lp-tl234361234573_
                                             __tmp245162))))
                                      (let ((_arg234363234576_
                                             (reverse _arg234362234565_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl234352234552_))
                                            (let ((_e234366234579_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl234352234552_))))
                                              (let ((_tl234364234584_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e234366234579_)))
                                                    (_hd234365234582_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e234366234579_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd234365234582_))
                                                    (let ((_e234369234587_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd234365234582_))))
                                                      (let ((_tl234367234592_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234369234587_)))
                    (_hd234368234590_
                     (let () (declare (not safe)) (##car _e234369234587_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd234368234590_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd234368234590_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl234367234592_))
                            (let ((_e234372234595_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl234367234592_))))
                              (let ((_tl234370234600_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234372234595_)))
                                    (_hd234371234598_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234372234595_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd234371234598_))
                                    (let ((_e234375234603_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd234371234598_))))
                                      (let ((_tl234373234608_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e234375234603_)))
                                            (_hd234374234606_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e234375234603_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd234374234606_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd234374234606_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl234373234608_))
                                                    (let ((_e234378234611_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl234373234608_))))
                                                      (let ((_tl234376234616_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234378234611_)))
                    (_hd234377234614_
                     (let () (declare (not safe)) (##car _e234378234611_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl234376234616_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl234370234600_))
                        (let ((_e234381234619_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl234370234600_))))
                          (let ((_tl234379234624_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e234381234619_)))
                                (_hd234380234622_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e234381234619_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd234380234622_))
                                (let ((_e234384234627_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd234380234622_))))
                                  (let ((_tl234382234632_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234384234627_)))
                                        (_hd234383234630_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234384234627_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd234383234630_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd234383234630_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl234382234632_))
                                                (let ((_e234387234635_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl234382234632_))))
                                                  (let ((_tl234385234640_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e234387234635_)))
                                                        (_hd234386234638_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e234387234635_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl234385234640_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl234364234584_))
                                                            (___kont243906243907_
                                                             _hd234386234638_
                                                             _hd234377234614_
                                                             _tl234357234557_
                                                             _arg234363234576_)
                                                            (___match244007244008_
                                                             _e234354234547_
                                                             _hd234353234550_
                                                             _tl234352234552_
                                                             _e234366234579_
                                                             _hd234365234582_
                                                             _tl234364234584_
                                                             _e234369234587_
                                                             _hd234368234590_
                                                             _tl234367234592_
                                                             _e234372234595_
                                                             _hd234371234598_
                                                             _tl234370234600_
                                                             _e234375234603_
                                                             _hd234374234606_
                                                             _tl234373234608_
                                                             _e234378234611_
                                                             _hd234377234614_
                                                             _tl234376234616_
                                                             _e234381234619_
                                                             _hd234380234622_
                                                             _tl234379234624_
                                                             _e234384234627_
                                                             _hd234383234630_
                                                             _tl234382234632_
                                                             _e234387234635_
                                                             _hd234386234638_
                                                             _tl234385234640_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g234301234425_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g234301234425_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g234301234425_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g234301234425_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g234301234425_)))))
                        (let () (declare (not safe)) (_g234301234425_)))
                    (let () (declare (not safe)) (_g234301234425_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g234301234425_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g234301234425_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g234301234425_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g234301234425_)))))
                            (let () (declare (not safe)) (_g234301234425_)))
                        (let () (declare (not safe)) (_g234301234425_)))
                    (let () (declare (not safe)) (_g234301234425_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g234301234425_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g234301234425_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop234358234560_ _target234355234555_ '())))))
                   (___match243925243926_
                    (lambda (_e234308234683_
                             _hd234307234686_
                             _tl234306234688_
                             ___splice243902243903_
                             _target234309234691_
                             _tl234311234693_)
                      (letrec ((_loop234312234696_
                                (lambda (_hd234310234699_ _arg234316234701_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234310234699_))
                                      (let ((_e234313234704_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234310234699_))))
                                        (let ((_lp-tl234315234709_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234313234704_)))
                                              (_lp-hd234314234707_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234313234704_))))
                                          (let ((__tmp245164
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234314234707_
                                                         _arg234316234701_))))
                                            (declare (not safe))
                                            (_loop234312234696_
                                             _lp-tl234315234709_
                                             __tmp245164))))
                                      (let ((_arg234317234712_
                                             (reverse _arg234316234701_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl234306234688_))
                                            (let ((_e234320234715_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl234306234688_))))
                                              (let ((_tl234318234720_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e234320234715_)))
                                                    (_hd234319234718_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e234320234715_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd234319234718_))
                                                    (let ((_e234323234723_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd234319234718_))))
                                                      (let ((_tl234321234728_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234323234723_)))
                    (_hd234322234726_
                     (let () (declare (not safe)) (##car _e234323234723_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd234322234726_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd234322234726_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl234321234728_))
                            (let ((_e234326234731_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl234321234728_))))
                              (let ((_tl234324234736_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234326234731_)))
                                    (_hd234325234734_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234326234731_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd234325234734_))
                                    (let ((_e234329234739_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd234325234734_))))
                                      (let ((_tl234327234744_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e234329234739_)))
                                            (_hd234328234742_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e234329234739_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd234328234742_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd234328234742_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl234327234744_))
                                                    (let ((_e234332234747_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl234327234744_))))
                                                      (let ((_tl234330234752_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234332234747_)))
                    (_hd234331234750_
                     (let () (declare (not safe)) (##car _e234332234747_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl234330234752_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl234324234736_))
                        (let ((___splice243904243905_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl234324234736_
                                  '0))))
                          (let ((_tl234335234757_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243904243905_ '1)))
                                (_target234333234755_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243904243905_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl234335234757_))
                                (letrec ((_loop234336234760_
                                          (lambda (_hd234334234763_
                                                   _xarg234340234765_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd234334234763_))
                                                (let ((_e234337234768_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd234334234763_))))
                                                  (let ((_lp-tl234339234773_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e234337234768_)))
                                                        (_lp-hd234338234771_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e234337234768_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd234338234771_))
                                                        (let ((_e234344234776_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd234338234771_))))
                  (let ((_tl234342234781_
                         (let () (declare (not safe)) (##cdr _e234344234776_)))
                        (_hd234343234779_
                         (let ()
                           (declare (not safe))
                           (##car _e234344234776_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd234343234779_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd234343234779_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl234342234781_))
                                (let ((_e234347234784_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl234342234781_))))
                                  (let ((_tl234345234789_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234347234784_)))
                                        (_hd234346234787_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234347234784_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl234345234789_))
                                        (let ((__tmp245163
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd234346234787_
                                                       _xarg234340234765_))))
                                          (declare (not safe))
                                          (_loop234336234760_
                                           _lp-tl234339234773_
                                           __tmp245163))
                                        (___match243937243938_
                                         _e234308234683_
                                         _hd234307234686_
                                         _tl234306234688_
                                         ___splice243902243903_
                                         _target234309234691_
                                         _tl234311234693_))))
                                (___match243937243938_
                                 _e234308234683_
                                 _hd234307234686_
                                 _tl234306234688_
                                 ___splice243902243903_
                                 _target234309234691_
                                 _tl234311234693_))
                            (___match243937243938_
                             _e234308234683_
                             _hd234307234686_
                             _tl234306234688_
                             ___splice243902243903_
                             _target234309234691_
                             _tl234311234693_))
                        (___match243937243938_
                         _e234308234683_
                         _hd234307234686_
                         _tl234306234688_
                         ___splice243902243903_
                         _target234309234691_
                         _tl234311234693_))))
                (___match243937243938_
                 _e234308234683_
                 _hd234307234686_
                 _tl234306234688_
                 ___splice243902243903_
                 _target234309234691_
                 _tl234311234693_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg234341234792_
                                                       (reverse _xarg234340234765_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234318234720_))
                                                      (___kont243900243901_
                                                       _xarg234341234792_
                                                       _hd234331234750_
                                                       _arg234317234712_)
                                                      (___match243937243938_
                                                       _e234308234683_
                                                       _hd234307234686_
                                                       _tl234306234688_
                                                       ___splice243902243903_
                                                       _target234309234691_
                                                       _tl234311234693_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop234336234760_
                                     _target234333234755_
                                     '())))
                                (___match243937243938_
                                 _e234308234683_
                                 _hd234307234686_
                                 _tl234306234688_
                                 ___splice243902243903_
                                 _target234309234691_
                                 _tl234311234693_))))
                        (___match243937243938_
                         _e234308234683_
                         _hd234307234686_
                         _tl234306234688_
                         ___splice243902243903_
                         _target234309234691_
                         _tl234311234693_))
                    (___match243937243938_
                     _e234308234683_
                     _hd234307234686_
                     _tl234306234688_
                     ___splice243902243903_
                     _target234309234691_
                     _tl234311234693_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243937243938_
                                                     _e234308234683_
                                                     _hd234307234686_
                                                     _tl234306234688_
                                                     ___splice243902243903_
                                                     _target234309234691_
                                                     _tl234311234693_))
                                                (___match243937243938_
                                                 _e234308234683_
                                                 _hd234307234686_
                                                 _tl234306234688_
                                                 ___splice243902243903_
                                                 _target234309234691_
                                                 _tl234311234693_))
                                            (___match243937243938_
                                             _e234308234683_
                                             _hd234307234686_
                                             _tl234306234688_
                                             ___splice243902243903_
                                             _target234309234691_
                                             _tl234311234693_))))
                                    (___match243937243938_
                                     _e234308234683_
                                     _hd234307234686_
                                     _tl234306234688_
                                     ___splice243902243903_
                                     _target234309234691_
                                     _tl234311234693_))))
                            (___match243937243938_
                             _e234308234683_
                             _hd234307234686_
                             _tl234306234688_
                             ___splice243902243903_
                             _target234309234691_
                             _tl234311234693_))
                        (___match243937243938_
                         _e234308234683_
                         _hd234307234686_
                         _tl234306234688_
                         ___splice243902243903_
                         _target234309234691_
                         _tl234311234693_))
                    (___match243937243938_
                     _e234308234683_
                     _hd234307234686_
                     _tl234306234688_
                     ___splice243902243903_
                     _target234309234691_
                     _tl234311234693_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243937243938_
                                                     _e234308234683_
                                                     _hd234307234686_
                                                     _tl234306234688_
                                                     ___splice243902243903_
                                                     _target234309234691_
                                                     _tl234311234693_))))
                                            (___match243937243938_
                                             _e234308234683_
                                             _hd234307234686_
                                             _tl234306234688_
                                             ___splice243902243903_
                                             _target234309234691_
                                             _tl234311234693_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop234312234696_ _target234309234691_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243898243899_))
                  (let ((_e234308234683_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243898243899_))))
                    (let ((_tl234306234688_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234308234683_)))
                          (_hd234307234686_
                           (let ()
                             (declare (not safe))
                             (##car _e234308234683_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd234307234686_))
                          (let ((___splice243902243903_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd234307234686_
                                    '0))))
                            (let ((_tl234311234693_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice243902243903_ '1)))
                                  (_target234309234691_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice243902243903_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234311234693_))
                                  (___match243925243926_
                                   _e234308234683_
                                   _hd234307234686_
                                   _tl234306234688_
                                   ___splice243902243903_
                                   _target234309234691_
                                   _tl234311234693_)
                                  (___match243937243938_
                                   _e234308234683_
                                   _hd234307234686_
                                   _tl234306234688_
                                   ___splice243902243903_
                                   _target234309234691_
                                   _tl234311234693_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234306234688_))
                              (let ((_e234396234438_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234306234688_))))
                                (let ((_tl234394234443_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234396234438_)))
                                      (_hd234395234441_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234396234438_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234395234441_))
                                      (let ((_e234399234446_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234395234441_))))
                                        (let ((_tl234397234451_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234399234446_)))
                                              (_hd234398234449_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234399234446_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd234398234449_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd234398234449_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234397234451_))
                                                      (let ((_e234402234454_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234397234451_))))
                (let ((_tl234400234459_
                       (let () (declare (not safe)) (##cdr _e234402234454_)))
                      (_hd234401234457_
                       (let () (declare (not safe)) (##car _e234402234454_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234401234457_))
                      (let ((_e234405234462_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234401234457_))))
                        (let ((_tl234403234467_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234405234462_)))
                              (_hd234404234465_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234405234462_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234404234465_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd234404234465_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234403234467_))
                                      (let ((_e234408234470_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234403234467_))))
                                        (let ((_tl234406234475_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234408234470_)))
                                              (_hd234407234473_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234408234470_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234406234475_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234400234459_))
                                                  (let ((_e234411234478_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234400234459_))))
                                                    (let ((_tl234409234483_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234411234478_)))
                                                          (_hd234410234481_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234411234478_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234410234481_))
                                                          (let ((_e234414234486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234410234481_))))
                    (let ((_tl234412234491_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234414234486_)))
                          (_hd234413234489_
                           (let ()
                             (declare (not safe))
                             (##car _e234414234486_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234413234489_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd234413234489_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234412234491_))
                                  (let ((_e234417234494_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234412234491_))))
                                    (let ((_tl234415234499_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234417234494_)))
                                          (_hd234416234497_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234417234494_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234415234499_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234409234483_))
                                              (let ((_e234420234502_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234409234483_))))
                                                (let ((_tl234418234507_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234420234502_)))
                                                      (_hd234419234505_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234420234502_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234418234507_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl234394234443_))
                                                          (___kont243910243911_
                                                           _hd234416234497_
                                                           _hd234407234473_
                                                           _hd234307234686_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g234301234425_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g234301234425_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g234301234425_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g234301234425_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g234301234425_)))
                              (let () (declare (not safe)) (_g234301234425_)))
                          (let () (declare (not safe)) (_g234301234425_)))))
                  (let () (declare (not safe)) (_g234301234425_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g234301234425_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g234301234425_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234301234425_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g234301234425_)))
                              (let ()
                                (declare (not safe))
                                (_g234301234425_)))))
                      (let () (declare (not safe)) (_g234301234425_)))))
              (let () (declare (not safe)) (_g234301234425_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g234301234425_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g234301234425_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234301234425_)))))
                              (let ()
                                (declare (not safe))
                                (_g234301234425_))))))
                  (let () (declare (not safe)) (_g234301234425_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form234101_)
        (let* ((_g234103234117_
                (lambda (_g234104234114_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g234104234114_))))
               (_g234102234294_
                (lambda (_g234104234120_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g234104234120_))
                      (let ((_e234109234122_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g234104234120_))))
                        (let ((_hd234108234125_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234109234122_)))
                              (_tl234107234127_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234109234122_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234107234127_))
                              (let ((_e234112234130_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234107234127_))))
                                (let ((_hd234111234133_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234112234130_)))
                                      (_tl234110234135_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234112234130_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234110234135_))
                                      ((lambda (_L234138_ _L234139_)
                                         (let* ((___stx244020244021_ _L234139_)
                                                (_g234154234182_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx244020244021_)))))
                                           (let ((___kont244022244023_
                                                  (lambda (_L234273_)
                                                    (length (let ((__tmp245165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g234283234286_ _g234284234288_)
                             (let ()
                               (declare (not safe))
                               (cons _g234283234286_ _g234284234288_)))))
                      (declare (not safe))
                      (foldr1 __tmp245165 '() _L234273_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont244026244027_
                                                  (lambda (_L234224_ _L234225_)
                                                    (let ((__tmp245166
                                                           (length (let ((__tmp245167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g234236234239_ _g234237234241_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g234236234239_
                                            _g234237234241_)))))
                             (declare (not safe))
                             (foldr1 __tmp245167 '() _L234225_)))))
              (declare (not safe))
              (cons __tmp245166 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont244030244031_
                                                  (lambda (_L234187_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match244045244046_
                                                     (lambda (___splice244028244029_
                                                              _target234168234200_
                                                              _tl234170234202_)
                                                       (letrec ((_loop234171234205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd234169234208_ _arg234175234210_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd234169234208_))
                               (let ((_e234172234213_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd234169234208_))))
                                 (let ((_lp-tl234174234218_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e234172234213_)))
                                       (_lp-hd234173234216_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e234172234213_))))
                                   (let ((__tmp245168
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd234173234216_
                                                  _arg234175234210_))))
                                     (declare (not safe))
                                     (_loop234171234205_
                                      _lp-tl234174234218_
                                      __tmp245168))))
                               (let ((_arg234176234221_
                                      (reverse _arg234175234210_)))
                                 (___kont244026244027_
                                  _tl234170234202_
                                  _arg234176234221_))))))
                 (let ()
                   (declare (not safe))
                   (_loop234171234205_ _target234168234200_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match244039244040_
                                                     (lambda (___splice244024244025_
                                                              _target234157234249_
                                                              _tl234159234251_)
                                                       (letrec ((_loop234160234254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd234158234257_ _arg234164234259_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd234158234257_))
                               (let ((_e234161234262_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd234158234257_))))
                                 (let ((_lp-tl234163234267_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e234161234262_)))
                                       (_lp-hd234162234265_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e234161234262_))))
                                   (let ((__tmp245169
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd234162234265_
                                                  _arg234164234259_))))
                                     (declare (not safe))
                                     (_loop234160234254_
                                      _lp-tl234163234267_
                                      __tmp245169))))
                               (let ((_arg234165234270_
                                      (reverse _arg234164234259_)))
                                 (___kont244022244023_ _arg234165234270_))))))
                 (let ()
                   (declare (not safe))
                   (_loop234160234254_ _target234157234249_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx244020244021_))
                                                   (let ((___splice244024244025_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx244020244021_
                                                             '0))))
                                                     (let ((_tl234159234251_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice244024244025_
                                                               '1)))
                                                           (_target234157234249_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice244024244025_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl234159234251_))
                                                           (___match244039244040_
                                                            ___splice244024244025_
                                                            _target234157234249_
                                                            _tl234159234251_)
                                                           (___match244045244046_
                                                            ___splice244024244025_
                                                            _target234157234249_
                                                            _tl234159234251_))))
                                                   (___kont244030244031_
                                                    ___stx244020244021_))))))
                                       _hd234111234133_
                                       _hd234108234125_)
                                      (let ()
                                        (declare (not safe))
                                        (_g234103234117_ _g234104234120_)))))
                              (let ()
                                (declare (not safe))
                                (_g234103234117_ _g234104234120_)))))
                      (let ()
                        (declare (not safe))
                        (_g234103234117_ _g234104234120_))))))
          (declare (not safe))
          (_g234102234294_ _form234101_))))
    (define gxc#lambda-expr?
      (lambda (_expr234054_)
        (let* ((___stx244048244049_ _expr234054_)
               (_g234057234067_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx244048244049_)))))
          (let ((___kont244050244051_ (lambda (_L234087_) '#t))
                (___kont244052244053_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx244048244049_))
                (let ((_e234062234079_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx244048244049_))))
                  (let ((_tl234060234084_
                         (let () (declare (not safe)) (##cdr _e234062234079_)))
                        (_hd234061234082_
                         (let ()
                           (declare (not safe))
                           (##car _e234062234079_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd234061234082_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd234061234082_))
                            (___kont244050244051_ _tl234060234084_)
                            (___kont244052244053_))
                        (___kont244052244053_))))
                (___kont244052244053_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr234007_)
        (let* ((___stx244066244067_ _expr234007_)
               (_g234010234020_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx244066244067_)))))
          (let ((___kont244068244069_ (lambda (_L234040_) '#t))
                (___kont244070244071_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx244066244067_))
                (let ((_e234015234032_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx244066244067_))))
                  (let ((_tl234013234037_
                         (let () (declare (not safe)) (##cdr _e234015234032_)))
                        (_hd234014234035_
                         (let ()
                           (declare (not safe))
                           (##car _e234015234032_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd234014234035_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd234014234035_))
                            (___kont244068244069_ _tl234013234037_)
                            (___kont244070244071_))
                        (___kont244070244071_))))
                (___kont244070244071_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr233876_)
        (let* ((___stx244084244085_ _expr233876_)
               (_g233879233909_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx244084244085_)))))
          (let ((___kont244086244087_
                 (lambda (_L233977_ _L233978_ _L233979_)
                   (if (let () (declare (not safe)) (gx#identifier? _L233979_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L233978_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L233977_))
                           '#f)
                       '#f)))
                (___kont244088244089_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx244084244085_))
                (let ((_e233886233921_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx244084244085_))))
                  (let ((_tl233884233926_
                         (let () (declare (not safe)) (##cdr _e233886233921_)))
                        (_hd233885233924_
                         (let ()
                           (declare (not safe))
                           (##car _e233886233921_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd233885233924_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd233885233924_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233884233926_))
                                (let ((_e233889233929_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233884233926_))))
                                  (let ((_tl233887233934_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233889233929_)))
                                        (_hd233888233932_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233889233929_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd233888233932_))
                                        (let ((_e233892233937_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd233888233932_))))
                                          (let ((_tl233890233942_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233892233937_)))
                                                (_hd233891233940_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233892233937_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd233891233940_))
                                                (let ((_e233895233945_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd233891233940_))))
                                                  (let ((_tl233893233950_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233895233945_)))
                                                        (_hd233894233948_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233895233945_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd233894233948_))
                                                        (let ((_e233898233953_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd233894233948_))))
                  (let ((_tl233896233958_
                         (let () (declare (not safe)) (##cdr _e233898233953_)))
                        (_hd233897233956_
                         (let ()
                           (declare (not safe))
                           (##car _e233898233953_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl233896233958_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233893233950_))
                            (let ((_e233901233961_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233893233950_))))
                              (let ((_tl233899233966_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233901233961_)))
                                    (_hd233900233964_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233901233961_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233899233966_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233890233942_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233887233934_))
                                            (let ((_e233904233969_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233887233934_))))
                                              (let ((_tl233902233974_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233904233969_)))
                                                    (_hd233903233972_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233904233969_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl233902233974_))
                                                    (___kont244086244087_
                                                     _hd233903233972_
                                                     _hd233900233964_
                                                     _hd233897233956_)
                                                    (___kont244088244089_))))
                                            (___kont244088244089_))
                                        (___kont244088244089_))
                                    (___kont244088244089_))))
                            (___kont244088244089_))
                        (___kont244088244089_))))
                (___kont244088244089_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244088244089_))))
                                        (___kont244088244089_))))
                                (___kont244088244089_))
                            (___kont244088244089_))
                        (___kont244088244089_))))
                (___kont244088244089_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr233201_)
        (let* ((___stx244146244147_ _expr233201_)
               (_g233204233362_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx244146244147_)))))
          (let ((___kont244148244149_
                 (lambda (_L233750_
                          _L233751_
                          _L233752_
                          _L233753_
                          _L233754_
                          _L233755_
                          _L233756_
                          _L233757_
                          _L233758_
                          _L233759_
                          _L233760_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L233757_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L233753_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L233752_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L233760_
                                      _L233751_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L233759_
                                          _L233756_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L233754_
                                              _L233750_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L233758_
                                              _L233755_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont244150244151_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx244146244147_))
                (let ((_e233219233374_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx244146244147_))))
                  (let ((_tl233217233379_
                         (let () (declare (not safe)) (##cdr _e233219233374_)))
                        (_hd233218233377_
                         (let ()
                           (declare (not safe))
                           (##car _e233219233374_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd233218233377_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd233218233377_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233217233379_))
                                (let ((_e233222233382_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233217233379_))))
                                  (let ((_tl233220233387_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233222233382_)))
                                        (_hd233221233385_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233222233382_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd233221233385_))
                                        (let ((_e233225233390_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd233221233385_))))
                                          (let ((_tl233223233395_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233225233390_)))
                                                (_hd233224233393_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233225233390_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd233224233393_))
                                                (let ((_e233228233398_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd233224233393_))))
                                                  (let ((_tl233226233403_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233228233398_)))
                                                        (_hd233227233401_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233228233398_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd233227233401_))
                                                        (let ((_e233231233406_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd233227233401_))))
                  (let ((_tl233229233411_
                         (let () (declare (not safe)) (##cdr _e233231233406_)))
                        (_hd233230233409_
                         (let ()
                           (declare (not safe))
                           (##car _e233231233406_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl233229233411_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233226233403_))
                            (let ((_e233234233414_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233226233403_))))
                              (let ((_tl233232233419_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233234233414_)))
                                    (_hd233233233417_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233234233414_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233233233417_))
                                    (let ((_e233237233422_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233233233417_))))
                                      (let ((_tl233235233427_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233237233422_)))
                                            (_hd233236233425_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233237233422_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233236233425_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd233236233425_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233235233427_))
                                                    (let ((_e233240233430_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233235233427_))))
                                                      (let ((_tl233238233435_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233240233430_)))
                    (_hd233239233433_
                     (let () (declare (not safe)) (##car _e233240233430_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd233239233433_))
                    (let ((_e233243233438_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd233239233433_))))
                      (let ((_tl233241233443_
                             (let ()
                               (declare (not safe))
                               (##cdr _e233243233438_)))
                            (_hd233242233441_
                             (let ()
                               (declare (not safe))
                               (##car _e233243233438_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd233242233441_))
                            (let ((_e233246233446_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd233242233441_))))
                              (let ((_tl233244233451_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233246233446_)))
                                    (_hd233245233449_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233246233446_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233245233449_))
                                    (let ((_e233249233454_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233245233449_))))
                                      (let ((_tl233247233459_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233249233454_)))
                                            (_hd233248233457_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233249233454_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl233247233459_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233244233451_))
                                                (let ((_e233252233462_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233244233451_))))
                                                  (let ((_tl233250233467_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233252233462_)))
                                                        (_hd233251233465_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233252233462_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233250233467_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl233241233443_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl233238233435_))
                        (let ((_e233255233470_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233238233435_))))
                          (let ((_tl233253233475_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233255233470_)))
                                (_hd233254233473_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233255233470_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233254233473_))
                                (let ((_e233258233478_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233254233473_))))
                                  (let ((_tl233256233483_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233258233478_)))
                                        (_hd233257233481_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233258233478_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233257233481_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd233257233481_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233256233483_))
                                                (let ((_e233261233486_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233256233483_))))
                                                  (let ((_tl233259233491_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233261233486_)))
                                                        (_hd233260233489_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233261233486_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd233260233489_))
                                                        (let ((_e233264233494_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd233260233489_))))
                  (let ((_tl233262233499_
                         (let () (declare (not safe)) (##cdr _e233264233494_)))
                        (_hd233263233497_
                         (let ()
                           (declare (not safe))
                           (##car _e233264233494_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233259233491_))
                        (let ((_e233267233502_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233259233491_))))
                          (let ((_tl233265233507_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233267233502_)))
                                (_hd233266233505_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233267233502_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233266233505_))
                                (let ((_e233270233510_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233266233505_))))
                                  (let ((_tl233268233515_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233270233510_)))
                                        (_hd233269233513_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233270233510_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233269233513_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd233269233513_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233268233515_))
                                                (let ((_e233273233518_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233268233515_))))
                                                  (let ((_tl233271233523_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233273233518_)))
                                                        (_hd233272233521_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233273233518_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd233272233521_))
                                                        (let ((_e233276233526_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd233272233521_))))
                  (let ((_tl233274233531_
                         (let () (declare (not safe)) (##cdr _e233276233526_)))
                        (_hd233275233529_
                         (let ()
                           (declare (not safe))
                           (##car _e233276233526_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd233275233529_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd233275233529_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233274233531_))
                                (let ((_e233279233534_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233274233531_))))
                                  (let ((_tl233277233539_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233279233534_)))
                                        (_hd233278233537_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233279233534_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233277233539_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233271233523_))
                                            (let ((_e233282233542_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233271233523_))))
                                              (let ((_tl233280233547_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233282233542_)))
                                                    (_hd233281233545_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233282233542_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233281233545_))
                                                    (let ((_e233285233550_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233281233545_))))
                                                      (let ((_tl233283233555_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233285233550_)))
                    (_hd233284233553_
                     (let () (declare (not safe)) (##car _e233285233550_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233284233553_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd233284233553_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233283233555_))
                            (let ((_e233288233558_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233283233555_))))
                              (let ((_tl233286233563_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233288233558_)))
                                    (_hd233287233561_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233288233558_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233286233563_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl233280233547_))
                                        (let ((_e233291233566_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl233280233547_))))
                                          (let ((_tl233289233571_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233291233566_)))
                                                (_hd233290233569_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233291233566_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd233290233569_))
                                                (let ((_e233294233574_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd233290233569_))))
                                                  (let ((_tl233292233579_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233294233574_)))
                                                        (_hd233293233577_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233294233574_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd233293233577_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd233293233577_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl233292233579_))
                        (let ((_e233297233582_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233292233579_))))
                          (let ((_tl233295233587_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233297233582_)))
                                (_hd233296233585_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233297233582_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl233295233587_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233265233507_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233253233475_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl233232233419_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl233223233395_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233220233387_))
                                                    (let ((_e233300233590_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233220233387_))))
                                                      (let ((_tl233298233595_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233300233590_)))
                    (_hd233299233593_
                     (let () (declare (not safe)) (##car _e233300233590_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd233299233593_))
                    (let ((_e233303233598_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd233299233593_))))
                      (let ((_tl233301233603_
                             (let ()
                               (declare (not safe))
                               (##cdr _e233303233598_)))
                            (_hd233302233601_
                             (let ()
                               (declare (not safe))
                               (##car _e233303233598_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd233302233601_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd233302233601_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl233301233603_))
                                    (let ((_e233306233606_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl233301233603_))))
                                      (let ((_tl233304233611_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233306233606_)))
                                            (_hd233305233609_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233306233606_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233304233611_))
                                            (let ((_e233309233614_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233304233611_))))
                                              (let ((_tl233307233619_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233309233614_)))
                                                    (_hd233308233617_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233309233614_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233308233617_))
                                                    (let ((_e233312233622_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233308233617_))))
                                                      (let ((_tl233310233627_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233312233622_)))
                    (_hd233311233625_
                     (let () (declare (not safe)) (##car _e233312233622_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233311233625_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd233311233625_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233310233627_))
                            (let ((_e233315233630_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233310233627_))))
                              (let ((_tl233313233635_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233315233630_)))
                                    (_hd233314233633_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233315233630_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233314233633_))
                                    (let ((_e233318233638_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233314233633_))))
                                      (let ((_tl233316233643_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233318233638_)))
                                            (_hd233317233641_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233318233638_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233317233641_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd233317233641_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233316233643_))
                                                    (let ((_e233321233646_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233316233643_))))
                                                      (let ((_tl233319233651_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233321233646_)))
                    (_hd233320233649_
                     (let () (declare (not safe)) (##car _e233321233646_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl233319233651_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233313233635_))
                        (let ((_e233324233654_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233313233635_))))
                          (let ((_tl233322233659_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233324233654_)))
                                (_hd233323233657_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233324233654_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233323233657_))
                                (let ((_e233327233662_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233323233657_))))
                                  (let ((_tl233325233667_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233327233662_)))
                                        (_hd233326233665_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233327233662_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233326233665_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd233326233665_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233325233667_))
                                                (let ((_e233330233670_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233325233667_))))
                                                  (let ((_tl233328233675_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233330233670_)))
                                                        (_hd233329233673_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233330233670_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233328233675_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl233322233659_))
                                                            (let ((_e233333233678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl233322233659_))))
                      (let ((_tl233331233683_
                             (let ()
                               (declare (not safe))
                               (##cdr _e233333233678_)))
                            (_hd233332233681_
                             (let ()
                               (declare (not safe))
                               (##car _e233333233678_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd233332233681_))
                            (let ((_e233336233686_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd233332233681_))))
                              (let ((_tl233334233691_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233336233686_)))
                                    (_hd233335233689_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233336233686_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd233335233689_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd233335233689_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233334233691_))
                                            (let ((_e233339233694_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233334233691_))))
                                              (let ((_tl233337233699_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233339233694_)))
                                                    (_hd233338233697_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233339233694_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl233337233699_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl233331233683_))
                                                        (let ((_e233342233702_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl233331233683_))))
                  (let ((_tl233340233707_
                         (let () (declare (not safe)) (##cdr _e233342233702_)))
                        (_hd233341233705_
                         (let ()
                           (declare (not safe))
                           (##car _e233342233702_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd233341233705_))
                        (let ((_e233345233710_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd233341233705_))))
                          (let ((_tl233343233715_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233345233710_)))
                                (_hd233344233713_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233345233710_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd233344233713_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd233344233713_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl233343233715_))
                                        (let ((_e233348233718_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl233343233715_))))
                                          (let ((_tl233346233723_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233348233718_)))
                                                (_hd233347233721_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233348233718_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl233346233723_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233340233707_))
                                                    (let ((_e233351233726_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233340233707_))))
                                                      (let ((_tl233349233731_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233351233726_)))
                    (_hd233350233729_
                     (let () (declare (not safe)) (##car _e233351233726_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd233350233729_))
                    (let ((_e233354233734_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd233350233729_))))
                      (let ((_tl233352233739_
                             (let ()
                               (declare (not safe))
                               (##cdr _e233354233734_)))
                            (_hd233353233737_
                             (let ()
                               (declare (not safe))
                               (##car _e233354233734_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd233353233737_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd233353233737_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl233352233739_))
                                    (let ((_e233357233742_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl233352233739_))))
                                      (let ((_tl233355233747_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233357233742_)))
                                            (_hd233356233745_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233357233742_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl233355233747_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl233349233731_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl233307233619_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233298233595_))
                                                        (___kont244148244149_
                                                         _hd233356233745_
                                                         _hd233347233721_
                                                         _hd233329233673_
                                                         _hd233320233649_
                                                         _hd233305233609_
                                                         _hd233296233585_
                                                         _hd233287233561_
                                                         _hd233278233537_
                                                         _hd233263233497_
                                                         _hd233248233457_
                                                         _hd233230233409_)
                                                        (___kont244150244151_))
                                                    (___kont244150244151_))
                                                (___kont244150244151_))
                                            (___kont244150244151_))))
                                    (___kont244150244151_))
                                (___kont244150244151_))
                            (___kont244150244151_))))
                    (___kont244150244151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244150244151_))
                                                (___kont244150244151_))))
                                        (___kont244150244151_))
                                    (___kont244150244151_))
                                (___kont244150244151_))))
                        (___kont244150244151_))))
                (___kont244150244151_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244150244151_))))
                                            (___kont244150244151_))
                                        (___kont244150244151_))
                                    (___kont244150244151_))))
                            (___kont244150244151_))))
                    (___kont244150244151_))
                (___kont244150244151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244150244151_))
                                            (___kont244150244151_))
                                        (___kont244150244151_))))
                                (___kont244150244151_))))
                        (___kont244150244151_))
                    (___kont244150244151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244150244151_))
                                                (___kont244150244151_))
                                            (___kont244150244151_))))
                                    (___kont244150244151_))))
                            (___kont244150244151_))
                        (___kont244150244151_))
                    (___kont244150244151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244150244151_))))
                                            (___kont244150244151_))))
                                    (___kont244150244151_))
                                (___kont244150244151_))
                            (___kont244150244151_))))
                    (___kont244150244151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244150244151_))
                                                (___kont244150244151_))
                                            (___kont244150244151_))
                                        (___kont244150244151_))
                                    (___kont244150244151_))
                                (___kont244150244151_))))
                        (___kont244150244151_))
                    (___kont244150244151_))
                (___kont244150244151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244150244151_))))
                                        (___kont244150244151_))
                                    (___kont244150244151_))))
                            (___kont244150244151_))
                        (___kont244150244151_))
                    (___kont244150244151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244150244151_))))
                                            (___kont244150244151_))
                                        (___kont244150244151_))))
                                (___kont244150244151_))
                            (___kont244150244151_))
                        (___kont244150244151_))))
                (___kont244150244151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244150244151_))
                                            (___kont244150244151_))
                                        (___kont244150244151_))))
                                (___kont244150244151_))))
                        (___kont244150244151_))))
                (___kont244150244151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244150244151_))
                                            (___kont244150244151_))
                                        (___kont244150244151_))))
                                (___kont244150244151_))))
                        (___kont244150244151_))
                    (___kont244150244151_))
                (___kont244150244151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244150244151_))
                                            (___kont244150244151_))))
                                    (___kont244150244151_))))
                            (___kont244150244151_))))
                    (___kont244150244151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244150244151_))
                                                (___kont244150244151_))
                                            (___kont244150244151_))))
                                    (___kont244150244151_))))
                            (___kont244150244151_))
                        (___kont244150244151_))))
                (___kont244150244151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244150244151_))))
                                        (___kont244150244151_))))
                                (___kont244150244151_))
                            (___kont244150244151_))
                        (___kont244150244151_))))
                (___kont244150244151_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx232943_ _id232944_ _clauses232945_ _gensym?232946_)
        (let _lp232948_ ((_rest232950_ _clauses232945_)
                         (_ids232951_ '())
                         (_impls232952_ '())
                         (_clauses232953_ '()))
          (let* ((_rest232954232962_ _rest232950_)
                 (_else232956232970_
                  (lambda ()
                    (values (reverse _ids232951_)
                            (reverse _impls232952_)
                            (reverse _clauses232953_))))
                 (_K232958233175_
                  (lambda (_rest232973_ _clause232974_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause232974_))
                        (let ((__tmp245225
                               (let ()
                                 (declare (not safe))
                                 (cons _clause232974_ _clauses232953_))))
                          (declare (not safe))
                          (_lp232948_
                           _rest232973_
                           _ids232951_
                           _impls232952_
                           __tmp245225))
                        (let* ((_g232976232987_
                                (lambda (_g232977232984_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g232977232984_))))
                               (_g232975233172_
                                (lambda (_g232977232990_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g232977232990_))
                                      (let ((_e232982232992_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g232977232990_))))
                                        (let ((_hd232981232995_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232982232992_)))
                                              (_tl232980232997_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232982232992_))))
                                          ((lambda (_L233000_ _L233001_)
                                             (let* ((_id233018_
                                                     (let ((__tmp245172
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id232944_)))
                                                           (__tmp245171
                                                            (length _clauses232953_))
                                                           (__tmp245170
                                                            (if _gensym?232946_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp245172
                                                        '"__"
                                                        __tmp245171
                                                        __tmp245170)))
                                                    (_id233020_
                                                     (let ((__tmp245173
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx232943_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id233018_
                                                        __tmp245173)))
                                                    (_impl233022_
                                                     (let ((__tmp245174
                                                            (let ((__tmp245176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp245175
                           (let ()
                             (declare (not safe))
                             (cons _L233001_ _L233000_))))
                      (declare (not safe))
                      (cons __tmp245176 __tmp245175))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp245174 _stx232943_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause233169_
                                                     (let* ((___stx244530244531_
                                                             _L233001_)
                                                            (_g233026233054_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx244530244531_)))))
               (let ((___kont244532244533_
                      (lambda (_L233148_)
                        (let ((__tmp245177
                               (let ((__tmp245178
                                      (let ((__tmp245179
                                             (let ((__tmp245180
                                                    (let ((__tmp245186
                                                           (let ((__tmp245187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id233020_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp245187)))
                  (__tmp245181
                   (let ((__tmp245182
                          (lambda (_g233158233161_ _g233159233163_)
                            (let ((__tmp245183
                                   (let ((__tmp245185
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp245184
                                          (let ()
                                            (declare (not safe))
                                            (cons _g233158233161_ '()))))
                                     (declare (not safe))
                                     (cons __tmp245185 __tmp245184))))
                              (declare (not safe))
                              (cons __tmp245183 _g233159233163_)))))
                     (declare (not safe))
                     (foldr1 __tmp245182 '() _L233148_))))
              (declare (not safe))
              (cons __tmp245186 __tmp245181))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp245180))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp245179
                                         _stx232943_))))
                                 (declare (not safe))
                                 (cons __tmp245178 '()))))
                          (declare (not safe))
                          (cons _L233001_ __tmp245177))))
                     (___kont244536244537_
                      (lambda (_L233099_ _L233100_)
                        (let ((__tmp245188
                               (let ((__tmp245189
                                      (let ((__tmp245190
                                             (let ((__tmp245191
                                                    (let ((__tmp245205
                                                           (let ((__tmp245206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp245206)))
                  (__tmp245192
                   (let ((__tmp245203
                          (let ((__tmp245204
                                 (let ()
                                   (declare (not safe))
                                   (cons _id233020_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp245204)))
                         (__tmp245193
                          (let ((__tmp245199
                                 (let ((__tmp245200
                                        (let ((__tmp245202
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp245201
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L233099_ '()))))
                                          (declare (not safe))
                                          (cons __tmp245202 __tmp245201))))
                                   (declare (not safe))
                                   (cons __tmp245200 '())))
                                (__tmp245194
                                 (let ((__tmp245195
                                        (lambda (_g233111233114_
                                                 _g233112233116_)
                                          (let ((__tmp245196
                                                 (let ((__tmp245198
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp245197
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g233111233114_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp245198
                                                         __tmp245197))))
                                            (declare (not safe))
                                            (cons __tmp245196
                                                  _g233112233116_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp245195 '() _L233100_))))
                            (declare (not safe))
                            (foldr1 cons __tmp245199 __tmp245194))))
                     (declare (not safe))
                     (cons __tmp245203 __tmp245193))))
              (declare (not safe))
              (cons __tmp245205 __tmp245192))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp245191))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp245190
                                         _stx232943_))))
                                 (declare (not safe))
                                 (cons __tmp245189 '()))))
                          (declare (not safe))
                          (cons _L233001_ __tmp245188))))
                     (___kont244540244541_
                      (lambda (_L233059_)
                        (let ((__tmp245207
                               (let ((__tmp245208
                                      (let ((__tmp245209
                                             (let ((__tmp245210
                                                    (let ((__tmp245218
                                                           (let ((__tmp245219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp245219)))
                  (__tmp245211
                   (let ((__tmp245216
                          (let ((__tmp245217
                                 (let ()
                                   (declare (not safe))
                                   (cons _id233020_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp245217)))
                         (__tmp245212
                          (let ((__tmp245213
                                 (let ((__tmp245215
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp245214
                                        (let ()
                                          (declare (not safe))
                                          (cons _L233059_ '()))))
                                   (declare (not safe))
                                   (cons __tmp245215 __tmp245214))))
                            (declare (not safe))
                            (cons __tmp245213 '()))))
                     (declare (not safe))
                     (cons __tmp245216 __tmp245212))))
              (declare (not safe))
              (cons __tmp245218 __tmp245211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp245210))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp245209
                                         _stx232943_))))
                                 (declare (not safe))
                                 (cons __tmp245208 '()))))
                          (declare (not safe))
                          (cons _L233001_ __tmp245207)))))
                 (let* ((___match244555244556_
                         (lambda (___splice244538244539_
                                  _target233040233075_
                                  _tl233042233077_)
                           (letrec ((_loop233043233080_
                                     (lambda (_hd233041233083_
                                              _arg233047233085_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd233041233083_))
                                           (let ((_e233044233088_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd233041233083_))))
                                             (let ((_lp-tl233046233093_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e233044233088_)))
                                                   (_lp-hd233045233091_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e233044233088_))))
                                               (let ((__tmp245220
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd233045233091_
                                                              _arg233047233085_))))
                                                 (declare (not safe))
                                                 (_loop233043233080_
                                                  _lp-tl233046233093_
                                                  __tmp245220))))
                                           (let ((_arg233048233096_
                                                  (reverse _arg233047233085_)))
                                             (___kont244536244537_
                                              _tl233042233077_
                                              _arg233048233096_))))))
                             (let ()
                               (declare (not safe))
                               (_loop233043233080_
                                _target233040233075_
                                '())))))
                        (___match244549244550_
                         (lambda (___splice244534244535_
                                  _target233029233124_
                                  _tl233031233126_)
                           (letrec ((_loop233032233129_
                                     (lambda (_hd233030233132_
                                              _arg233036233134_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd233030233132_))
                                           (let ((_e233033233137_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd233030233132_))))
                                             (let ((_lp-tl233035233142_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e233033233137_)))
                                                   (_lp-hd233034233140_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e233033233137_))))
                                               (let ((__tmp245221
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd233034233140_
                                                              _arg233036233134_))))
                                                 (declare (not safe))
                                                 (_loop233032233129_
                                                  _lp-tl233035233142_
                                                  __tmp245221))))
                                           (let ((_arg233037233145_
                                                  (reverse _arg233036233134_)))
                                             (___kont244532244533_
                                              _arg233037233145_))))))
                             (let ()
                               (declare (not safe))
                               (_loop233032233129_
                                _target233029233124_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx244530244531_))
                       (let ((___splice244534244535_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx244530244531_
                                 '0))))
                         (let ((_tl233031233126_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice244534244535_ '1)))
                               (_target233029233124_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice244534244535_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl233031233126_))
                               (___match244549244550_
                                ___splice244534244535_
                                _target233029233124_
                                _tl233031233126_)
                               (___match244555244556_
                                ___splice244534244535_
                                _target233029233124_
                                _tl233031233126_))))
                       (___kont244540244541_ ___stx244530244531_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp245224
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id233020_
                                                              _ids232951_)))
                                                     (__tmp245223
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl233022_
                                                              _impls232952_)))
                                                     (__tmp245222
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause233169_
                                                              _clauses232953_))))
                                                 (declare (not safe))
                                                 (_lp232948_
                                                  _rest232973_
                                                  __tmp245224
                                                  __tmp245223
                                                  __tmp245222))))
                                           _tl232980232997_
                                           _hd232981232995_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g232976232987_ _g232977232990_))))))
                          (declare (not safe))
                          (_g232975233172_ _clause232974_))))))
            (if (let () (declare (not safe)) (##pair? _rest232954232962_))
                (let ((_hd232959233178_
                       (let ()
                         (declare (not safe))
                         (##car _rest232954232962_)))
                      (_tl232960233180_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest232954232962_))))
                  (let* ((_clause233183_ _hd232959233178_)
                         (_rest233185_ _tl232960233180_))
                    (declare (not safe))
                    (_K232958233175_ _rest233185_ _clause233183_)))
                (let () (declare (not safe)) (_else232956232970_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx233190_ _id233191_ _clauses233192_)
        (let ((_gensym?233194_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx233190_
           _id233191_
           _clauses233192_
           _gensym?233194_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g245227_
        (let ((_g245226_ (let () (declare (not safe)) (##length _g245227_))))
          (cond ((let () (declare (not safe)) (##fx= _g245226_ 3))
                 (apply (lambda (_stx233190_ _id233191_ _clauses233192_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx233190_
                             _id233191_
                             _clauses233192_)))
                        _g245227_))
                ((let () (declare (not safe)) (##fx= _g245226_ 4))
                 (apply (lambda (_stx233196_
                                 _id233197_
                                 _clauses233198_
                                 _gensym?233199_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx233196_
                             _id233197_
                             _clauses233198_
                             _gensym?233199_)))
                        _g245227_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g245227_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx232220_)
        (letrec ((_case-lambda-clause-def232222_
                  (lambda (_id232939_ _impl232940_)
                    (let ((__tmp245228
                           (let ((__tmp245229
                                  (let ((__tmp245232
                                         (let ()
                                           (declare (not safe))
                                           (cons _id232939_ '())))
                                        (__tmp245230
                                         (let ((__tmp245231
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl232940_))))
                                           (declare (not safe))
                                           (cons __tmp245231 '()))))
                                    (declare (not safe))
                                    (cons __tmp245232 __tmp245230))))
                             (declare (not safe))
                             (cons '%#define-values __tmp245229))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp245228 _stx232220_))))
                 (_opt-lambda-dispatch-name232223_
                  (lambda (_id232935_)
                    (if (uninterned-symbol? _id232935_)
                        (let ((_str232937_ (symbol->string _id232935_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str232937_))
                              '"%"
                              _id232935_))
                        _id232935_)))
                 (_kw-lambda-dispatch-name232224_
                  (lambda (_id232930_ _name232931_)
                    (if (uninterned-symbol? _id232930_)
                        (let ((_str232933_ (symbol->string _id232930_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str232933_))
                              _name232931_
                              _id232930_))
                        _id232930_))))
          (let* ((___stx244578244579_ _stx232220_)
                 (_g232229232288_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx244578244579_)))))
            (let ((___kont244580244581_
                   (lambda (_L232839_ _L232840_)
                     (let* ((___stx244558244559_ _L232839_)
                            (_g232857232871_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx244558244559_)))))
                       (let ((___kont244560244561_
                              (lambda (_L232915_) _stx232220_))
                             (___kont244562244563_
                              (lambda (_L232884_)
                                (let ((_g245233_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx232220_
                                          _L232840_
                                          _L232884_))))
                                  (begin
                                    (let ((_g245234_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g245233_)
                                                 (##vector-length _g245233_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g245234_ 3)))
                                          (error "Context expects 3 values"
                                                 _g245234_)))
                                    (let ((_ids232894_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g245233_ 0)))
                                          (_impls232895_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g245233_ 1)))
                                          (_clauses232896_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g245233_ 2))))
                                      (let* ((_g245235_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids232894_))
                                             (_defs232899_
                                              (map _case-lambda-clause-def232222_
                                                   _ids232894_
                                                   _impls232895_)))
                                        (let ((__tmp245237
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L232840_)))
                                              (__tmp245236
                                               (map gxc#identifier-symbol
                                                    _ids232894_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp245237
                                           '" => "
                                           __tmp245236))
                                        (let ((__tmp245238
                                               (let ((__tmp245239
                                                      (let ((__tmp245240
                                                             (let ((__tmp245241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp245242
                                   (let ((__tmp245243
                                          (let ((__tmp245248
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L232840_ '())))
                                                (__tmp245244
                                                 (let ((__tmp245245
                                                        (let ((__tmp245247
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses232896_)))
                      (__tmp245246
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp245247 __tmp245246))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp245245 '()))))
                                            (declare (not safe))
                                            (cons __tmp245248 __tmp245244))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp245243))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp245242
                               _stx232220_))))
                       (declare (not safe))
                       (cons __tmp245241 '()))))
                (declare (not safe))
                (foldr1 cons __tmp245240 _defs232899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp245239))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp245238
                                           _stx232220_)))))))))
                         (let ((___match244569244570_
                                (lambda (_e232862232907_
                                         _hd232861232910_
                                         _tl232860232912_)
                                  (let ((_L232915_ _tl232860232912_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L232915_))
                                        (___kont244560244561_ _L232915_)
                                        (___kont244562244563_
                                         _tl232860232912_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx244558244559_))
                               (let ((_e232862232907_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx244558244559_))))
                                 (let ((_tl232860232912_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e232862232907_)))
                                       (_hd232861232910_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e232862232907_))))
                                   (___match244569244570_
                                    _e232862232907_
                                    _hd232861232910_
                                    _tl232860232912_)))
                               (let ()
                                 (declare (not safe))
                                 (_g232857232871_))))))))
                  (___kont244582244583_
                   (lambda (_L232657_ _L232658_)
                     (let* ((_g232674232704_
                             (lambda (_g232675232701_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g232675232701_))))
                            (_g232673232799_
                             (lambda (_g232675232707_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g232675232707_))
                                   (let ((_e232681232709_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g232675232707_))))
                                     (let ((_hd232680232712_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e232681232709_)))
                                           (_tl232679232714_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e232681232709_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl232679232714_))
                                           (let ((_e232684232717_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl232679232714_))))
                                             (let ((_hd232683232720_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e232684232717_)))
                                                   (_tl232682232722_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e232684232717_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd232683232720_))
                                                   (let ((_e232687232725_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd232683232720_))))
                                                     (let ((_hd232686232728_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e232687232725_)))
                                                           (_tl232685232730_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e232687232725_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd232686232728_))
                                                           (let ((_e232690232733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd232686232728_))))
                     (let ((_hd232689232736_
                            (let ()
                              (declare (not safe))
                              (##car _e232690232733_)))
                           (_tl232688232738_
                            (let ()
                              (declare (not safe))
                              (##cdr _e232690232733_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd232689232736_))
                           (let ((_e232693232741_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd232689232736_))))
                             (let ((_hd232692232744_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e232693232741_)))
                                   (_tl232691232746_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e232693232741_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl232691232746_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl232688232738_))
                                       (let ((_e232696232749_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl232688232738_))))
                                         (let ((_hd232695232752_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e232696232749_)))
                                               (_tl232694232754_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e232696232749_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl232694232754_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl232685232730_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl232682232722_))
                                                       (let ((_e232699232757_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl232682232722_))))
                 (let ((_hd232698232760_
                        (let () (declare (not safe)) (##car _e232699232757_)))
                       (_tl232697232762_
                        (let () (declare (not safe)) (##cdr _e232699232757_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl232697232762_))
                       ((lambda (_L232765_ _L232766_ _L232767_)
                          (let* ((_lambda-id232791_
                                  (let ((__tmp245251
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L232658_)))
                                        (__tmp245249
                                         (let ((__tmp245250
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L232767_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name232223_
                                            __tmp245250))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp245251
                                     '"__"
                                     __tmp245249)))
                                 (_lambda-id232793_
                                  (let ((__tmp245252
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx232220_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id232791_
                                     __tmp245252)))
                                 (_g245253_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id232793_)))
                                 (_new-case-lambda-expr232796_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L232765_
                                     _L232767_
                                     _lambda-id232793_))))
                            (let ((__tmp245255
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L232658_)))
                                  (__tmp245254
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id232793_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp245255
                               '" => "
                               __tmp245254))
                            (let ((__tmp245256
                                   (let ((__tmp245257
                                          (let ((__tmp245265
                                                 (let ((__tmp245266
                                                        (let ((__tmp245267
                                                               (let ((__tmp245270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id232793_ '())))
                             (__tmp245268
                              (let ((__tmp245269
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L232766_))))
                                (declare (not safe))
                                (cons __tmp245269 '()))))
                         (declare (not safe))
                         (cons __tmp245270 __tmp245268))))
                  (declare (not safe))
                  (cons '%#define-values __tmp245267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp245266
                                                    _stx232220_)))
                                                (__tmp245258
                                                 (let ((__tmp245259
                                                        (let ((__tmp245260
                                                               (let ((__tmp245261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp245262
                                     (let ((__tmp245264
                                            (let ()
                                              (declare (not safe))
                                              (cons _L232658_ '())))
                                           (__tmp245263
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr232796_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp245264 __tmp245263))))
                                (declare (not safe))
                                (cons '%#define-values __tmp245262))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp245261 _stx232220_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp245260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp245259 '()))))
                                            (declare (not safe))
                                            (cons __tmp245265 __tmp245258))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp245257))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp245256
                               _stx232220_))))
                        _hd232698232760_
                        _hd232695232752_
                        _hd232692232744_)
                       (let ()
                         (declare (not safe))
                         (_g232674232704_ _g232675232707_)))))
               (let () (declare (not safe)) (_g232674232704_ _g232675232707_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g232674232704_
                                                      _g232675232707_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g232674232704_
                                                  _g232675232707_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g232674232704_ _g232675232707_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g232674232704_ _g232675232707_)))))
                           (let ()
                             (declare (not safe))
                             (_g232674232704_ _g232675232707_)))))
                   (let ()
                     (declare (not safe))
                     (_g232674232704_ _g232675232707_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g232674232704_
                                                      _g232675232707_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g232674232704_
                                              _g232675232707_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g232674232704_ _g232675232707_))))))
                       (declare (not safe))
                       (_g232673232799_ _L232657_))))
                  (___kont244584244585_
                   (lambda (_L232371_ _L232372_)
                     (let* ((_g232388232441_
                             (lambda (_g232389232438_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g232389232438_))))
                            (_g232387232617_
                             (lambda (_g232389232444_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g232389232444_))
                                   (let ((_e232397232446_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g232389232444_))))
                                     (let ((_hd232396232449_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e232397232446_)))
                                           (_tl232395232451_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e232397232446_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl232395232451_))
                                           (let ((_e232400232454_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl232395232451_))))
                                             (let ((_hd232399232457_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e232400232454_)))
                                                   (_tl232398232459_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e232400232454_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd232399232457_))
                                                   (let ((_e232403232462_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd232399232457_))))
                                                     (let ((_hd232402232465_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e232403232462_)))
                                                           (_tl232401232467_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e232403232462_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd232402232465_))
                                                           (let ((_e232406232470_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd232402232465_))))
                     (let ((_hd232405232473_
                            (let ()
                              (declare (not safe))
                              (##car _e232406232470_)))
                           (_tl232404232475_
                            (let ()
                              (declare (not safe))
                              (##cdr _e232406232470_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd232405232473_))
                           (let ((_e232409232478_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd232405232473_))))
                             (let ((_hd232408232481_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e232409232478_)))
                                   (_tl232407232483_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e232409232478_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl232407232483_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl232404232475_))
                                       (let ((_e232412232486_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl232404232475_))))
                                         (let ((_hd232411232489_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e232412232486_)))
                                               (_tl232410232491_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e232412232486_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd232411232489_))
                                               (let ((_e232415232494_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd232411232489_))))
                                                 (let ((_hd232414232497_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e232415232494_)))
                                                       (_tl232413232499_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e232415232494_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl232413232499_))
                                                       (let ((_e232418232502_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl232413232499_))))
                 (let ((_hd232417232505_
                        (let () (declare (not safe)) (##car _e232418232502_)))
                       (_tl232416232507_
                        (let () (declare (not safe)) (##cdr _e232418232502_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd232417232505_))
                       (let ((_e232421232510_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd232417232505_))))
                         (let ((_hd232420232513_
                                (let ()
                                  (declare (not safe))
                                  (##car _e232421232510_)))
                               (_tl232419232515_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e232421232510_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd232420232513_))
                               (let ((_e232424232518_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd232420232513_))))
                                 (let ((_hd232423232521_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e232424232518_)))
                                       (_tl232422232523_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e232424232518_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd232423232521_))
                                       (let ((_e232427232526_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd232423232521_))))
                                         (let ((_hd232426232529_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e232427232526_)))
                                               (_tl232425232531_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e232427232526_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl232425232531_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl232422232523_))
                                                   (let ((_e232430232534_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl232422232523_))))
                                                     (let ((_hd232429232537_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e232430232534_)))
                                                           (_tl232428232539_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e232430232534_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl232428232539_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl232419232515_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl232416232507_))
                           (let ((_e232433232542_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl232416232507_))))
                             (let ((_hd232432232545_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e232433232542_)))
                                   (_tl232431232547_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e232433232542_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl232431232547_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl232410232491_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl232401232467_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl232398232459_))
                                               (let ((_e232436232550_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl232398232459_))))
                                                 (let ((_hd232435232553_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e232436232550_)))
                                                       (_tl232434232555_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e232436232550_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl232434232555_))
                                                       ((lambda (_L232558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L232559_
                         _L232560_
                         _L232561_
                         _L232562_)
                  (let* ((_get-kws-id232602_
                          (let ((__tmp245273
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L232372_)))
                                (__tmp245271
                                 (let ((__tmp245272
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L232562_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name232224_
                                    __tmp245272
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp245273 '"__" __tmp245271)))
                         (_get-kws-id232604_
                          (let ((__tmp245274
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx232220_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id232602_
                             __tmp245274)))
                         (_main-id232606_
                          (let ((__tmp245277
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L232372_)))
                                (__tmp245275
                                 (let ((__tmp245276
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L232561_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name232224_
                                    __tmp245276
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp245277 '"__" __tmp245275)))
                         (_main-id232608_
                          (let ((__tmp245278
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx232220_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id232606_
                             __tmp245278)))
                         (_g245279_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id232604_)))
                         (_g245280_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id232608_)))
                         (_new-kw-dispatch232612_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L232558_
                             _L232562_
                             _get-kws-id232604_)))
                         (_new-get-kws232614_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L232559_
                             _L232561_
                             _main-id232608_))))
                    (let ((__tmp245283
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L232372_)))
                          (__tmp245282
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id232604_)))
                          (__tmp245281
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id232608_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp245283
                       '" => "
                       __tmp245282
                       '" => "
                       __tmp245281))
                    (let ((__tmp245284
                           (let ((__tmp245285
                                  (let ((__tmp245298
                                         (let ((__tmp245299
                                                (let ((__tmp245300
                                                       (let ((__tmp245301
                                                              (let ((__tmp245303
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id232608_ '())))
                            (__tmp245302
                             (let ()
                               (declare (not safe))
                               (cons _L232560_ '()))))
                        (declare (not safe))
                        (cons __tmp245303 __tmp245302))))
                 (declare (not safe))
                 (cons '%#define-values __tmp245301))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245300
                                                   _stx232220_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp245299)))
                                        (__tmp245286
                                         (let ((__tmp245293
                                                (let ((__tmp245294
                                                       (let ((__tmp245295
                                                              (let ((__tmp245297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id232604_ '())))
                            (__tmp245296
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws232614_ '()))))
                        (declare (not safe))
                        (cons __tmp245297 __tmp245296))))
                 (declare (not safe))
                 (cons '%#define-values __tmp245295))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245294
                                                   _stx232220_)))
                                               (__tmp245287
                                                (let ((__tmp245288
                                                       (let ((__tmp245289
                                                              (let ((__tmp245290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp245292
                                    (let ()
                                      (declare (not safe))
                                      (cons _L232372_ '())))
                                   (__tmp245291
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch232612_ '()))))
                               (declare (not safe))
                               (cons __tmp245292 __tmp245291))))
                        (declare (not safe))
                        (cons '%#define-values __tmp245290))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp245289 _stx232220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp245288 '()))))
                                           (declare (not safe))
                                           (cons __tmp245293 __tmp245287))))
                                    (declare (not safe))
                                    (cons __tmp245298 __tmp245286))))
                             (declare (not safe))
                             (cons '%#begin __tmp245285))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp245284 _stx232220_))))
                _hd232435232553_
                _hd232432232545_
                _hd232429232537_
                _hd232426232529_
                _hd232408232481_)
               (let ()
                 (declare (not safe))
                 (_g232388232441_ _g232389232444_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g232388232441_
                                                  _g232389232444_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g232388232441_
                                              _g232389232444_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g232388232441_ _g232389232444_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g232388232441_ _g232389232444_)))))
                           (let ()
                             (declare (not safe))
                             (_g232388232441_ _g232389232444_)))
                       (let ()
                         (declare (not safe))
                         (_g232388232441_ _g232389232444_)))
                   (let ()
                     (declare (not safe))
                     (_g232388232441_ _g232389232444_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g232388232441_
                                                      _g232389232444_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g232388232441_
                                                  _g232389232444_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g232388232441_ _g232389232444_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g232388232441_ _g232389232444_)))))
                       (let ()
                         (declare (not safe))
                         (_g232388232441_ _g232389232444_)))))
               (let ()
                 (declare (not safe))
                 (_g232388232441_ _g232389232444_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g232388232441_
                                                  _g232389232444_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g232388232441_ _g232389232444_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g232388232441_ _g232389232444_)))))
                           (let ()
                             (declare (not safe))
                             (_g232388232441_ _g232389232444_)))))
                   (let ()
                     (declare (not safe))
                     (_g232388232441_ _g232389232444_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g232388232441_
                                                      _g232389232444_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g232388232441_
                                              _g232389232444_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g232388232441_ _g232389232444_))))))
                       (declare (not safe))
                       (_g232387232617_ _L232371_))))
                  (___kont244586244587_
                   (lambda (_L232317_ _L232318_)
                     (let ((__tmp245304
                            (let ((__tmp245305
                                   (let ((__tmp245306
                                          (let ((__tmp245307
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L232317_))))
                                            (declare (not safe))
                                            (cons __tmp245307 '()))))
                                     (declare (not safe))
                                     (cons _L232318_ __tmp245306))))
                              (declare (not safe))
                              (cons '%#define-values __tmp245305))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp245304 _stx232220_)))))
              (let* ((___match244671244672_
                      (lambda (_e232263232339_
                               _hd232262232342_
                               _tl232261232344_
                               _e232266232347_
                               _hd232265232350_
                               _tl232264232352_
                               _e232269232355_
                               _hd232268232358_
                               _tl232267232360_
                               _e232272232363_
                               _hd232271232366_
                               _tl232270232368_)
                        (let ((_L232371_ _hd232271232366_)
                              (_L232372_ _hd232268232358_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L232372_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L232371_)))
                              (___kont244584244585_ _L232371_ _L232372_)
                              (___kont244586244587_
                               _hd232271232366_
                               _hd232265232350_)))))
                     (___match244643244644_
                      (lambda (_e232249232625_
                               _hd232248232628_
                               _tl232247232630_
                               _e232252232633_
                               _hd232251232636_
                               _tl232250232638_
                               _e232255232641_
                               _hd232254232644_
                               _tl232253232646_
                               _e232258232649_
                               _hd232257232652_
                               _tl232256232654_)
                        (let ((_L232657_ _hd232257232652_)
                              (_L232658_ _hd232254232644_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L232658_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L232657_)))
                              (___kont244582244583_ _L232657_ _L232658_)
                              (___match244671244672_
                               _e232249232625_
                               _hd232248232628_
                               _tl232247232630_
                               _e232252232633_
                               _hd232251232636_
                               _tl232250232638_
                               _e232255232641_
                               _hd232254232644_
                               _tl232253232646_
                               _e232258232649_
                               _hd232257232652_
                               _tl232256232654_)))))
                     (___match244615244616_
                      (lambda (_e232235232807_
                               _hd232234232810_
                               _tl232233232812_
                               _e232238232815_
                               _hd232237232818_
                               _tl232236232820_
                               _e232241232823_
                               _hd232240232826_
                               _tl232239232828_
                               _e232244232831_
                               _hd232243232834_
                               _tl232242232836_)
                        (let ((_L232839_ _hd232243232834_)
                              (_L232840_ _hd232240232826_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L232840_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L232839_)))
                              (___kont244580244581_ _L232839_ _L232840_)
                              (___match244643244644_
                               _e232235232807_
                               _hd232234232810_
                               _tl232233232812_
                               _e232238232815_
                               _hd232237232818_
                               _tl232236232820_
                               _e232241232823_
                               _hd232240232826_
                               _tl232239232828_
                               _e232244232831_
                               _hd232243232834_
                               _tl232242232836_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx244578244579_))
                    (let ((_e232235232807_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx244578244579_))))
                      (let ((_tl232233232812_
                             (let ()
                               (declare (not safe))
                               (##cdr _e232235232807_)))
                            (_hd232234232810_
                             (let ()
                               (declare (not safe))
                               (##car _e232235232807_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232233232812_))
                            (let ((_e232238232815_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232233232812_))))
                              (let ((_tl232236232820_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232238232815_)))
                                    (_hd232237232818_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232238232815_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd232237232818_))
                                    (let ((_e232241232823_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd232237232818_))))
                                      (let ((_tl232239232828_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232241232823_)))
                                            (_hd232240232826_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232241232823_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl232239232828_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl232236232820_))
                                                (let ((_e232244232831_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl232236232820_))))
                                                  (let ((_tl232242232836_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232244232831_)))
                                                        (_hd232243232834_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232244232831_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl232242232836_))
                                                        (___match244615244616_
                                                         _e232235232807_
                                                         _hd232234232810_
                                                         _tl232233232812_
                                                         _e232238232815_
                                                         _hd232237232818_
                                                         _tl232236232820_
                                                         _e232241232823_
                                                         _hd232240232826_
                                                         _tl232239232828_
                                                         _e232244232831_
                                                         _hd232243232834_
                                                         _tl232242232836_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g232229232288_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g232229232288_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl232236232820_))
                                                (let ((_e232283232309_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl232236232820_))))
                                                  (let ((_tl232281232314_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232283232309_)))
                                                        (_hd232282232312_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232283232309_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl232281232314_))
                                                        (___kont244586244587_
                                                         _hd232282232312_
                                                         _hd232237232818_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g232229232288_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g232229232288_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl232236232820_))
                                        (let ((_e232283232309_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl232236232820_))))
                                          (let ((_tl232281232314_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e232283232309_)))
                                                (_hd232282232312_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e232283232309_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl232281232314_))
                                                (___kont244586244587_
                                                 _hd232282232312_
                                                 _hd232237232818_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g232229232288_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g232229232288_))))))
                            (let () (declare (not safe)) (_g232229232288_)))))
                    (let () (declare (not safe)) (_g232229232288_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx231152_)
        (letrec* ((_bind-e__242974242975_
                   (lambda (_id232204_ _expr232205_ _compile?232206_)
                     (let ((__tmp245310
                            (let ()
                              (declare (not safe))
                              (cons _id232204_ '())))
                           (__tmp245308
                            (let ((__tmp245309
                                   (if _compile?232206_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr232205_))
                                       _expr232205_)))
                              (declare (not safe))
                              (cons __tmp245309 '()))))
                       (declare (not safe))
                       (cons __tmp245310 __tmp245308))))
                  (_bind-e__0__242976242977_
                   (lambda (_id232211_ _expr232212_)
                     (let ((_compile?232214_ '#t))
                       (declare (not safe))
                       (_bind-e__242974242975_
                        _id232211_
                        _expr232212_
                        _compile?232214_))))
                  (_bind-e231154_
                   (lambda _g245312_
                     (let ((_g245311_
                            (let ()
                              (declare (not safe))
                              (##length _g245312_))))
                       (cond ((let () (declare (not safe)) (##fx= _g245311_ 2))
                              (apply (lambda (_id232211_ _expr232212_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__242976242977_
                                          _id232211_
                                          _expr232212_)))
                                     _g245312_))
                             ((let () (declare (not safe)) (##fx= _g245311_ 3))
                              (apply (lambda (_id232216_
                                              _expr232217_
                                              _compile?232218_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__242974242975_
                                          _id232216_
                                          _expr232217_
                                          _compile?232218_)))
                                     _g245312_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g245312_))))))
                  (_compile-bindings231155_
                   (lambda (_bindings231788_)
                     (let _lp231790_ ((_rest231792_ _bindings231788_)
                                      (_lift1231793_ '())
                                      (_lift2231794_ '())
                                      (_bind231795_ '()))
                       (let* ((_rest231796231804_ _rest231792_)
                              (_else231798231812_
                               (lambda ()
                                 (values (reverse _lift1231793_)
                                         (reverse _lift2231794_)
                                         (reverse _bind231795_))))
                              (_K231800232191_
                               (lambda (_rest231815_ _hd231816_)
                                 (let* ((___stx244714244715_ _hd231816_)
                                        (_g231820231856_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx244714244715_)))))
                                   (let ((___kont244716244717_
                                          (lambda (_L232098_ _L232099_)
                                            (let* ((___stx244694244695_
                                                    _L232098_)
                                                   (_g232114232128_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx244694244695_)))))
                                              (let ((___kont244696244697_
                                                     (lambda (_L232176_)
                                                       (let ((__tmp245313
                                                              (let ((__tmp245314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__242974242975_
                                _L232099_
                                _L232098_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp245314 _bind231795_))))
                 (declare (not safe))
                 (_lp231790_
                  _rest231815_
                  _lift1231793_
                  _lift2231794_
                  __tmp245313))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244698244699_
                                                     (lambda (_L232141_)
                                                       (let ((_g245315_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx231152_
                         _L232099_
                         _L232141_
                         '#t))))
                 (begin
                   (let ((_g245316_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g245315_)
                                (##vector-length _g245315_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g245316_ 3)))
                         (error "Context expects 3 values" _g245316_)))
                   (let ((_ids232151_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245315_ 0)))
                         (_impls232152_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245315_ 1)))
                         (_clauses232153_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245315_ 2))))
                     (let* ((_g245317_
                             (for-each gx#core-bind-runtime! _ids232151_))
                            (_xbind232156_
                             (map _bind-e231154_ _ids232151_ _impls232152_))
                            (_expr*232158_
                             (let ((__tmp245319
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses232153_)))
                                   (__tmp245318
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp245319
                                __tmp245318)))
                            (_bind*232160_
                             (let ()
                               (declare (not safe))
                               (_bind-e__242974242975_
                                _L232099_
                                _expr*232158_
                                '#f))))
                       (let ((__tmp245321
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L232099_)))
                             (__tmp245320
                              (map gxc#identifier-symbol _ids232151_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp245321
                          '" => "
                          __tmp245320))
                       (let ((__tmp245323
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2231794_ _xbind232156_)))
                             (__tmp245322
                              (let ()
                                (declare (not safe))
                                (cons _bind*232160_ _bind231795_))))
                         (declare (not safe))
                         (_lp231790_
                          _rest231815_
                          _lift1231793_
                          __tmp245323
                          __tmp245322)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match244705244706_
                                                       (lambda (_e232119232168_
                                                                _hd232118232171_
                                                                _tl232117232173_)
                                                         (let ((_L232176_
                                                                _tl232117232173_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L232176_))
                       (___kont244696244697_ _L232176_)
                       (___kont244698244699_ _tl232117232173_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx244694244695_))
                                                      (let ((_e232119232168_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx244694244695_))))
                (let ((_tl232117232173_
                       (let () (declare (not safe)) (##cdr _e232119232168_)))
                      (_hd232118232171_
                       (let () (declare (not safe)) (##car _e232119232168_))))
                  (___match244705244706_
                   _e232119232168_
                   _hd232118232171_
                   _tl232117232173_)))
              (let () (declare (not safe)) (_g232114232128_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont244718244719_
                                          (lambda (_L231926_ _L231927_)
                                            (let* ((_g231941231971_
                                                    (lambda (_g231942231968_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g231942231968_))))
                                                   (_g231940232066_
                                                    (lambda (_g231942231974_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g231942231974_))
                                                          (let ((_e231948231976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g231942231974_))))
                    (let ((_hd231947231979_
                           (let ()
                             (declare (not safe))
                             (##car _e231948231976_)))
                          (_tl231946231981_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231948231976_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl231946231981_))
                          (let ((_e231951231984_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl231946231981_))))
                            (let ((_hd231950231987_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231951231984_)))
                                  (_tl231949231989_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231951231984_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd231950231987_))
                                  (let ((_e231954231992_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd231950231987_))))
                                    (let ((_hd231953231995_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231954231992_)))
                                          (_tl231952231997_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231954231992_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd231953231995_))
                                          (let ((_e231957232000_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd231953231995_))))
                                            (let ((_hd231956232003_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231957232000_)))
                                                  (_tl231955232005_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231957232000_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd231956232003_))
                                                  (let ((_e231960232008_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd231956232003_))))
                                                    (let ((_hd231959232011_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231960232008_)))
                                                          (_tl231958232013_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231960232008_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl231958232013_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl231955232005_))
                      (let ((_e231963232016_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl231955232005_))))
                        (let ((_hd231962232019_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231963232016_)))
                              (_tl231961232021_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231963232016_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl231961232021_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl231952231997_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231949231989_))
                                      (let ((_e231966232024_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231949231989_))))
                                        (let ((_hd231965232027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231966232024_)))
                                              (_tl231964232029_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231966232024_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231964232029_))
                                              ((lambda (_L232032_
                                                        _L232033_
                                                        _L232034_)
                                                 (let* ((_lambda-id232058_
                                                         (let ((__tmp245325
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L231927_)))
                       (__tmp245324 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp245325 __tmp245324)))
                (_lambda-id232060_
                 (let ((__tmp245326
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx231152_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id232058_ __tmp245326)))
                (_g245327_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id232060_)))
                (_new-case-lambda-expr232063_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L232032_
                    _L232034_
                    _lambda-id232060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp245329
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L231927_)))
                                                         (__tmp245328
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id232060_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp245329
                                                      '" => "
                                                      __tmp245328))
                                                   (let ((__tmp245332
                                                          (let ((__tmp245333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__242974242975_
                            _L231927_
                            _new-case-lambda-expr232063_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp245333 _rest231815_)))
                 (__tmp245330
                  (let ((__tmp245331
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__242976242977_
                            _lambda-id232060_
                            _L232033_))))
                    (declare (not safe))
                    (cons __tmp245331 _lift1231793_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp231790_
                                                      __tmp245332
                                                      __tmp245330
                                                      _lift2231794_
                                                      _bind231795_))))
                                               _hd231965232027_
                                               _hd231962232019_
                                               _hd231959232011_)
                                              (let ()
                                                (declare (not safe))
                                                (_g231941231971_
                                                 _g231942231974_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231941231971_ _g231942231974_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g231941231971_ _g231942231974_)))
                              (let ()
                                (declare (not safe))
                                (_g231941231971_ _g231942231974_)))))
                      (let ()
                        (declare (not safe))
                        (_g231941231971_ _g231942231974_)))
                  (let ()
                    (declare (not safe))
                    (_g231941231971_ _g231942231974_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g231941231971_
                                                     _g231942231974_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g231941231971_
                                             _g231942231974_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g231941231971_ _g231942231974_)))))
                          (let ()
                            (declare (not safe))
                            (_g231941231971_ _g231942231974_)))))
                  (let ()
                    (declare (not safe))
                    (_g231941231971_ _g231942231974_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g231940232066_ _L231926_))))
                                         (___kont244720244721_
                                          (lambda (_L231877_ _L231878_)
                                            (let ((__tmp245334
                                                   (let ((__tmp245335
                                                          (let ((__tmp245336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp245337
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L231877_))))
                           (declare (not safe))
                           (cons __tmp245337 '()))))
                    (declare (not safe))
                    (cons _L231878_ __tmp245336))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp245335
                                                           _bind231795_))))
                                              (declare (not safe))
                                              (_lp231790_
                                               _rest231815_
                                               _lift1231793_
                                               _lift2231794_
                                               __tmp245334)))))
                                     (let* ((___match244765244766_
                                             (lambda (_e231837231902_
                                                      _hd231836231905_
                                                      _tl231835231907_
                                                      _e231840231910_
                                                      _hd231839231913_
                                                      _tl231838231915_
                                                      _e231843231918_
                                                      _hd231842231921_
                                                      _tl231841231923_)
                                               (let ((_L231926_
                                                      _hd231842231921_)
                                                     (_L231927_
                                                      _hd231839231913_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L231927_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L231926_)))
                                                     (___kont244718244719_
                                                      _L231926_
                                                      _L231927_)
                                                     (___kont244720244721_
                                                      _hd231842231921_
                                                      _hd231836231905_)))))
                                            (___match244743244744_
                                             (lambda (_e231826232074_
                                                      _hd231825232077_
                                                      _tl231824232079_
                                                      _e231829232082_
                                                      _hd231828232085_
                                                      _tl231827232087_
                                                      _e231832232090_
                                                      _hd231831232093_
                                                      _tl231830232095_)
                                               (let ((_L232098_
                                                      _hd231831232093_)
                                                     (_L232099_
                                                      _hd231828232085_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L232099_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L232098_)))
                                                     (___kont244716244717_
                                                      _L232098_
                                                      _L232099_)
                                                     (___match244765244766_
                                                      _e231826232074_
                                                      _hd231825232077_
                                                      _tl231824232079_
                                                      _e231829232082_
                                                      _hd231828232085_
                                                      _tl231827232087_
                                                      _e231832232090_
                                                      _hd231831232093_
                                                      _tl231830232095_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx244714244715_))
                                           (let ((_e231826232074_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx244714244715_))))
                                             (let ((_tl231824232079_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231826232074_)))
                                                   (_hd231825232077_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231826232074_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd231825232077_))
                                                   (let ((_e231829232082_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd231825232077_))))
                                                     (let ((_tl231827232087_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e231829232082_)))
                                                           (_hd231828232085_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e231829232082_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl231827232087_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl231824232079_))
                       (let ((_e231832232090_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl231824232079_))))
                         (let ((_tl231830232095_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231832232090_)))
                               (_hd231831232093_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231832232090_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231830232095_))
                               (___match244743244744_
                                _e231826232074_
                                _hd231825232077_
                                _tl231824232079_
                                _e231829232082_
                                _hd231828232085_
                                _tl231827232087_
                                _e231832232090_
                                _hd231831232093_
                                _tl231830232095_)
                               (let ()
                                 (declare (not safe))
                                 (_g231820231856_)))))
                       (let () (declare (not safe)) (_g231820231856_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl231824232079_))
                       (let ((_e231851231869_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl231824232079_))))
                         (let ((_tl231849231874_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231851231869_)))
                               (_hd231850231872_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231851231869_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231849231874_))
                               (___kont244720244721_
                                _hd231850231872_
                                _hd231825232077_)
                               (let ()
                                 (declare (not safe))
                                 (_g231820231856_)))))
                       (let () (declare (not safe)) (_g231820231856_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl231824232079_))
                                                       (let ((_e231851231869_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl231824232079_))))
                 (let ((_tl231849231874_
                        (let () (declare (not safe)) (##cdr _e231851231869_)))
                       (_hd231850231872_
                        (let () (declare (not safe)) (##car _e231851231869_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl231849231874_))
                       (___kont244720244721_ _hd231850231872_ _hd231825232077_)
                       (let () (declare (not safe)) (_g231820231856_)))))
               (let () (declare (not safe)) (_g231820231856_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g231820231856_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest231796231804_))
                             (let ((_hd231801232194_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest231796231804_)))
                                   (_tl231802232196_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest231796231804_))))
                               (let* ((_hd232199_ _hd231801232194_)
                                      (_rest232201_ _tl231802232196_))
                                 (declare (not safe))
                                 (_K231800232191_ _rest232201_ _hd232199_)))
                             (let ()
                               (declare (not safe))
                               (_else231798231812_)))))))
                  (_lift-kw-lambda?231156_
                   (lambda (_bind231712_)
                     (let* ((___stx244782244783_ _bind231712_)
                            (_g231715231732_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx244782244783_)))))
                       (let ((___kont244784244785_
                              (lambda (_L231768_ _L231769_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L231769_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L231768_))
                                    '#f)))
                             (___kont244786244787_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx244782244783_))
                             (let ((_e231721231744_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx244782244783_))))
                               (let ((_tl231719231749_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e231721231744_)))
                                     (_hd231720231747_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e231721231744_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd231720231747_))
                                     (let ((_e231724231752_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd231720231747_))))
                                       (let ((_tl231722231757_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e231724231752_)))
                                             (_hd231723231755_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e231724231752_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl231722231757_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl231719231749_))
                                                 (let ((_e231727231760_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl231719231749_))))
                                                   (let ((_tl231725231765_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e231727231760_)))
                                                         (_hd231726231763_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e231727231760_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl231725231765_))
                                                         (___kont244784244785_
                                                          _hd231726231763_
                                                          _hd231723231755_)
                                                         (___kont244786244787_))))
                                                 (___kont244786244787_))
                                             (___kont244786244787_))))
                                     (___kont244786244787_))))
                             (___kont244786244787_))))))
                  (_lift-kw-lambda-bindings231157_
                   (lambda (_bindings231324_)
                     (let _lp231326_ ((_rest231328_ _bindings231324_)
                                      (_lift1231329_ '())
                                      (_lift2231330_ '())
                                      (_bind231331_ '()))
                       (let* ((_rest231332231340_ _rest231328_)
                              (_else231334231348_
                               (lambda ()
                                 (values (reverse _lift1231329_)
                                         (reverse _lift2231330_)
                                         (reverse _bind231331_))))
                              (_K231336231700_
                               (lambda (_rest231351_ _hd231352_)
                                 (let* ((___stx244812244813_ _hd231352_)
                                        (_g231355231380_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx244812244813_)))))
                                   (let ((___kont244814244815_
                                          (lambda (_L231450_ _L231451_)
                                            (let* ((_g231465231518_
                                                    (lambda (_g231466231515_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g231466231515_))))
                                                   (_g231464231694_
                                                    (lambda (_g231466231521_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g231466231521_))
                                                          (let ((_e231474231523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g231466231521_))))
                    (let ((_hd231473231526_
                           (let ()
                             (declare (not safe))
                             (##car _e231474231523_)))
                          (_tl231472231528_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231474231523_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl231472231528_))
                          (let ((_e231477231531_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl231472231528_))))
                            (let ((_hd231476231534_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231477231531_)))
                                  (_tl231475231536_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231477231531_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd231476231534_))
                                  (let ((_e231480231539_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd231476231534_))))
                                    (let ((_hd231479231542_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231480231539_)))
                                          (_tl231478231544_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231480231539_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd231479231542_))
                                          (let ((_e231483231547_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd231479231542_))))
                                            (let ((_hd231482231550_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231483231547_)))
                                                  (_tl231481231552_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231483231547_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd231482231550_))
                                                  (let ((_e231486231555_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd231482231550_))))
                                                    (let ((_hd231485231558_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231486231555_)))
                                                          (_tl231484231560_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231486231555_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl231484231560_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl231481231552_))
                      (let ((_e231489231563_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl231481231552_))))
                        (let ((_hd231488231566_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231489231563_)))
                              (_tl231487231568_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231489231563_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd231488231566_))
                              (let ((_e231492231571_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd231488231566_))))
                                (let ((_hd231491231574_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231492231571_)))
                                      (_tl231490231576_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231492231571_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231490231576_))
                                      (let ((_e231495231579_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231490231576_))))
                                        (let ((_hd231494231582_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231495231579_)))
                                              (_tl231493231584_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231495231579_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd231494231582_))
                                              (let ((_e231498231587_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd231494231582_))))
                                                (let ((_hd231497231590_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e231498231587_)))
                                                      (_tl231496231592_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e231498231587_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd231497231590_))
                                                      (let ((_e231501231595_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd231497231590_))))
                (let ((_hd231500231598_
                       (let () (declare (not safe)) (##car _e231501231595_)))
                      (_tl231499231600_
                       (let () (declare (not safe)) (##cdr _e231501231595_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd231500231598_))
                      (let ((_e231504231603_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd231500231598_))))
                        (let ((_hd231503231606_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231504231603_)))
                              (_tl231502231608_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231504231603_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl231502231608_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231499231600_))
                                  (let ((_e231507231611_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231499231600_))))
                                    (let ((_hd231506231614_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231507231611_)))
                                          (_tl231505231616_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231507231611_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231505231616_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231496231592_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl231493231584_))
                                                  (let ((_e231510231619_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl231493231584_))))
                                                    (let ((_hd231509231622_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231510231619_)))
                                                          (_tl231508231624_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231510231619_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl231508231624_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl231487231568_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl231478231544_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231475231536_))
                              (let ((_e231513231627_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231475231536_))))
                                (let ((_hd231512231630_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231513231627_)))
                                      (_tl231511231632_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231513231627_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl231511231632_))
                                      ((lambda (_L231635_
                                                _L231636_
                                                _L231637_
                                                _L231638_
                                                _L231639_)
                                         (let* ((_get-kws-id231679_
                                                 (let ((__tmp245339
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L231451_)))
                                                       (__tmp245338
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp245339
                                                    __tmp245338)))
                                                (_get-kws-id231681_
                                                 (let ((__tmp245340
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx231152_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id231679_
                                                    __tmp245340)))
                                                (_main-id231683_
                                                 (let ((__tmp245342
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L231451_)))
                                                       (__tmp245341
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp245342
                                                    __tmp245341)))
                                                (_main-id231685_
                                                 (let ((__tmp245343
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx231152_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id231683_
                                                    __tmp245343)))
                                                (_g245344_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id231681_)))
                                                (_g245345_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id231685_)))
                                                (_new-kw-dispatch231689_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L231635_
                                                    _L231639_
                                                    _get-kws-id231681_)))
                                                (_new-get-kws231691_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L231636_
                                                    _L231638_
                                                    _main-id231685_))))
                                           (let ((__tmp245348
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L231451_)))
                                                 (__tmp245347
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id231681_)))
                                                 (__tmp245346
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id231685_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp245348
                                              '" => "
                                              __tmp245347
                                              '" => "
                                              __tmp245346))
                                           (let ((__tmp245353
                                                  (let ((__tmp245354
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__242974242975_
                                                            _main-id231685_
                                                            _L231637_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp245354
                                                          _lift1231329_)))
                                                 (__tmp245351
                                                  (let ((__tmp245352
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__242974242975_
                                                            _get-kws-id231681_
                                                            _new-get-kws231691_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp245352
                                                          _lift2231330_)))
                                                 (__tmp245349
                                                  (let ((__tmp245350
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__242974242975_
                                                            _L231451_
                                                            _new-kw-dispatch231689_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp245350
                                                          _bind231331_))))
                                             (declare (not safe))
                                             (_lp231326_
                                              _rest231351_
                                              __tmp245353
                                              __tmp245351
                                              __tmp245349))))
                                       _hd231512231630_
                                       _hd231509231622_
                                       _hd231506231614_
                                       _hd231503231606_
                                       _hd231485231558_)
                                      (let ()
                                        (declare (not safe))
                                        (_g231465231518_ _g231466231521_)))))
                              (let ()
                                (declare (not safe))
                                (_g231465231518_ _g231466231521_)))
                          (let ()
                            (declare (not safe))
                            (_g231465231518_ _g231466231521_)))
                      (let ()
                        (declare (not safe))
                        (_g231465231518_ _g231466231521_)))
                  (let ()
                    (declare (not safe))
                    (_g231465231518_ _g231466231521_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g231465231518_
                                                     _g231466231521_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g231465231518_
                                                 _g231466231521_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g231465231518_
                                             _g231466231521_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g231465231518_ _g231466231521_)))
                              (let ()
                                (declare (not safe))
                                (_g231465231518_ _g231466231521_)))))
                      (let ()
                        (declare (not safe))
                        (_g231465231518_ _g231466231521_)))))
              (let ()
                (declare (not safe))
                (_g231465231518_ _g231466231521_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g231465231518_
                                                 _g231466231521_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231465231518_ _g231466231521_)))))
                              (let ()
                                (declare (not safe))
                                (_g231465231518_ _g231466231521_)))))
                      (let ()
                        (declare (not safe))
                        (_g231465231518_ _g231466231521_)))
                  (let ()
                    (declare (not safe))
                    (_g231465231518_ _g231466231521_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g231465231518_
                                                     _g231466231521_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g231465231518_
                                             _g231466231521_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g231465231518_ _g231466231521_)))))
                          (let ()
                            (declare (not safe))
                            (_g231465231518_ _g231466231521_)))))
                  (let ()
                    (declare (not safe))
                    (_g231465231518_ _g231466231521_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g231464231694_ _L231450_))))
                                         (___kont244816244817_
                                          (lambda (_L231401_ _L231402_)
                                            (let ((__tmp245355
                                                   (let ((__tmp245356
                                                          (let ((__tmp245357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L231401_ '()))))
                    (declare (not safe))
                    (cons _L231402_ __tmp245357))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp245356
                                                           _bind231331_))))
                                              (declare (not safe))
                                              (_lp231326_
                                               _rest231351_
                                               _lift1231329_
                                               _lift2231330_
                                               __tmp245355)))))
                                     (let ((___match244839244840_
                                            (lambda (_e231361231426_
                                                     _hd231360231429_
                                                     _tl231359231431_
                                                     _e231364231434_
                                                     _hd231363231437_
                                                     _tl231362231439_
                                                     _e231367231442_
                                                     _hd231366231445_
                                                     _tl231365231447_)
                                              (let ((_L231450_
                                                     _hd231366231445_)
                                                    (_L231451_
                                                     _hd231363231437_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L231451_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L231450_)))
                                                    (___kont244814244815_
                                                     _L231450_
                                                     _L231451_)
                                                    (___kont244816244817_
                                                     _hd231366231445_
                                                     _hd231360231429_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx244812244813_))
                                           (let ((_e231361231426_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx244812244813_))))
                                             (let ((_tl231359231431_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231361231426_)))
                                                   (_hd231360231429_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231361231426_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd231360231429_))
                                                   (let ((_e231364231434_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd231360231429_))))
                                                     (let ((_tl231362231439_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e231364231434_)))
                                                           (_hd231363231437_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e231364231434_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl231362231439_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl231359231431_))
                       (let ((_e231367231442_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl231359231431_))))
                         (let ((_tl231365231447_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231367231442_)))
                               (_hd231366231445_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231367231442_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231365231447_))
                               (___match244839244840_
                                _e231361231426_
                                _hd231360231429_
                                _tl231359231431_
                                _e231364231434_
                                _hd231363231437_
                                _tl231362231439_
                                _e231367231442_
                                _hd231366231445_
                                _tl231365231447_)
                               (let ()
                                 (declare (not safe))
                                 (_g231355231380_)))))
                       (let () (declare (not safe)) (_g231355231380_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl231359231431_))
                       (let ((_e231375231393_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl231359231431_))))
                         (let ((_tl231373231398_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231375231393_)))
                               (_hd231374231396_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231375231393_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231373231398_))
                               (___kont244816244817_
                                _hd231374231396_
                                _hd231360231429_)
                               (let ()
                                 (declare (not safe))
                                 (_g231355231380_)))))
                       (let () (declare (not safe)) (_g231355231380_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl231359231431_))
                                                       (let ((_e231375231393_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl231359231431_))))
                 (let ((_tl231373231398_
                        (let () (declare (not safe)) (##cdr _e231375231393_)))
                       (_hd231374231396_
                        (let () (declare (not safe)) (##car _e231375231393_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl231373231398_))
                       (___kont244816244817_ _hd231374231396_ _hd231360231429_)
                       (let () (declare (not safe)) (_g231355231380_)))))
               (let () (declare (not safe)) (_g231355231380_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g231355231380_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest231332231340_))
                             (let ((_hd231337231703_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest231332231340_)))
                                   (_tl231338231705_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest231332231340_))))
                               (let* ((_hd231708_ _hd231337231703_)
                                      (_rest231710_ _tl231338231705_))
                                 (declare (not safe))
                                 (_K231336231700_ _rest231710_ _hd231708_)))
                             (let ()
                               (declare (not safe))
                               (_else231334231348_))))))))
          (let* ((___stx244856244857_ _stx231152_)
                 (_g231160231186_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx244856244857_)))))
            (let ((___kont244858244859_
                   (lambda (_L231246_ _L231247_)
                     (let ((__tmp245359
                            (lambda ()
                              (if (let ((__tmp245386
                                         (let ((__tmp245387
                                                (lambda (_g231275231278_
                                                         _g231276231280_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g231275231278_
                                                          _g231276231280_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp245387
                                                   '()
                                                   _L231247_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?231156_
                                            __tmp245386))
                                  (let ((_g245373_
                                         (let ((__tmp245375
                                                (let ((__tmp245376
                                                       (lambda (_g231282231285_
                                                                _g231283231287_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g231282231285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g231283231287_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp245376
                                                          '()
                                                          _L231247_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings231157_
                                            __tmp245375))))
                                    (begin
                                      (let ((_g245374_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g245373_)
                                                   (##vector-length _g245373_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g245374_ 3)))
                                            (error "Context expects 3 values"
                                                   _g245374_)))
                                      (let ((_lift1231290_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245373_ 0)))
                                            (_lift2231291_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245373_ 1)))
                                            (_hd231292_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245373_ 2))))
                                        (let* ((_expr231294_
                                                (let ((__tmp245377
                                                       (let ((__tmp245378
                                                              (let ((__tmp245379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L231246_ '()))))
                        (declare (not safe))
                        (cons _hd231292_ __tmp245379))))
                 (declare (not safe))
                 (cons '%#let-values __tmp245378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245377
                                                   _stx231152_)))
                                               (_expr231296_
                                                (let ((__tmp245380
                                                       (let ((__tmp245381
                                                              (let ((__tmp245382
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr231294_ '()))))
                        (declare (not safe))
                        (cons _lift2231291_ __tmp245382))))
                 (declare (not safe))
                 (cons '%#let-values __tmp245381))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245380
                                                   _stx231152_)))
                                               (_expr231298_
                                                (let ((__tmp245383
                                                       (let ((__tmp245384
                                                              (let ((__tmp245385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr231296_ '()))))
                        (declare (not safe))
                        (cons _lift1231290_ __tmp245385))))
                 (declare (not safe))
                 (cons '%#let-values __tmp245384))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245383
                                                   _stx231152_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr231298_))))))
                                  (let ((_g245360_
                                         (let ((__tmp245362
                                                (let ((__tmp245363
                                                       (lambda (_g231300231303_
                                                                _g231301231305_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g231300231303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g231301231305_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp245363
                                                          '()
                                                          _L231247_))))
                                           (declare (not safe))
                                           (_compile-bindings231155_
                                            __tmp245362))))
                                    (begin
                                      (let ((_g245361_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g245360_)
                                                   (##vector-length _g245360_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g245361_ 3)))
                                            (error "Context expects 3 values"
                                                   _g245361_)))
                                      (let ((_lift1231308_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245360_ 0)))
                                            (_lift2231309_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245360_ 1)))
                                            (_hd231310_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245360_ 2))))
                                        (let* ((_body231312_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L231246_)))
                                               (_expr231314_
                                                (let ((__tmp245364
                                                       (let ((__tmp245365
                                                              (let ((__tmp245366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body231312_ '()))))
                        (declare (not safe))
                        (cons _hd231310_ __tmp245366))))
                 (declare (not safe))
                 (cons '%#let-values __tmp245365))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245364
                                                   _stx231152_)))
                                               (_expr231316_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2231309_))
                                                    _expr231314_
                                                    (let ((__tmp245367
                                                           (let ((__tmp245368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp245369
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr231314_ '()))))
                            (declare (not safe))
                            (cons _lift2231309_ __tmp245369))))
                     (declare (not safe))
                     (cons '%#let-values __tmp245368))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp245367 _stx231152_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr231318_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1231308_))
                                                    _expr231316_
                                                    (let ((__tmp245370
                                                           (let ((__tmp245371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp245372
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr231316_ '()))))
                            (declare (not safe))
                            (cons _lift1231308_ __tmp245372))))
                     (declare (not safe))
                     (cons '%#let-values __tmp245371))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp245370 _stx231152_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr231318_)))))))
                           (__tmp245358
                            (let ((__obj245062
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj245062)
                              __obj245062)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp245359
                        gx#current-expander-context
                        __tmp245358))))
                  (___kont244862244863_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx231152_)))))
              (let ((___match244883244884_
                     (lambda (_e231166231198_
                              _hd231165231201_
                              _tl231164231203_
                              _e231169231206_
                              _hd231168231209_
                              _tl231167231211_
                              ___splice244860244861_
                              _target231170231214_
                              _tl231172231216_)
                       (letrec ((_loop231173231219_
                                 (lambda (_hd231171231222_ _bind231177231224_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd231171231222_))
                                       (let ((_e231174231227_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd231171231222_))))
                                         (let ((_lp-tl231176231232_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e231174231227_)))
                                               (_lp-hd231175231230_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e231174231227_))))
                                           (let ((__tmp245390
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd231175231230_
                                                          _bind231177231224_))))
                                             (declare (not safe))
                                             (_loop231173231219_
                                              _lp-tl231176231232_
                                              __tmp245390))))
                                       (let ((_bind231178231235_
                                              (reverse _bind231177231224_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl231167231211_))
                                             (let ((_e231181231238_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl231167231211_))))
                                               (let ((_tl231179231243_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e231181231238_)))
                                                     (_hd231180231241_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e231181231238_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl231179231243_))
                                                     (let ((_L231246_
                                                            _hd231180231241_)
                                                           (_L231247_
                                                            _bind231178231235_))
                                                       (if (let ((__tmp245388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp245389
                                 (lambda (_g231267231270_ _g231268231272_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g231267231270_ _g231268231272_)))))
                            (declare (not safe))
                            (foldr1 __tmp245389 '() _L231247_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp245388))
                   (___kont244858244859_ _L231246_ _L231247_)
                   (___kont244862244863_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont244862244863_))))
                                             (___kont244862244863_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop231173231219_ _target231170231214_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx244856244857_))
                    (let ((_e231166231198_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx244856244857_))))
                      (let ((_tl231164231203_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231166231198_)))
                            (_hd231165231201_
                             (let ()
                               (declare (not safe))
                               (##car _e231166231198_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231164231203_))
                            (let ((_e231169231206_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231164231203_))))
                              (let ((_tl231167231211_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231169231206_)))
                                    (_hd231168231209_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231169231206_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd231168231209_))
                                    (let ((___splice244860244861_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd231168231209_
                                              '0))))
                                      (let ((_tl231172231216_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice244860244861_
                                                '1)))
                                            (_target231170231214_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice244860244861_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231172231216_))
                                            (___match244883244884_
                                             _e231166231198_
                                             _hd231165231201_
                                             _tl231164231203_
                                             _e231169231206_
                                             _hd231168231209_
                                             _tl231167231211_
                                             ___splice244860244861_
                                             _target231170231214_
                                             _tl231172231216_)
                                            (___kont244862244863_))))
                                    (___kont244862244863_))))
                            (___kont244862244863_))))
                    (___kont244862244863_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx230296_)
        (letrec* ((_bind-e__242979242980_
                   (lambda (_id231136_ _expr231137_ _compile?231138_)
                     (let ((__tmp245393
                            (let ()
                              (declare (not safe))
                              (cons _id231136_ '())))
                           (__tmp245391
                            (let ((__tmp245392
                                   (if _compile?231138_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr231137_))
                                       _expr231137_)))
                              (declare (not safe))
                              (cons __tmp245392 '()))))
                       (declare (not safe))
                       (cons __tmp245393 __tmp245391))))
                  (_bind-e__0__242981242982_
                   (lambda (_id231143_ _expr231144_)
                     (let ((_compile?231146_ '#t))
                       (declare (not safe))
                       (_bind-e__242979242980_
                        _id231143_
                        _expr231144_
                        _compile?231146_))))
                  (_bind-e230298_
                   (lambda _g245395_
                     (let ((_g245394_
                            (let ()
                              (declare (not safe))
                              (##length _g245395_))))
                       (cond ((let () (declare (not safe)) (##fx= _g245394_ 2))
                              (apply (lambda (_id231143_ _expr231144_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__242981242982_
                                          _id231143_
                                          _expr231144_)))
                                     _g245395_))
                             ((let () (declare (not safe)) (##fx= _g245394_ 3))
                              (apply (lambda (_id231148_
                                              _expr231149_
                                              _compile?231150_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__242979242980_
                                          _id231148_
                                          _expr231149_
                                          _compile?231150_)))
                                     _g245395_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g245395_))))))
                  (_compile-bindings230299_
                   (lambda (_rest230434_)
                     (let _lp230436_ ((_rest230438_ _rest230434_)
                                      (_bind230439_ '()))
                       (let* ((_rest230440230448_ _rest230438_)
                              (_else230442230456_
                               (lambda () (reverse _bind230439_)))
                              (_K230444231123_
                               (lambda (_rest230459_ _hd230460_)
                                 (let* ((___stx244906244907_ _hd230460_)
                                        (_g230465230512_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx244906244907_)))))
                                   (let ((___kont244908244909_
                                          (lambda (_L231030_ _L231031_)
                                            (let* ((___stx244886244887_
                                                    _L231030_)
                                                   (_g231046231060_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx244886244887_)))))
                                              (let ((___kont244888244889_
                                                     (lambda (_L231108_)
                                                       (let ((__tmp245396
                                                              (let ((__tmp245397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__242979242980_
                                _L231031_
                                _L231030_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp245397 _bind230439_))))
                 (declare (not safe))
                 (_lp230436_ _rest230459_ __tmp245396))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244890244891_
                                                     (lambda (_L231073_)
                                                       (let ((_g245398_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx230296_
                         _L231031_
                         _L231073_
                         '#t))))
                 (begin
                   (let ((_g245399_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g245398_)
                                (##vector-length _g245398_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g245399_ 3)))
                         (error "Context expects 3 values" _g245399_)))
                   (let ((_ids231083_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245398_ 0)))
                         (_impls231084_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245398_ 1)))
                         (_clauses231085_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245398_ 2))))
                     (let* ((_g245400_
                             (for-each gx#core-bind-runtime! _ids231083_))
                            (_xbind231088_
                             (map _bind-e230298_ _ids231083_ _impls231084_))
                            (_expr*231090_
                             (let ((__tmp245402
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses231085_)))
                                   (__tmp245401
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp245402
                                __tmp245401)))
                            (_bind*231092_
                             (let ()
                               (declare (not safe))
                               (_bind-e__242979242980_
                                _L231031_
                                _expr*231090_
                                '#f))))
                       (let ((__tmp245404
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L231031_)))
                             (__tmp245403
                              (map gxc#identifier-symbol _ids231083_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp245404
                          '" => "
                          __tmp245403))
                       (let ((__tmp245405
                              (let ((__tmp245406
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind230439_
                                               _xbind231088_))))
                                (declare (not safe))
                                (cons _bind*231092_ __tmp245406))))
                         (declare (not safe))
                         (_lp230436_ _rest230459_ __tmp245405)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match244897244898_
                                                       (lambda (_e231051231100_
                                                                _hd231050231103_
                                                                _tl231049231105_)
                                                         (let ((_L231108_
                                                                _tl231049231105_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L231108_))
                       (___kont244888244889_ _L231108_)
                       (___kont244890244891_ _tl231049231105_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx244886244887_))
                                                      (let ((_e231051231100_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx244886244887_))))
                (let ((_tl231049231105_
                       (let () (declare (not safe)) (##cdr _e231051231100_)))
                      (_hd231050231103_
                       (let () (declare (not safe)) (##car _e231051231100_))))
                  (___match244897244898_
                   _e231051231100_
                   _hd231050231103_
                   _tl231049231105_)))
              (let () (declare (not safe)) (_g231046231060_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont244910244911_
                                          (lambda (_L230858_ _L230859_)
                                            (let* ((_g230873230903_
                                                    (lambda (_g230874230900_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g230874230900_))))
                                                   (_g230872230998_
                                                    (lambda (_g230874230906_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g230874230906_))
                                                          (let ((_e230880230908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g230874230906_))))
                    (let ((_hd230879230911_
                           (let ()
                             (declare (not safe))
                             (##car _e230880230908_)))
                          (_tl230878230913_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230880230908_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230878230913_))
                          (let ((_e230883230916_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230878230913_))))
                            (let ((_hd230882230919_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230883230916_)))
                                  (_tl230881230921_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230883230916_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230882230919_))
                                  (let ((_e230886230924_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230882230919_))))
                                    (let ((_hd230885230927_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230886230924_)))
                                          (_tl230884230929_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230886230924_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd230885230927_))
                                          (let ((_e230889230932_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd230885230927_))))
                                            (let ((_hd230888230935_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230889230932_)))
                                                  (_tl230887230937_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230889230932_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd230888230935_))
                                                  (let ((_e230892230940_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd230888230935_))))
                                                    (let ((_hd230891230943_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230892230940_)))
                                                          (_tl230890230945_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230892230940_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230890230945_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230887230937_))
                      (let ((_e230895230948_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230887230937_))))
                        (let ((_hd230894230951_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230895230948_)))
                              (_tl230893230953_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230895230948_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl230893230953_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230884230929_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230881230921_))
                                      (let ((_e230898230956_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230881230921_))))
                                        (let ((_hd230897230959_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230898230956_)))
                                              (_tl230896230961_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230898230956_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230896230961_))
                                              ((lambda (_L230964_
                                                        _L230965_
                                                        _L230966_)
                                                 (let* ((_lambda-id230990_
                                                         (let ((__tmp245408
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L230859_)))
                       (__tmp245407 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp245408 __tmp245407)))
                (_lambda-id230992_
                 (let ((__tmp245409
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx230296_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id230990_ __tmp245409)))
                (_g245410_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id230992_)))
                (_new-case-lambda-expr230995_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L230964_
                    _L230966_
                    _lambda-id230992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp245412
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L230859_)))
                                                         (__tmp245411
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id230992_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp245412
                                                      '" => "
                                                      __tmp245411))
                                                   (let ((__tmp245415
                                                          (let ((__tmp245416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__242979242980_
                            _L230859_
                            _new-case-lambda-expr230995_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp245416 _rest230459_)))
                 (__tmp245413
                  (let ((__tmp245414
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__242981242982_
                            _lambda-id230992_
                            _L230965_))))
                    (declare (not safe))
                    (cons __tmp245414 _bind230439_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp230436_
                                                      __tmp245415
                                                      __tmp245413))))
                                               _hd230897230959_
                                               _hd230894230951_
                                               _hd230891230943_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230873230903_
                                                 _g230874230906_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230873230903_ _g230874230906_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230873230903_ _g230874230906_)))
                              (let ()
                                (declare (not safe))
                                (_g230873230903_ _g230874230906_)))))
                      (let ()
                        (declare (not safe))
                        (_g230873230903_ _g230874230906_)))
                  (let ()
                    (declare (not safe))
                    (_g230873230903_ _g230874230906_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230873230903_
                                                     _g230874230906_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g230873230903_
                                             _g230874230906_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230873230903_ _g230874230906_)))))
                          (let ()
                            (declare (not safe))
                            (_g230873230903_ _g230874230906_)))))
                  (let ()
                    (declare (not safe))
                    (_g230873230903_ _g230874230906_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g230872230998_ _L230858_))))
                                         (___kont244912244913_
                                          (lambda (_L230582_ _L230583_)
                                            (let* ((_g230597230650_
                                                    (lambda (_g230598230647_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g230598230647_))))
                                                   (_g230596230826_
                                                    (lambda (_g230598230653_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g230598230653_))
                                                          (let ((_e230606230655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g230598230653_))))
                    (let ((_hd230605230658_
                           (let ()
                             (declare (not safe))
                             (##car _e230606230655_)))
                          (_tl230604230660_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230606230655_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230604230660_))
                          (let ((_e230609230663_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230604230660_))))
                            (let ((_hd230608230666_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230609230663_)))
                                  (_tl230607230668_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230609230663_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230608230666_))
                                  (let ((_e230612230671_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230608230666_))))
                                    (let ((_hd230611230674_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230612230671_)))
                                          (_tl230610230676_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230612230671_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd230611230674_))
                                          (let ((_e230615230679_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd230611230674_))))
                                            (let ((_hd230614230682_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230615230679_)))
                                                  (_tl230613230684_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230615230679_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd230614230682_))
                                                  (let ((_e230618230687_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd230614230682_))))
                                                    (let ((_hd230617230690_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230618230687_)))
                                                          (_tl230616230692_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230618230687_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230616230692_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230613230684_))
                      (let ((_e230621230695_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230613230684_))))
                        (let ((_hd230620230698_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230621230695_)))
                              (_tl230619230700_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230621230695_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd230620230698_))
                              (let ((_e230624230703_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd230620230698_))))
                                (let ((_hd230623230706_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230624230703_)))
                                      (_tl230622230708_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230624230703_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230622230708_))
                                      (let ((_e230627230711_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230622230708_))))
                                        (let ((_hd230626230714_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230627230711_)))
                                              (_tl230625230716_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230627230711_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd230626230714_))
                                              (let ((_e230630230719_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd230626230714_))))
                                                (let ((_hd230629230722_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230630230719_)))
                                                      (_tl230628230724_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230630230719_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd230629230722_))
                                                      (let ((_e230633230727_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd230629230722_))))
                (let ((_hd230632230730_
                       (let () (declare (not safe)) (##car _e230633230727_)))
                      (_tl230631230732_
                       (let () (declare (not safe)) (##cdr _e230633230727_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd230632230730_))
                      (let ((_e230636230735_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd230632230730_))))
                        (let ((_hd230635230738_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230636230735_)))
                              (_tl230634230740_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230636230735_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl230634230740_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl230631230732_))
                                  (let ((_e230639230743_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl230631230732_))))
                                    (let ((_hd230638230746_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230639230743_)))
                                          (_tl230637230748_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230639230743_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230637230748_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230628230724_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230625230716_))
                                                  (let ((_e230642230751_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230625230716_))))
                                                    (let ((_hd230641230754_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230642230751_)))
                                                          (_tl230640230756_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230642230751_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230640230756_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl230619230700_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl230610230676_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230607230668_))
                              (let ((_e230645230759_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230607230668_))))
                                (let ((_hd230644230762_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230645230759_)))
                                      (_tl230643230764_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230645230759_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230643230764_))
                                      ((lambda (_L230767_
                                                _L230768_
                                                _L230769_
                                                _L230770_
                                                _L230771_)
                                         (let* ((_get-kws-id230811_
                                                 (let ((__tmp245418
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L230583_)))
                                                       (__tmp245417
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp245418
                                                    __tmp245417)))
                                                (_get-kws-id230813_
                                                 (let ((__tmp245419
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx230296_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id230811_
                                                    __tmp245419)))
                                                (_main-id230815_
                                                 (let ((__tmp245421
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L230583_)))
                                                       (__tmp245420
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp245421
                                                    __tmp245420)))
                                                (_main-id230817_
                                                 (let ((__tmp245422
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx230296_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id230815_
                                                    __tmp245422)))
                                                (_g245423_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id230813_)))
                                                (_g245424_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id230817_)))
                                                (_new-kw-dispatch230821_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L230767_
                                                    _L230771_
                                                    _get-kws-id230813_)))
                                                (_new-get-kws230823_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L230768_
                                                    _L230770_
                                                    _main-id230817_))))
                                           (let ((__tmp245427
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L230583_)))
                                                 (__tmp245426
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id230813_)))
                                                 (__tmp245425
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id230817_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp245427
                                              '" => "
                                              __tmp245426
                                              '" => "
                                              __tmp245425))
                                           (let ((__tmp245428
                                                  (let ((__tmp245433
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__242979242980_
                                                            _main-id230817_
                                                            _L230769_
                                                            '#f)))
                                                        (__tmp245429
                                                         (let ((__tmp245432
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__242979242980_
                           _get-kws-id230813_
                           _new-get-kws230823_
                           '#f)))
                       (__tmp245430
                        (let ((__tmp245431
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__242979242980_
                                  _L230583_
                                  _new-kw-dispatch230821_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp245431 _rest230459_))))
                   (declare (not safe))
                   (cons __tmp245432 __tmp245430))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp245433
                                                          __tmp245429))))
                                             (declare (not safe))
                                             (_lp230436_
                                              __tmp245428
                                              _bind230439_))))
                                       _hd230644230762_
                                       _hd230641230754_
                                       _hd230638230746_
                                       _hd230635230738_
                                       _hd230617230690_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230597230650_ _g230598230653_)))))
                              (let ()
                                (declare (not safe))
                                (_g230597230650_ _g230598230653_)))
                          (let ()
                            (declare (not safe))
                            (_g230597230650_ _g230598230653_)))
                      (let ()
                        (declare (not safe))
                        (_g230597230650_ _g230598230653_)))
                  (let ()
                    (declare (not safe))
                    (_g230597230650_ _g230598230653_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230597230650_
                                                     _g230598230653_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230597230650_
                                                 _g230598230653_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g230597230650_
                                             _g230598230653_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230597230650_ _g230598230653_)))
                              (let ()
                                (declare (not safe))
                                (_g230597230650_ _g230598230653_)))))
                      (let ()
                        (declare (not safe))
                        (_g230597230650_ _g230598230653_)))))
              (let ()
                (declare (not safe))
                (_g230597230650_ _g230598230653_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g230597230650_
                                                 _g230598230653_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230597230650_ _g230598230653_)))))
                              (let ()
                                (declare (not safe))
                                (_g230597230650_ _g230598230653_)))))
                      (let ()
                        (declare (not safe))
                        (_g230597230650_ _g230598230653_)))
                  (let ()
                    (declare (not safe))
                    (_g230597230650_ _g230598230653_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230597230650_
                                                     _g230598230653_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g230597230650_
                                             _g230598230653_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230597230650_ _g230598230653_)))))
                          (let ()
                            (declare (not safe))
                            (_g230597230650_ _g230598230653_)))))
                  (let ()
                    (declare (not safe))
                    (_g230597230650_ _g230598230653_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g230596230826_ _L230582_))))
                                         (___kont244914244915_
                                          (lambda (_L230533_ _L230534_)
                                            (let ((__tmp245434
                                                   (let ((__tmp245435
                                                          (let ((__tmp245436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp245437
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L230533_))))
                           (declare (not safe))
                           (cons __tmp245437 '()))))
                    (declare (not safe))
                    (cons _L230534_ __tmp245436))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp245435
                                                           _bind230439_))))
                                              (declare (not safe))
                                              (_lp230436_
                                               _rest230459_
                                               __tmp245434)))))
                                     (let* ((___match244981244982_
                                             (lambda (_e230493230558_
                                                      _hd230492230561_
                                                      _tl230491230563_
                                                      _e230496230566_
                                                      _hd230495230569_
                                                      _tl230494230571_
                                                      _e230499230574_
                                                      _hd230498230577_
                                                      _tl230497230579_)
                                               (let ((_L230582_
                                                      _hd230498230577_)
                                                     (_L230583_
                                                      _hd230495230569_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L230583_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L230582_)))
                                                     (___kont244912244913_
                                                      _L230582_
                                                      _L230583_)
                                                     (___kont244914244915_
                                                      _hd230498230577_
                                                      _hd230492230561_)))))
                                            (___match244959244960_
                                             (lambda (_e230482230834_
                                                      _hd230481230837_
                                                      _tl230480230839_
                                                      _e230485230842_
                                                      _hd230484230845_
                                                      _tl230483230847_
                                                      _e230488230850_
                                                      _hd230487230853_
                                                      _tl230486230855_)
                                               (let ((_L230858_
                                                      _hd230487230853_)
                                                     (_L230859_
                                                      _hd230484230845_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L230859_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L230858_)))
                                                     (___kont244910244911_
                                                      _L230858_
                                                      _L230859_)
                                                     (___match244981244982_
                                                      _e230482230834_
                                                      _hd230481230837_
                                                      _tl230480230839_
                                                      _e230485230842_
                                                      _hd230484230845_
                                                      _tl230483230847_
                                                      _e230488230850_
                                                      _hd230487230853_
                                                      _tl230486230855_)))))
                                            (___match244937244938_
                                             (lambda (_e230471231006_
                                                      _hd230470231009_
                                                      _tl230469231011_
                                                      _e230474231014_
                                                      _hd230473231017_
                                                      _tl230472231019_
                                                      _e230477231022_
                                                      _hd230476231025_
                                                      _tl230475231027_)
                                               (let ((_L231030_
                                                      _hd230476231025_)
                                                     (_L231031_
                                                      _hd230473231017_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L231031_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L231030_)))
                                                     (___kont244908244909_
                                                      _L231030_
                                                      _L231031_)
                                                     (___match244959244960_
                                                      _e230471231006_
                                                      _hd230470231009_
                                                      _tl230469231011_
                                                      _e230474231014_
                                                      _hd230473231017_
                                                      _tl230472231019_
                                                      _e230477231022_
                                                      _hd230476231025_
                                                      _tl230475231027_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx244906244907_))
                                           (let ((_e230471231006_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx244906244907_))))
                                             (let ((_tl230469231011_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e230471231006_)))
                                                   (_hd230470231009_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e230471231006_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd230470231009_))
                                                   (let ((_e230474231014_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd230470231009_))))
                                                     (let ((_tl230472231019_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e230474231014_)))
                                                           (_hd230473231017_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e230474231014_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl230472231019_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl230469231011_))
                       (let ((_e230477231022_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl230469231011_))))
                         (let ((_tl230475231027_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230477231022_)))
                               (_hd230476231025_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230477231022_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230475231027_))
                               (___match244937244938_
                                _e230471231006_
                                _hd230470231009_
                                _tl230469231011_
                                _e230474231014_
                                _hd230473231017_
                                _tl230472231019_
                                _e230477231022_
                                _hd230476231025_
                                _tl230475231027_)
                               (let ()
                                 (declare (not safe))
                                 (_g230465230512_)))))
                       (let () (declare (not safe)) (_g230465230512_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl230469231011_))
                       (let ((_e230507230525_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl230469231011_))))
                         (let ((_tl230505230530_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230507230525_)))
                               (_hd230506230528_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230507230525_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230505230530_))
                               (___kont244914244915_
                                _hd230506230528_
                                _hd230470231009_)
                               (let ()
                                 (declare (not safe))
                                 (_g230465230512_)))))
                       (let () (declare (not safe)) (_g230465230512_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl230469231011_))
                                                       (let ((_e230507230525_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl230469231011_))))
                 (let ((_tl230505230530_
                        (let () (declare (not safe)) (##cdr _e230507230525_)))
                       (_hd230506230528_
                        (let () (declare (not safe)) (##car _e230507230525_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl230505230530_))
                       (___kont244914244915_ _hd230506230528_ _hd230470231009_)
                       (let () (declare (not safe)) (_g230465230512_)))))
               (let () (declare (not safe)) (_g230465230512_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g230465230512_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest230440230448_))
                             (let ((_hd230445231126_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest230440230448_)))
                                   (_tl230446231128_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest230440230448_))))
                               (let* ((_hd231131_ _hd230445231126_)
                                      (_rest231133_ _tl230446231128_))
                                 (declare (not safe))
                                 (_K230444231123_ _rest231133_ _hd231131_)))
                             (let ()
                               (declare (not safe))
                               (_else230442230456_))))))))
          (let* ((___stx244998244999_ _stx230296_)
                 (_g230302230329_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx244998244999_)))))
            (let ((___kont245000245001_
                   (lambda (_L230389_ _L230390_ _L230391_)
                     (let ((__tmp245439
                            (lambda ()
                              (let ((_hd230428_
                                     (let ((__tmp245440
                                            (let ((__tmp245441
                                                   (lambda (_g230420230423_
                                                            _g230421230425_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g230420230423_
                                                             _g230421230425_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp245441
                                                      '()
                                                      _L230390_))))
                                       (declare (not safe))
                                       (_compile-bindings230299_ __tmp245440)))
                                    (_body230429_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L230389_))))
                                (let ((__tmp245442
                                       (let ((__tmp245443
                                              (let ((__tmp245444
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body230429_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd230428_
                                                      __tmp245444))))
                                         (declare (not safe))
                                         (cons _L230391_ __tmp245443))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp245442
                                   _stx230296_)))))
                           (__tmp245438
                            (let ((__obj245063
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj245063)
                              __obj245063)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp245439
                        gx#current-expander-context
                        __tmp245438))))
                  (___kont245004245005_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx230296_)))))
              (let ((___match245025245026_
                     (lambda (_e230309230341_
                              _hd230308230344_
                              _tl230307230346_
                              _e230312230349_
                              _hd230311230352_
                              _tl230310230354_
                              ___splice245002245003_
                              _target230313230357_
                              _tl230315230359_)
                       (letrec ((_loop230316230362_
                                 (lambda (_hd230314230365_ _bind230320230367_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd230314230365_))
                                       (let ((_e230317230370_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd230314230365_))))
                                         (let ((_lp-tl230319230375_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e230317230370_)))
                                               (_lp-hd230318230373_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e230317230370_))))
                                           (let ((__tmp245447
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd230318230373_
                                                          _bind230320230367_))))
                                             (declare (not safe))
                                             (_loop230316230362_
                                              _lp-tl230319230375_
                                              __tmp245447))))
                                       (let ((_bind230321230378_
                                              (reverse _bind230320230367_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl230310230354_))
                                             (let ((_e230324230381_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl230310230354_))))
                                               (let ((_tl230322230386_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e230324230381_)))
                                                     (_hd230323230384_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e230324230381_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl230322230386_))
                                                     (let ((_L230389_
                                                            _hd230323230384_)
                                                           (_L230390_
                                                            _bind230321230378_)
                                                           (_L230391_
                                                            _hd230308230344_))
                                                       (if (let ((__tmp245445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp245446
                                 (lambda (_g230412230415_ _g230413230417_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g230412230415_ _g230413230417_)))))
                            (declare (not safe))
                            (foldr1 __tmp245446 '() _L230390_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp245445))
                   (___kont245000245001_ _L230389_ _L230390_ _L230391_)
                   (___kont245004245005_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont245004245005_))))
                                             (___kont245004245005_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop230316230362_ _target230313230357_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx244998244999_))
                    (let ((_e230309230341_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx244998244999_))))
                      (let ((_tl230307230346_
                             (let ()
                               (declare (not safe))
                               (##cdr _e230309230341_)))
                            (_hd230308230344_
                             (let ()
                               (declare (not safe))
                               (##car _e230309230341_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230307230346_))
                            (let ((_e230312230349_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230307230346_))))
                              (let ((_tl230310230354_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230312230349_)))
                                    (_hd230311230352_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230312230349_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd230311230352_))
                                    (let ((___splice245002245003_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd230311230352_
                                              '0))))
                                      (let ((_tl230315230359_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice245002245003_
                                                '1)))
                                            (_target230313230357_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice245002245003_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl230315230359_))
                                            (___match245025245026_
                                             _e230309230341_
                                             _hd230308230344_
                                             _tl230307230346_
                                             _e230312230349_
                                             _hd230311230352_
                                             _tl230310230354_
                                             ___splice245002245003_
                                             _target230313230357_
                                             _tl230315230359_)
                                            (___kont245004245005_))))
                                    (___kont245004245005_))))
                            (___kont245004245005_))))
                    (___kont245004245005_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind230214_)
        (let* ((___stx245028245029_ _bind230214_)
               (_g230217230234_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx245028245029_)))))
          (let ((___kont245030245031_
                 (lambda (_L230270_ _L230271_)
                   (if (let () (declare (not safe)) (gx#identifier? _L230271_))
                       (let ((_$e230287_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L230270_))))
                         (if _$e230287_
                             _$e230287_
                             (let ((_$e230290_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L230270_))))
                               (if _$e230290_
                                   _$e230290_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L230270_))))))
                       '#f)))
                (___kont245032245033_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx245028245029_))
                (let ((_e230223230246_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx245028245029_))))
                  (let ((_tl230221230251_
                         (let () (declare (not safe)) (##cdr _e230223230246_)))
                        (_hd230222230249_
                         (let ()
                           (declare (not safe))
                           (##car _e230223230246_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd230222230249_))
                        (let ((_e230226230254_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd230222230249_))))
                          (let ((_tl230224230259_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e230226230254_)))
                                (_hd230225230257_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e230226230254_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl230224230259_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl230221230251_))
                                    (let ((_e230229230262_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl230221230251_))))
                                      (let ((_tl230227230267_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230229230262_)))
                                            (_hd230228230265_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230229230262_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl230227230267_))
                                            (___kont245030245031_
                                             _hd230228230265_
                                             _hd230225230257_)
                                            (___kont245032245033_))))
                                    (___kont245032245033_))
                                (___kont245032245033_))))
                        (___kont245032245033_))))
                (___kont245032245033_))))))))
