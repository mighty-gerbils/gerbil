(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1708451996)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl123299_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp125392 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl123299_ __tmp125392))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123299_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123299_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123299_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123299_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl123299_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx123282_ . _args123284_)
        (let ((__tmp125394
               (lambda ()
                 (declare (not safe))
                 (if (null? _args123284_)
                     (gxc#compile-e__0 _stx123282_)
                     (let ((_arg1123289_ (car _args123284_))
                           (_rest123291_ (cdr _args123284_)))
                       (if (null? _rest123291_)
                           (gxc#compile-e__1 _stx123282_ _arg1123289_)
                           (let ((_arg2123294_ (car _rest123291_))
                                 (_rest123296_ (cdr _rest123291_)))
                             (if (null? _rest123296_)
                                 (gxc#compile-e__2
                                  _stx123282_
                                  _arg1123289_
                                  _arg2123294_)
                                 (apply gxc#compile-e
                                        _stx123282_
                                        _arg1123289_
                                        _arg2123294_
                                        _rest123296_))))))))
              (__tmp125393 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp125394
           gxc#current-compile-methods
           __tmp125393))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl123279_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp125395 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl123279_ __tmp125395))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123279_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123279_ '%#call gxc#basic-expression-type-call%))
           _tbl123279_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx123262_ . _args123264_)
        (let ((__tmp125397
               (lambda ()
                 (declare (not safe))
                 (if (null? _args123264_)
                     (gxc#compile-e__0 _stx123262_)
                     (let ((_arg1123269_ (car _args123264_))
                           (_rest123271_ (cdr _args123264_)))
                       (if (null? _rest123271_)
                           (gxc#compile-e__1 _stx123262_ _arg1123269_)
                           (let ((_arg2123274_ (car _rest123271_))
                                 (_rest123276_ (cdr _rest123271_)))
                             (if (null? _rest123276_)
                                 (gxc#compile-e__2
                                  _stx123262_
                                  _arg1123269_
                                  _arg2123274_)
                                 (apply gxc#compile-e
                                        _stx123262_
                                        _arg1123269_
                                        _arg2123274_
                                        _rest123276_))))))))
              (__tmp125396 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp125397
           gxc#current-compile-methods
           __tmp125396))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl123259_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp125398 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl123259_ __tmp125398))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123259_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123259_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123259_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123259_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123259_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123259_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123259_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123259_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123259_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123259_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123259_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123259_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123259_ '%#set! gxc#collect-body-setq%))
           _tbl123259_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx123242_ . _args123244_)
        (let ((__tmp125400
               (lambda ()
                 (declare (not safe))
                 (if (null? _args123244_)
                     (gxc#compile-e__0 _stx123242_)
                     (let ((_arg1123249_ (car _args123244_))
                           (_rest123251_ (cdr _args123244_)))
                       (if (null? _rest123251_)
                           (gxc#compile-e__1 _stx123242_ _arg1123249_)
                           (let ((_arg2123254_ (car _rest123251_))
                                 (_rest123256_ (cdr _rest123251_)))
                             (if (null? _rest123256_)
                                 (gxc#compile-e__2
                                  _stx123242_
                                  _arg1123249_
                                  _arg2123254_)
                                 (apply gxc#compile-e
                                        _stx123242_
                                        _arg1123249_
                                        _arg2123254_
                                        _rest123256_))))))))
              (__tmp125399 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp125400
           gxc#current-compile-methods
           __tmp125399))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl123239_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp125401 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl123239_ __tmp125401))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123239_ '%#begin gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123239_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123239_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123239_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123239_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123239_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123239_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123239_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123239_ '%#ref gxc#basic-expression-type-ref%))
           _tbl123239_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx123222_ . _args123224_)
        (let ((__tmp125403
               (lambda ()
                 (declare (not safe))
                 (if (null? _args123224_)
                     (gxc#compile-e__0 _stx123222_)
                     (let ((_arg1123229_ (car _args123224_))
                           (_rest123231_ (cdr _args123224_)))
                       (if (null? _rest123231_)
                           (gxc#compile-e__1 _stx123222_ _arg1123229_)
                           (let ((_arg2123234_ (car _rest123231_))
                                 (_rest123236_ (cdr _rest123231_)))
                             (if (null? _rest123236_)
                                 (gxc#compile-e__2
                                  _stx123222_
                                  _arg1123229_
                                  _arg2123234_)
                                 (apply gxc#compile-e
                                        _stx123222_
                                        _arg1123229_
                                        _arg2123234_
                                        _rest123236_))))))))
              (__tmp125402 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp125403
           gxc#current-compile-methods
           __tmp125402))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl123219_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp125404 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl123219_ __tmp125404))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123219_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123219_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123219_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123219_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl123219_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx123202_ . _args123204_)
        (let ((__tmp125406
               (lambda ()
                 (declare (not safe))
                 (if (null? _args123204_)
                     (gxc#compile-e__0 _stx123202_)
                     (let ((_arg1123209_ (car _args123204_))
                           (_rest123211_ (cdr _args123204_)))
                       (if (null? _rest123211_)
                           (gxc#compile-e__1 _stx123202_ _arg1123209_)
                           (let ((_arg2123214_ (car _rest123211_))
                                 (_rest123216_ (cdr _rest123211_)))
                             (if (null? _rest123216_)
                                 (gxc#compile-e__2
                                  _stx123202_
                                  _arg1123209_
                                  _arg2123214_)
                                 (apply gxc#compile-e
                                        _stx123202_
                                        _arg1123209_
                                        _arg2123214_
                                        _rest123216_))))))))
              (__tmp125405 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp125406
           gxc#current-compile-methods
           __tmp125405))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx123105_)
        (let* ((___stx123312123313_ _stx123105_)
               (_g123108123128_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx123312123313_)))))
          (let ((___kont123314123315_
                 (lambda (_L123172_ _L123173_)
                   (let ((_sym123191_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L123173_))))
                     (if (let ((__tmp125407 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp125407 _sym123191_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym123191_))
                         (let ((_type123192123194_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L123172_))))
                           (if _type123192123194_
                               (let ((_type123197_ _type123192123194_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym123191_
                                  _type123197_))
                               '#f))))))
                (___kont123316123317_ (lambda () '#!void)))
            (let ((___match123345123346_
                   (lambda (_e123112123140_
                            _hd123113123143_
                            _tl123114123145_
                            _e123115123148_
                            _hd123116123151_
                            _tl123117123153_
                            _e123118123156_
                            _hd123119123159_
                            _tl123120123161_
                            _e123121123164_
                            _hd123122123167_
                            _tl123123123169_)
                     (let ((_L123172_ _hd123122123167_)
                           (_L123173_ _hd123119123159_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L123173_))
                           (___kont123314123315_ _L123172_ _L123173_)
                           (___kont123316123317_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx123312123313_))
                  (let ((_e123112123140_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx123312123313_))))
                    (let ((_tl123114123145_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123112123140_)))
                          (_hd123113123143_
                           (let ()
                             (declare (not safe))
                             (##car _e123112123140_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123114123145_))
                          (let ((_e123115123148_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123114123145_))))
                            (let ((_tl123117123153_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123115123148_)))
                                  (_hd123116123151_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123115123148_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd123116123151_))
                                  (let ((_e123118123156_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd123116123151_))))
                                    (let ((_tl123120123161_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123118123156_)))
                                          (_hd123119123159_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123118123156_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123120123161_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123117123153_))
                                              (let ((_e123121123164_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123117123153_))))
                                                (let ((_tl123123123169_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123121123164_)))
                                                      (_hd123122123167_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123121123164_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123123123169_))
                                                      (___match123345123346_
                                                       _e123112123140_
                                                       _hd123113123143_
                                                       _tl123114123145_
                                                       _e123115123148_
                                                       _hd123116123151_
                                                       _tl123117123153_
                                                       _e123118123156_
                                                       _hd123119123159_
                                                       _tl123120123161_
                                                       _e123121123164_
                                                       _hd123122123167_
                                                       _tl123123123169_)
                                                      (___kont123316123317_))))
                                              (___kont123316123317_))
                                          (___kont123316123317_))))
                                  (___kont123316123317_))))
                          (___kont123316123317_))))
                  (___kont123316123317_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx122961_)
        (let* ((___stx123348123349_ _stx122961_)
               (_g122964122995_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx123348123349_)))))
          (let ((___kont123350123351_
                 (lambda (_L123077_ _L123078_)
                   (let ((_sym123094_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L123078_))))
                     (if (let ((__tmp125408 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp125408 _sym123094_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym123094_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym123094_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym123094_))
                             (let ((_type123095123097_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L123077_))))
                               (if _type123095123097_
                                   (let ((_type123100_ _type123095123097_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym123094_
                                      _type123100_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L123077_)))))
                (___kont123352123353_
                 (lambda (_L123024_ _L123025_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L123024_)))))
            (let ((___match123381123382_
                   (lambda (_e122968123045_
                            _hd122969123048_
                            _tl122970123050_
                            _e122971123053_
                            _hd122972123056_
                            _tl122973123058_
                            _e122974123061_
                            _hd122975123064_
                            _tl122976123066_
                            _e122977123069_
                            _hd122978123072_
                            _tl122979123074_)
                     (let ((_L123077_ _hd122978123072_)
                           (_L123078_ _hd122975123064_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L123078_))
                           (___kont123350123351_ _L123077_ _L123078_)
                           (___kont123352123353_
                            _hd122978123072_
                            _hd122972123056_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx123348123349_))
                  (let ((_e122968123045_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx123348123349_))))
                    (let ((_tl122970123050_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122968123045_)))
                          (_hd122969123048_
                           (let ()
                             (declare (not safe))
                             (##car _e122968123045_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122970123050_))
                          (let ((_e122971123053_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122970123050_))))
                            (let ((_tl122973123058_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122971123053_)))
                                  (_hd122972123056_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122971123053_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd122972123056_))
                                  (let ((_e122974123061_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd122972123056_))))
                                    (let ((_tl122976123066_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122974123061_)))
                                          (_hd122975123064_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122974123061_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122976123066_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122973123058_))
                                              (let ((_e122977123069_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122973123058_))))
                                                (let ((_tl122979123074_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122977123069_)))
                                                      (_hd122978123072_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122977123069_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122979123074_))
                                                      (___match123381123382_
                                                       _e122968123045_
                                                       _hd122969123048_
                                                       _tl122970123050_
                                                       _e122971123053_
                                                       _hd122972123056_
                                                       _tl122973123058_
                                                       _e122974123061_
                                                       _hd122975123064_
                                                       _tl122976123066_
                                                       _e122977123069_
                                                       _hd122978123072_
                                                       _tl122979123074_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g122964122995_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g122964122995_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122973123058_))
                                              (let ((_e122988123016_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122973123058_))))
                                                (let ((_tl122990123021_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122988123016_)))
                                                      (_hd122989123019_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122988123016_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122990123021_))
                                                      (___kont123352123353_
                                                       _hd122989123019_
                                                       _hd122972123056_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g122964122995_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g122964122995_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122973123058_))
                                      (let ((_e122988123016_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122973123058_))))
                                        (let ((_tl122990123021_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122988123016_)))
                                              (_hd122989123019_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122988123016_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122990123021_))
                                              (___kont123352123353_
                                               _hd122989123019_
                                               _hd122972123056_)
                                              (let ()
                                                (declare (not safe))
                                                (_g122964122995_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122964122995_))))))
                          (let () (declare (not safe)) (_g122964122995_)))))
                  (let () (declare (not safe)) (_g122964122995_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx122746_)
        (letrec ((_collect-e122748_
                  (lambda (_hd122905_ _expr122906_)
                    (let* ((___stx123404123405_ _hd122905_)
                           (_g122909122919_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx123404123405_)))))
                      (let ((___kont123406123407_
                             (lambda (_L122939_)
                               (let ((_sym122950_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L122939_))))
                                 (if (let ((__tmp125409
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp125409 _sym122950_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym122950_))
                                     (let ((_type122951122953_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr122906_))))
                                       (if _type122951122953_
                                           (let ((_type122956_
                                                  _type122951122953_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym122950_
                                              _type122956_
                                              '#t))
                                           '#f))))))
                            (___kont123408123409_ (lambda () '#!void)))
                        (let ((___match123417123418_
                               (lambda (_e122912122931_
                                        _hd122913122934_
                                        _tl122914122936_)
                                 (let ((_L122939_ _hd122913122934_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L122939_))
                                       (___kont123406123407_ _L122939_)
                                       (___kont123408123409_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx123404123405_))
                              (let ((_e122912122931_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx123404123405_))))
                                (let ((_tl122914122936_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122912122931_)))
                                      (_hd122913122934_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122912122931_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122914122936_))
                                      (___match123417123418_
                                       _e122912122931_
                                       _hd122913122934_
                                       _tl122914122936_)
                                      (___kont123408123409_))))
                              (___kont123408123409_))))))))
          (let* ((_g122750122785_
                  (lambda (_g122751122782_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g122751122782_))))
                 (_g122749122902_
                  (lambda (_g122751122788_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g122751122788_))
                        (let ((_e122755122790_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g122751122788_))))
                          (let ((_hd122756122793_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122755122790_)))
                                (_tl122757122795_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122755122790_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122757122795_))
                                (let ((_e122758122798_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122757122795_))))
                                  (let ((_hd122759122801_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122758122798_)))
                                        (_tl122760122803_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122758122798_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd122759122801_))
                                        (let ((_g125410_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd122759122801_
                                                  '0))))
                                          (begin
                                            (let ((_g125411_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g125410_)
                                                         (##vector-length
                                                          _g125410_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g125411_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g125411_)))
                                            (let ((_target122761122806_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g125410_
                                                      0)))
                                                  (_tl122763122808_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g125410_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl122763122808_))
                                                  (letrec ((_loop122764122811_
                                                            (lambda (_hd122762122814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr122768122816_
                             _hd122769122818_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd122762122814_))
                          (let ((_e122765122821_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd122762122814_))))
                            (let ((_lp-hd122766122824_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122765122821_)))
                                  (_lp-tl122767122826_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122765122821_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd122766122824_))
                                  (let ((_e122772122829_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd122766122824_))))
                                    (let ((_hd122773122832_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122772122829_)))
                                          (_tl122774122834_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122772122829_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl122774122834_))
                                          (let ((_e122775122837_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl122774122834_))))
                                            (let ((_hd122776122840_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e122775122837_)))
                                                  (_tl122777122842_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e122775122837_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl122777122842_))
                                                  (let ((__tmp125413
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd122776122840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr122768122816_)))
                (__tmp125412
                 (let ()
                   (declare (not safe))
                   (cons _hd122773122832_ _hd122769122818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop122764122811_
                                                     _lp-tl122767122826_
                                                     __tmp125413
                                                     __tmp125412))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122750122785_
                                                     _g122751122788_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g122750122785_
                                             _g122751122788_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122750122785_ _g122751122788_)))))
                          (let ((_expr122770122845_
                                 (reverse _expr122768122816_))
                                (_hd122771122847_ (reverse _hd122769122818_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122760122803_))
                                (let ((_e122778122850_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122760122803_))))
                                  (let ((_hd122779122853_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122778122850_)))
                                        (_tl122780122855_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122778122850_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122780122855_))
                                        ((lambda (_L122858_
                                                  _L122859_
                                                  _L122860_)
                                           (for-each
                                            _collect-e122748_
                                            (let ((__tmp125414
                                                   (lambda (_g122880122883_
                                                            _g122881122885_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g122880122883_
                                                             _g122881122885_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp125414
                                                      '()
                                                      _L122860_))
                                            (let ((__tmp125415
                                                   (lambda (_g122887122890_
                                                            _g122888122892_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g122887122890_
                                                             _g122888122892_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp125415
                                                      '()
                                                      _L122859_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp125416
                                                   (lambda (_g122894122897_
                                                            _g122895122899_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g122894122897_
                                                             _g122895122899_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp125416
                                                      '()
                                                      _L122859_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L122858_)))
                                         _hd122779122853_
                                         _expr122770122845_
                                         _hd122771122847_)
                                        (let ()
                                          (declare (not safe))
                                          (_g122750122785_ _g122751122788_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g122750122785_ _g122751122788_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop122764122811_
                                                       _target122761122806_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122750122785_
                                                     _g122751122788_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g122750122785_ _g122751122788_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g122750122785_ _g122751122788_)))))
                        (let ()
                          (declare (not safe))
                          (_g122750122785_ _g122751122788_))))))
            (declare (not safe))
            (_g122749122902_ _stx122746_)))))
    (define gxc#collect-type-call%
      (lambda (_stx122238_)
        (let* ((___stx123420123421_ _stx122238_)
               (_g122242122357_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx123420123421_)))))
          (let ((___kont123422123423_
                 (lambda (_L122696_ _L122697_ _L122698_ _L122699_ _L122700_)
                   (let ((__tmp125420
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L122699_)))
                         (__tmp125419
                          (let () (declare (not safe)) (gx#stx-e _L122698_)))
                         (__tmp125418
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L122697_)))
                         (__tmp125417
                          (let () (declare (not safe)) (gx#stx-e _L122696_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp125420
                      __tmp125419
                      __tmp125418
                      __tmp125417))))
                (___kont123424123425_
                 (lambda (_L122524_ _L122525_ _L122526_ _L122527_)
                   (let ((__tmp125423
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L122526_)))
                         (__tmp125422
                          (let () (declare (not safe)) (gx#stx-e _L122525_)))
                         (__tmp125421
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L122524_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp125423
                      __tmp125422
                      __tmp125421
                      '#f))))
                (___kont123426123427_
                 (lambda (_L122394_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp125424
                           (lambda (_g122407122410_ _g122408122412_)
                             (let ()
                               (declare (not safe))
                               (cons _g122407122410_ _g122408122412_)))))
                      (declare (not safe))
                      (foldr1 __tmp125424 '() _L122394_))))))
            (let* ((___match123677123678_
                    (lambda (_e122341122362_
                             _hd122342122365_
                             _tl122343122367_
                             ___splice123428123429_
                             _target122344122370_
                             _tl122346122372_)
                      (letrec ((_loop122347122375_
                                (lambda (_hd122345122378_ _expr122351122380_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122345122378_))
                                      (let ((_e122348122383_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122345122378_))))
                                        (let ((_lp-tl122350122388_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122348122383_)))
                                              (_lp-hd122349122386_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122348122383_))))
                                          (let ((__tmp125425
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122349122386_
                                                         _expr122351122380_))))
                                            (declare (not safe))
                                            (_loop122347122375_
                                             _lp-tl122350122388_
                                             __tmp125425))))
                                      (let ((_expr122352122391_
                                             (reverse _expr122351122380_)))
                                        (___kont123426123427_
                                         _expr122352122391_))))))
                        (let ()
                          (declare (not safe))
                          (_loop122347122375_ _target122344122370_ '())))))
                   (___match123557123558_
                    (lambda (_e122249122568_
                             _hd122250122571_
                             _tl122251122573_
                             _e122252122576_
                             _hd122253122579_
                             _tl122254122581_
                             _e122255122584_
                             _hd122256122587_
                             _tl122257122589_
                             _e122258122592_
                             _hd122259122595_
                             _tl122260122597_
                             _e122261122600_
                             _hd122262122603_
                             _tl122263122605_
                             _e122264122608_
                             _hd122265122611_
                             _tl122266122613_
                             _e122267122616_
                             _hd122268122619_
                             _tl122269122621_
                             _e122270122624_
                             _hd122271122627_
                             _tl122272122629_
                             _e122273122632_
                             _hd122274122635_
                             _tl122275122637_
                             _e122276122640_
                             _hd122277122643_
                             _tl122278122645_
                             _e122279122648_
                             _hd122280122651_
                             _tl122281122653_
                             _e122282122656_
                             _hd122283122659_
                             _tl122284122661_
                             _e122285122664_
                             _hd122286122667_
                             _tl122287122669_
                             _e122288122672_
                             _hd122289122675_
                             _tl122290122677_
                             _e122291122680_
                             _hd122292122683_
                             _tl122293122685_
                             _e122294122688_
                             _hd122295122691_
                             _tl122296122693_)
                      (let ((_L122696_ _hd122295122691_)
                            (_L122697_ _hd122286122667_)
                            (_L122698_ _hd122277122643_)
                            (_L122699_ _hd122268122619_)
                            (_L122700_ _hd122259122595_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L122700_
                               'bind-method!))
                            (___kont123422123423_
                             _L122696_
                             _L122697_
                             _L122698_
                             _L122699_
                             _L122700_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl122251122573_))
                                (let ((___splice123428123429_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl122251122573_
                                          '0))))
                                  (let ((_tl122346122372_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice123428123429_
                                            '1)))
                                        (_target122344122370_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice123428123429_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122346122372_))
                                        (___match123677123678_
                                         _e122249122568_
                                         _hd122250122571_
                                         _tl122251122573_
                                         ___splice123428123429_
                                         _target122344122370_
                                         _tl122346122372_)
                                        (let ()
                                          (declare (not safe))
                                          (_g122242122357_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g122242122357_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx123420123421_))
                  (let ((_e122249122568_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx123420123421_))))
                    (let ((_tl122251122573_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122249122568_)))
                          (_hd122250122571_
                           (let ()
                             (declare (not safe))
                             (##car _e122249122568_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122251122573_))
                          (let ((_e122252122576_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122251122573_))))
                            (let ((_tl122254122581_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122252122576_)))
                                  (_hd122253122579_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122252122576_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd122253122579_))
                                  (let ((_e122255122584_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd122253122579_))))
                                    (let ((_tl122257122589_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122255122584_)))
                                          (_hd122256122587_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122255122584_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd122256122587_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd122256122587_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122257122589_))
                                                  (let ((_e122258122592_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122257122589_))))
                                                    (let ((_tl122260122597_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122258122592_)))
                                                          (_hd122259122595_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122258122592_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122260122597_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl122254122581_))
                      (let ((_e122261122600_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl122254122581_))))
                        (let ((_tl122263122605_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122261122600_)))
                              (_hd122262122603_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122261122600_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd122262122603_))
                              (let ((_e122264122608_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd122262122603_))))
                                (let ((_tl122266122613_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122264122608_)))
                                      (_hd122265122611_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122264122608_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd122265122611_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd122265122611_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122266122613_))
                                              (let ((_e122267122616_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122266122613_))))
                                                (let ((_tl122269122621_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122267122616_)))
                                                      (_hd122268122619_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122267122616_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122269122621_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl122263122605_))
                                                          (let ((_e122270122624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl122263122605_))))
                    (let ((_tl122272122629_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122270122624_)))
                          (_hd122271122627_
                           (let ()
                             (declare (not safe))
                             (##car _e122270122624_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd122271122627_))
                          (let ((_e122273122632_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd122271122627_))))
                            (let ((_tl122275122637_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122273122632_)))
                                  (_hd122274122635_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122273122632_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd122274122635_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd122274122635_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl122275122637_))
                                          (let ((_e122276122640_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl122275122637_))))
                                            (let ((_tl122278122645_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e122276122640_)))
                                                  (_hd122277122643_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e122276122640_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl122278122645_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122272122629_))
                                                      (let ((_e122279122648_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122272122629_))))
                (let ((_tl122281122653_
                       (let () (declare (not safe)) (##cdr _e122279122648_)))
                      (_hd122280122651_
                       (let () (declare (not safe)) (##car _e122279122648_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122280122651_))
                      (let ((_e122282122656_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122280122651_))))
                        (let ((_tl122284122661_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122282122656_)))
                              (_hd122283122659_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122282122656_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122283122659_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122283122659_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122284122661_))
                                      (let ((_e122285122664_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122284122661_))))
                                        (let ((_tl122287122669_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122285122664_)))
                                              (_hd122286122667_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122285122664_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122287122669_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122281122653_))
                                                  (let ((_e122288122672_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122281122653_))))
                                                    (let ((_tl122290122677_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122288122672_)))
                                                          (_hd122289122675_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122288122672_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122289122675_))
                                                          (let ((_e122291122680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122289122675_))))
                    (let ((_tl122293122685_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122291122680_)))
                          (_hd122292122683_
                           (let ()
                             (declare (not safe))
                             (##car _e122291122680_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122292122683_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd122292122683_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122293122685_))
                                  (let ((_e122294122688_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122293122685_))))
                                    (let ((_tl122296122693_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122294122688_)))
                                          (_hd122295122691_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122294122688_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122296122693_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122290122677_))
                                              (___match123557123558_
                                               _e122249122568_
                                               _hd122250122571_
                                               _tl122251122573_
                                               _e122252122576_
                                               _hd122253122579_
                                               _tl122254122581_
                                               _e122255122584_
                                               _hd122256122587_
                                               _tl122257122589_
                                               _e122258122592_
                                               _hd122259122595_
                                               _tl122260122597_
                                               _e122261122600_
                                               _hd122262122603_
                                               _tl122263122605_
                                               _e122264122608_
                                               _hd122265122611_
                                               _tl122266122613_
                                               _e122267122616_
                                               _hd122268122619_
                                               _tl122269122621_
                                               _e122270122624_
                                               _hd122271122627_
                                               _tl122272122629_
                                               _e122273122632_
                                               _hd122274122635_
                                               _tl122275122637_
                                               _e122276122640_
                                               _hd122277122643_
                                               _tl122278122645_
                                               _e122279122648_
                                               _hd122280122651_
                                               _tl122281122653_
                                               _e122282122656_
                                               _hd122283122659_
                                               _tl122284122661_
                                               _e122285122664_
                                               _hd122286122667_
                                               _tl122287122669_
                                               _e122288122672_
                                               _hd122289122675_
                                               _tl122290122677_
                                               _e122291122680_
                                               _hd122292122683_
                                               _tl122293122685_
                                               _e122294122688_
                                               _hd122295122691_
                                               _tl122296122693_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl122251122573_))
                                                  (let ((___splice123428123429_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl122251122573_
                                                            '0))))
                                                    (let ((_tl122346122372_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice123428123429_
                                                              '1)))
                                                          (_target122344122370_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice123428123429_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122346122372_))
                                                          (___match123677123678_
                                                           _e122249122568_
                                                           _hd122250122571_
                                                           _tl122251122573_
                                                           ___splice123428123429_
                                                           _target122344122370_
                                                           _tl122346122372_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g122242122357_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122242122357_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl122251122573_))
                                              (let ((___splice123428123429_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl122251122573_
                                                        '0))))
                                                (let ((_tl122346122372_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice123428123429_
                                                          '1)))
                                                      (_target122344122370_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice123428123429_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122346122372_))
                                                      (___match123677123678_
                                                       _e122249122568_
                                                       _hd122250122571_
                                                       _tl122251122573_
                                                       ___splice123428123429_
                                                       _target122344122370_
                                                       _tl122346122372_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g122242122357_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g122242122357_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl122251122573_))
                                      (let ((___splice123428123429_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl122251122573_
                                                '0))))
                                        (let ((_tl122346122372_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice123428123429_
                                                  '1)))
                                              (_target122344122370_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice123428123429_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122346122372_))
                                              (___match123677123678_
                                               _e122249122568_
                                               _hd122250122571_
                                               _tl122251122573_
                                               ___splice123428123429_
                                               _target122344122370_
                                               _tl122346122372_)
                                              (let ()
                                                (declare (not safe))
                                                (_g122242122357_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122242122357_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl122251122573_))
                                  (let ((___splice123428123429_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl122251122573_
                                            '0))))
                                    (let ((_tl122346122372_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice123428123429_
                                              '1)))
                                          (_target122344122370_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice123428123429_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122346122372_))
                                          (___match123677123678_
                                           _e122249122568_
                                           _hd122250122571_
                                           _tl122251122573_
                                           ___splice123428123429_
                                           _target122344122370_
                                           _tl122346122372_)
                                          (let ()
                                            (declare (not safe))
                                            (_g122242122357_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122242122357_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl122251122573_))
                              (let ((___splice123428123429_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl122251122573_
                                        '0))))
                                (let ((_tl122346122372_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice123428123429_
                                          '1)))
                                      (_target122344122370_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice123428123429_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122346122372_))
                                      (___match123677123678_
                                       _e122249122568_
                                       _hd122250122571_
                                       _tl122251122573_
                                       ___splice123428123429_
                                       _target122344122370_
                                       _tl122346122372_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122242122357_)))))
                              (let ()
                                (declare (not safe))
                                (_g122242122357_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl122251122573_))
                      (let ((___splice123428123429_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl122251122573_ '0))))
                        (let ((_tl122346122372_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice123428123429_ '1)))
                              (_target122344122370_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice123428123429_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl122346122372_))
                              (___match123677123678_
                               _e122249122568_
                               _hd122250122571_
                               _tl122251122573_
                               ___splice123428123429_
                               _target122344122370_
                               _tl122346122372_)
                              (let ()
                                (declare (not safe))
                                (_g122242122357_)))))
                      (let () (declare (not safe)) (_g122242122357_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122281122653_))
                                                      (if (let ((__tmp125426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp125426 'bind-method!))
                  (let ((_L122524_ _hd122286122667_)
                        (_L122525_ _hd122277122643_)
                        (_L122526_ _hd122268122619_)
                        (_L122527_ _hd122259122595_))
                    (___kont123424123425_
                     _L122524_
                     _L122525_
                     _L122526_
                     _L122527_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl122251122573_))
                      (let ((___splice123428123429_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl122251122573_ '0))))
                        (let ((_tl122346122372_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice123428123429_ '1)))
                              (_target122344122370_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice123428123429_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl122346122372_))
                              (___match123677123678_
                               _e122249122568_
                               _hd122250122571_
                               _tl122251122573_
                               ___splice123428123429_
                               _target122344122370_
                               _tl122346122372_)
                              (let ()
                                (declare (not safe))
                                (_g122242122357_)))))
                      (let () (declare (not safe)) (_g122242122357_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl122251122573_))
                  (let ((___splice123428123429_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl122251122573_ '0))))
                    (let ((_tl122346122372_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice123428123429_ '1)))
                          (_target122344122370_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice123428123429_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl122346122372_))
                          (___match123677123678_
                           _e122249122568_
                           _hd122250122571_
                           _tl122251122573_
                           ___splice123428123429_
                           _target122344122370_
                           _tl122346122372_)
                          (let () (declare (not safe)) (_g122242122357_)))))
                  (let () (declare (not safe)) (_g122242122357_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl122251122573_))
                                                  (let ((___splice123428123429_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl122251122573_
                                                            '0))))
                                                    (let ((_tl122346122372_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice123428123429_
                                                              '1)))
                                                          (_target122344122370_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice123428123429_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122346122372_))
                                                          (___match123677123678_
                                                           _e122249122568_
                                                           _hd122250122571_
                                                           _tl122251122573_
                                                           ___splice123428123429_
                                                           _target122344122370_
                                                           _tl122346122372_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g122242122357_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122242122357_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl122251122573_))
                                          (let ((___splice123428123429_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl122251122573_
                                                    '0))))
                                            (let ((_tl122346122372_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice123428123429_
                                                      '1)))
                                                  (_target122344122370_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice123428123429_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl122346122372_))
                                                  (___match123677123678_
                                                   _e122249122568_
                                                   _hd122250122571_
                                                   _tl122251122573_
                                                   ___splice123428123429_
                                                   _target122344122370_
                                                   _tl122346122372_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122242122357_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g122242122357_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl122251122573_))
                                      (let ((___splice123428123429_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl122251122573_
                                                '0))))
                                        (let ((_tl122346122372_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice123428123429_
                                                  '1)))
                                              (_target122344122370_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice123428123429_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122346122372_))
                                              (___match123677123678_
                                               _e122249122568_
                                               _hd122250122571_
                                               _tl122251122573_
                                               ___splice123428123429_
                                               _target122344122370_
                                               _tl122346122372_)
                                              (let ()
                                                (declare (not safe))
                                                (_g122242122357_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122242122357_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl122251122573_))
                                  (let ((___splice123428123429_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl122251122573_
                                            '0))))
                                    (let ((_tl122346122372_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice123428123429_
                                              '1)))
                                          (_target122344122370_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice123428123429_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122346122372_))
                                          (___match123677123678_
                                           _e122249122568_
                                           _hd122250122571_
                                           _tl122251122573_
                                           ___splice123428123429_
                                           _target122344122370_
                                           _tl122346122372_)
                                          (let ()
                                            (declare (not safe))
                                            (_g122242122357_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122242122357_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl122251122573_))
                          (let ((___splice123428123429_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl122251122573_
                                    '0))))
                            (let ((_tl122346122372_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice123428123429_ '1)))
                                  (_target122344122370_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice123428123429_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122346122372_))
                                  (___match123677123678_
                                   _e122249122568_
                                   _hd122250122571_
                                   _tl122251122573_
                                   ___splice123428123429_
                                   _target122344122370_
                                   _tl122346122372_)
                                  (let ()
                                    (declare (not safe))
                                    (_g122242122357_)))))
                          (let () (declare (not safe)) (_g122242122357_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl122251122573_))
                  (let ((___splice123428123429_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl122251122573_ '0))))
                    (let ((_tl122346122372_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice123428123429_ '1)))
                          (_target122344122370_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice123428123429_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl122346122372_))
                          (___match123677123678_
                           _e122249122568_
                           _hd122250122571_
                           _tl122251122573_
                           ___splice123428123429_
                           _target122344122370_
                           _tl122346122372_)
                          (let () (declare (not safe)) (_g122242122357_)))))
                  (let () (declare (not safe)) (_g122242122357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl122251122573_))
                                                      (let ((___splice123428123429_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl122251122573_ '0))))
                (let ((_tl122346122372_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice123428123429_ '1)))
                      (_target122344122370_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice123428123429_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl122346122372_))
                      (___match123677123678_
                       _e122249122568_
                       _hd122250122571_
                       _tl122251122573_
                       ___splice123428123429_
                       _target122344122370_
                       _tl122346122372_)
                      (let () (declare (not safe)) (_g122242122357_)))))
              (let () (declare (not safe)) (_g122242122357_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl122251122573_))
                                              (let ((___splice123428123429_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl122251122573_
                                                        '0))))
                                                (let ((_tl122346122372_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice123428123429_
                                                          '1)))
                                                      (_target122344122370_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice123428123429_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122346122372_))
                                                      (___match123677123678_
                                                       _e122249122568_
                                                       _hd122250122571_
                                                       _tl122251122573_
                                                       ___splice123428123429_
                                                       _target122344122370_
                                                       _tl122346122372_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g122242122357_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g122242122357_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl122251122573_))
                                          (let ((___splice123428123429_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl122251122573_
                                                    '0))))
                                            (let ((_tl122346122372_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice123428123429_
                                                      '1)))
                                                  (_target122344122370_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice123428123429_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl122346122372_))
                                                  (___match123677123678_
                                                   _e122249122568_
                                                   _hd122250122571_
                                                   _tl122251122573_
                                                   ___splice123428123429_
                                                   _target122344122370_
                                                   _tl122346122372_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122242122357_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g122242122357_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl122251122573_))
                                      (let ((___splice123428123429_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl122251122573_
                                                '0))))
                                        (let ((_tl122346122372_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice123428123429_
                                                  '1)))
                                              (_target122344122370_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice123428123429_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122346122372_))
                                              (___match123677123678_
                                               _e122249122568_
                                               _hd122250122571_
                                               _tl122251122573_
                                               ___splice123428123429_
                                               _target122344122370_
                                               _tl122346122372_)
                                              (let ()
                                                (declare (not safe))
                                                (_g122242122357_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122242122357_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl122251122573_))
                              (let ((___splice123428123429_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl122251122573_
                                        '0))))
                                (let ((_tl122346122372_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice123428123429_
                                          '1)))
                                      (_target122344122370_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice123428123429_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122346122372_))
                                      (___match123677123678_
                                       _e122249122568_
                                       _hd122250122571_
                                       _tl122251122573_
                                       ___splice123428123429_
                                       _target122344122370_
                                       _tl122346122372_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122242122357_)))))
                              (let ()
                                (declare (not safe))
                                (_g122242122357_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl122251122573_))
                      (let ((___splice123428123429_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl122251122573_ '0))))
                        (let ((_tl122346122372_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice123428123429_ '1)))
                              (_target122344122370_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice123428123429_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl122346122372_))
                              (___match123677123678_
                               _e122249122568_
                               _hd122250122571_
                               _tl122251122573_
                               ___splice123428123429_
                               _target122344122370_
                               _tl122346122372_)
                              (let ()
                                (declare (not safe))
                                (_g122242122357_)))))
                      (let () (declare (not safe)) (_g122242122357_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl122251122573_))
                  (let ((___splice123428123429_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl122251122573_ '0))))
                    (let ((_tl122346122372_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice123428123429_ '1)))
                          (_target122344122370_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice123428123429_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl122346122372_))
                          (___match123677123678_
                           _e122249122568_
                           _hd122250122571_
                           _tl122251122573_
                           ___splice123428123429_
                           _target122344122370_
                           _tl122346122372_)
                          (let () (declare (not safe)) (_g122242122357_)))))
                  (let () (declare (not safe)) (_g122242122357_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl122251122573_))
                                                  (let ((___splice123428123429_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl122251122573_
                                                            '0))))
                                                    (let ((_tl122346122372_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice123428123429_
                                                              '1)))
                                                          (_target122344122370_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice123428123429_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122346122372_))
                                                          (___match123677123678_
                                                           _e122249122568_
                                                           _hd122250122571_
                                                           _tl122251122573_
                                                           ___splice123428123429_
                                                           _target122344122370_
                                                           _tl122346122372_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g122242122357_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122242122357_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl122251122573_))
                                              (let ((___splice123428123429_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl122251122573_
                                                        '0))))
                                                (let ((_tl122346122372_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice123428123429_
                                                          '1)))
                                                      (_target122344122370_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice123428123429_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122346122372_))
                                                      (___match123677123678_
                                                       _e122249122568_
                                                       _hd122250122571_
                                                       _tl122251122573_
                                                       ___splice123428123429_
                                                       _target122344122370_
                                                       _tl122346122372_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g122242122357_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g122242122357_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl122251122573_))
                                          (let ((___splice123428123429_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl122251122573_
                                                    '0))))
                                            (let ((_tl122346122372_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice123428123429_
                                                      '1)))
                                                  (_target122344122370_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice123428123429_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl122346122372_))
                                                  (___match123677123678_
                                                   _e122249122568_
                                                   _hd122250122571_
                                                   _tl122251122573_
                                                   ___splice123428123429_
                                                   _target122344122370_
                                                   _tl122346122372_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122242122357_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g122242122357_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl122251122573_))
                                  (let ((___splice123428123429_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl122251122573_
                                            '0))))
                                    (let ((_tl122346122372_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice123428123429_
                                              '1)))
                                          (_target122344122370_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice123428123429_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122346122372_))
                                          (___match123677123678_
                                           _e122249122568_
                                           _hd122250122571_
                                           _tl122251122573_
                                           ___splice123428123429_
                                           _target122344122370_
                                           _tl122346122372_)
                                          (let ()
                                            (declare (not safe))
                                            (_g122242122357_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122242122357_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl122251122573_))
                          (let ((___splice123428123429_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl122251122573_
                                    '0))))
                            (let ((_tl122346122372_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice123428123429_ '1)))
                                  (_target122344122370_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice123428123429_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122346122372_))
                                  (___match123677123678_
                                   _e122249122568_
                                   _hd122250122571_
                                   _tl122251122573_
                                   ___splice123428123429_
                                   _target122344122370_
                                   _tl122346122372_)
                                  (let ()
                                    (declare (not safe))
                                    (_g122242122357_)))))
                          (let () (declare (not safe)) (_g122242122357_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl122251122573_))
                      (let ((___splice123428123429_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl122251122573_ '0))))
                        (let ((_tl122346122372_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice123428123429_ '1)))
                              (_target122344122370_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice123428123429_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl122346122372_))
                              (___match123677123678_
                               _e122249122568_
                               _hd122250122571_
                               _tl122251122573_
                               ___splice123428123429_
                               _target122344122370_
                               _tl122346122372_)
                              (let ()
                                (declare (not safe))
                                (_g122242122357_)))))
                      (let () (declare (not safe)) (_g122242122357_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl122251122573_))
                                                      (let ((___splice123428123429_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl122251122573_ '0))))
                (let ((_tl122346122372_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice123428123429_ '1)))
                      (_target122344122370_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice123428123429_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl122346122372_))
                      (___match123677123678_
                       _e122249122568_
                       _hd122250122571_
                       _tl122251122573_
                       ___splice123428123429_
                       _target122344122370_
                       _tl122346122372_)
                      (let () (declare (not safe)) (_g122242122357_)))))
              (let () (declare (not safe)) (_g122242122357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl122251122573_))
                                                  (let ((___splice123428123429_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl122251122573_
                                                            '0))))
                                                    (let ((_tl122346122372_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice123428123429_
                                                              '1)))
                                                          (_target122344122370_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice123428123429_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122346122372_))
                                                          (___match123677123678_
                                                           _e122249122568_
                                                           _hd122250122571_
                                                           _tl122251122573_
                                                           ___splice123428123429_
                                                           _target122344122370_
                                                           _tl122346122372_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g122242122357_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122242122357_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl122251122573_))
                                              (let ((___splice123428123429_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl122251122573_
                                                        '0))))
                                                (let ((_tl122346122372_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice123428123429_
                                                          '1)))
                                                      (_target122344122370_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice123428123429_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122346122372_))
                                                      (___match123677123678_
                                                       _e122249122568_
                                                       _hd122250122571_
                                                       _tl122251122573_
                                                       ___splice123428123429_
                                                       _target122344122370_
                                                       _tl122346122372_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g122242122357_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g122242122357_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl122251122573_))
                                      (let ((___splice123428123429_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl122251122573_
                                                '0))))
                                        (let ((_tl122346122372_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice123428123429_
                                                  '1)))
                                              (_target122344122370_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice123428123429_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122346122372_))
                                              (___match123677123678_
                                               _e122249122568_
                                               _hd122250122571_
                                               _tl122251122573_
                                               ___splice123428123429_
                                               _target122344122370_
                                               _tl122346122372_)
                                              (let ()
                                                (declare (not safe))
                                                (_g122242122357_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122242122357_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl122251122573_))
                              (let ((___splice123428123429_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl122251122573_
                                        '0))))
                                (let ((_tl122346122372_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice123428123429_
                                          '1)))
                                      (_target122344122370_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice123428123429_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122346122372_))
                                      (___match123677123678_
                                       _e122249122568_
                                       _hd122250122571_
                                       _tl122251122573_
                                       ___splice123428123429_
                                       _target122344122370_
                                       _tl122346122372_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122242122357_)))))
                              (let ()
                                (declare (not safe))
                                (_g122242122357_))))))
                  (let () (declare (not safe)) (_g122242122357_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx122178_)
        (let* ((___stx123680123681_ _stx122178_)
               (_g122181122194_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx123680123681_)))))
          (let ((___kont123682123683_
                 (lambda (_L122222_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L122222_))))
                (___kont123684123685_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx123680123681_))
                (let ((_e122184122206_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx123680123681_))))
                  (let ((_tl122186122211_
                         (let () (declare (not safe)) (##cdr _e122184122206_)))
                        (_hd122185122209_
                         (let ()
                           (declare (not safe))
                           (##car _e122184122206_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122186122211_))
                        (let ((_e122187122214_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122186122211_))))
                          (let ((_tl122189122219_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122187122214_)))
                                (_hd122188122217_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122187122214_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122189122219_))
                                (___kont123682123683_ _hd122188122217_)
                                (___kont123684123685_))))
                        (___kont123684123685_))))
                (___kont123684123685_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx122058_)
        (let* ((_g122060122077_
                (lambda (_g122061122074_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122061122074_))))
               (_g122059122175_
                (lambda (_g122061122080_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122061122080_))
                      (let ((_e122064122082_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122061122080_))))
                        (let ((_hd122065122085_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122064122082_)))
                              (_tl122066122087_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122064122082_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122066122087_))
                              (let ((_e122067122090_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122066122087_))))
                                (let ((_hd122068122093_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122067122090_)))
                                      (_tl122069122095_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122067122090_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122069122095_))
                                      (let ((_e122070122098_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122069122095_))))
                                        (let ((_hd122071122101_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122070122098_)))
                                              (_tl122072122103_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122070122098_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122072122103_))
                                              ((lambda (_L122106_ _L122107_)
                                                 (let* ((___stx123702123703_
                                                         _L122107_)
                                                        (_g122123122134_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx123702123703_)))))
                                                   (let ((___kont123704123705_
                                                          (lambda (_L122154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L122155_)
                    (let ((_$e122167_
                           (let ((__tmp125427
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L122155_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp125427))))
                      (if _$e122167_
                          ((lambda (_type-e122170_)
                             (_type-e122170_ _stx122058_ _L122107_))
                           _$e122167_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L122106_))))))
                 (___kont123706123707_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L122106_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match123713123714_
                                                            (lambda (_e122127122146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd122128122149_
                             _tl122129122151_)
                      (let ((_L122154_ _tl122129122151_)
                            (_L122155_ _hd122128122149_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L122155_))
                            (___kont123704123705_ _L122154_ _L122155_)
                            (___kont123706123707_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx123702123703_))
                   (let ((_e122127122146_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx123702123703_))))
                     (let ((_tl122129122151_
                            (let ()
                              (declare (not safe))
                              (##cdr _e122127122146_)))
                           (_hd122128122149_
                            (let ()
                              (declare (not safe))
                              (##car _e122127122146_))))
                       (___match123713123714_
                        _e122127122146_
                        _hd122128122149_
                        _tl122129122151_)))
                   (___kont123706123707_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd122071122101_
                                               _hd122068122093_)
                                              (let ()
                                                (declare (not safe))
                                                (_g122060122077_
                                                 _g122061122080_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122060122077_ _g122061122080_)))))
                              (let ()
                                (declare (not safe))
                                (_g122060122077_ _g122061122080_)))))
                      (let ()
                        (declare (not safe))
                        (_g122060122077_ _g122061122080_))))))
          (declare (not safe))
          (_g122059122175_ _stx122058_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx121902_ _ann121903_)
        (let* ((_g121905121942_
                (lambda (_g121906121939_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g121906121939_))))
               (_g121904122055_
                (lambda (_g121906121945_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g121906121945_))
                      (let ((_e121914121947_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g121906121945_))))
                        (let ((_hd121915121950_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121914121947_)))
                              (_tl121916121952_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121914121947_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121916121952_))
                              (let ((_e121917121955_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121916121952_))))
                                (let ((_hd121918121958_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121917121955_)))
                                      (_tl121919121960_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121917121955_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121919121960_))
                                      (let ((_e121920121963_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121919121960_))))
                                        (let ((_hd121921121966_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121920121963_)))
                                              (_tl121922121968_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121920121963_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl121922121968_))
                                              (let ((_e121923121971_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl121922121968_))))
                                                (let ((_hd121924121974_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e121923121971_)))
                                                      (_tl121925121976_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e121923121971_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl121925121976_))
                                                      (let ((_e121926121979_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl121925121976_))))
                (let ((_hd121927121982_
                       (let () (declare (not safe)) (##car _e121926121979_)))
                      (_tl121928121984_
                       (let () (declare (not safe)) (##cdr _e121926121979_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl121928121984_))
                      (let ((_e121929121987_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl121928121984_))))
                        (let ((_hd121930121990_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121929121987_)))
                              (_tl121931121992_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121929121987_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121931121992_))
                              (let ((_e121932121995_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121931121992_))))
                                (let ((_hd121933121998_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121932121995_)))
                                      (_tl121934122000_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121932121995_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121934122000_))
                                      (let ((_e121935122003_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121934122000_))))
                                        (let ((_hd121936122006_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121935122003_)))
                                              (_tl121937122008_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121935122003_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121937122008_))
                                              ((lambda (_L122011_
                                                        _L122012_
                                                        _L122013_
                                                        _L122014_
                                                        _L122015_
                                                        _L122016_
                                                        _L122017_)
                                                 (let ((_type-id122047_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L122017_)))
                                                       (_super122048_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L122016_)))
                                                       (_slots122049_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L122015_)))
                                                       (_ctor-method122050_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L122014_)))
                                                       (_struct?122051_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L122013_)))
                                                       (_final?122052_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L122012_)))
                                                       (_metaclass122053_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L122011_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L122011_))
                                                            '#f)))
                                                   (let ((__obj125385
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
                                                      __obj125385
                                                      _type-id122047_
                                                      _super122048_
                                                      _slots122049_
                                                      _ctor-method122050_
                                                      _struct?122051_
                                                      _final?122052_
                                                      _metaclass122053_)
                                                     __obj125385)))
                                               _hd121936122006_
                                               _hd121933121998_
                                               _hd121930121990_
                                               _hd121927121982_
                                               _hd121924121974_
                                               _hd121921121966_
                                               _hd121918121958_)
                                              (let ()
                                                (declare (not safe))
                                                (_g121905121942_
                                                 _g121906121945_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121905121942_ _g121906121945_)))))
                              (let ()
                                (declare (not safe))
                                (_g121905121942_ _g121906121945_)))))
                      (let ()
                        (declare (not safe))
                        (_g121905121942_ _g121906121945_)))))
              (let ()
                (declare (not safe))
                (_g121905121942_ _g121906121945_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g121905121942_
                                                 _g121906121945_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121905121942_ _g121906121945_)))))
                              (let ()
                                (declare (not safe))
                                (_g121905121942_ _g121906121945_)))))
                      (let ()
                        (declare (not safe))
                        (_g121905121942_ _g121906121945_))))))
          (declare (not safe))
          (_g121904122055_ _ann121903_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx121850_ _ann121851_)
        (let* ((_g121853121866_
                (lambda (_g121854121863_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g121854121863_))))
               (_g121852121899_
                (lambda (_g121854121869_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g121854121869_))
                      (let ((_e121856121871_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g121854121869_))))
                        (let ((_hd121857121874_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121856121871_)))
                              (_tl121858121876_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121856121871_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121858121876_))
                              (let ((_e121859121879_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121858121876_))))
                                (let ((_hd121860121882_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121859121879_)))
                                      (_tl121861121884_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121859121879_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121861121884_))
                                      ((lambda (_L121887_)
                                         (let ((__tmp125428
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L121887_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp125428)))
                                       _hd121860121882_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121853121866_ _g121854121869_)))))
                              (let ()
                                (declare (not safe))
                                (_g121853121866_ _g121854121869_)))))
                      (let ()
                        (declare (not safe))
                        (_g121853121866_ _g121854121869_))))))
          (declare (not safe))
          (_g121852121899_ _ann121851_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx121798_ _ann121799_)
        (let* ((_g121801121814_
                (lambda (_g121802121811_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g121802121811_))))
               (_g121800121847_
                (lambda (_g121802121817_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g121802121817_))
                      (let ((_e121804121819_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g121802121817_))))
                        (let ((_hd121805121822_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121804121819_)))
                              (_tl121806121824_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121804121819_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121806121824_))
                              (let ((_e121807121827_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121806121824_))))
                                (let ((_hd121808121830_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121807121827_)))
                                      (_tl121809121832_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121807121827_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121809121832_))
                                      ((lambda (_L121835_)
                                         (let ((__tmp125429
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L121835_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp125429)))
                                       _hd121808121830_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121801121814_ _g121802121817_)))))
                              (let ()
                                (declare (not safe))
                                (_g121801121814_ _g121802121817_)))))
                      (let ()
                        (declare (not safe))
                        (_g121801121814_ _g121802121817_))))))
          (declare (not safe))
          (_g121800121847_ _ann121799_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx121714_ _ann121715_)
        (let* ((_g121717121738_
                (lambda (_g121718121735_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g121718121735_))))
               (_g121716121795_
                (lambda (_g121718121741_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g121718121741_))
                      (let ((_e121722121743_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g121718121741_))))
                        (let ((_hd121723121746_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121722121743_)))
                              (_tl121724121748_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121722121743_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121724121748_))
                              (let ((_e121725121751_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121724121748_))))
                                (let ((_hd121726121754_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121725121751_)))
                                      (_tl121727121756_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121725121751_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121727121756_))
                                      (let ((_e121728121759_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121727121756_))))
                                        (let ((_hd121729121762_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121728121759_)))
                                              (_tl121730121764_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121728121759_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl121730121764_))
                                              (let ((_e121731121767_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl121730121764_))))
                                                (let ((_hd121732121770_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e121731121767_)))
                                                      (_tl121733121772_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e121731121767_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl121733121772_))
                                                      ((lambda (_L121775_
                                                                _L121776_
                                                                _L121777_)
                                                         (let ((__tmp125432
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L121777_)))
                       (__tmp125431
                        (let () (declare (not safe)) (gx#stx-e _L121776_)))
                       (__tmp125430
                        (let () (declare (not safe)) (gx#stx-e _L121775_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp125432
                    __tmp125431
                    __tmp125430)))
               _hd121732121770_
               _hd121729121762_
               _hd121726121754_)
              (let ()
                (declare (not safe))
                (_g121717121738_ _g121718121741_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g121717121738_
                                                 _g121718121741_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121717121738_ _g121718121741_)))))
                              (let ()
                                (declare (not safe))
                                (_g121717121738_ _g121718121741_)))))
                      (let ()
                        (declare (not safe))
                        (_g121717121738_ _g121718121741_))))))
          (declare (not safe))
          (_g121716121795_ _ann121715_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx121630_ _ann121631_)
        (let* ((_g121633121654_
                (lambda (_g121634121651_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g121634121651_))))
               (_g121632121711_
                (lambda (_g121634121657_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g121634121657_))
                      (let ((_e121638121659_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g121634121657_))))
                        (let ((_hd121639121662_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121638121659_)))
                              (_tl121640121664_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121638121659_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121640121664_))
                              (let ((_e121641121667_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121640121664_))))
                                (let ((_hd121642121670_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121641121667_)))
                                      (_tl121643121672_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121641121667_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121643121672_))
                                      (let ((_e121644121675_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121643121672_))))
                                        (let ((_hd121645121678_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121644121675_)))
                                              (_tl121646121680_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121644121675_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl121646121680_))
                                              (let ((_e121647121683_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl121646121680_))))
                                                (let ((_hd121648121686_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e121647121683_)))
                                                      (_tl121649121688_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e121647121683_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl121649121688_))
                                                      ((lambda (_L121691_
                                                                _L121692_
                                                                _L121693_)
                                                         (let ((__tmp125435
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L121693_)))
                       (__tmp125434
                        (let () (declare (not safe)) (gx#stx-e _L121692_)))
                       (__tmp125433
                        (let () (declare (not safe)) (gx#stx-e _L121691_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp125435
                    __tmp125434
                    __tmp125433)))
               _hd121648121686_
               _hd121645121678_
               _hd121642121670_)
              (let ()
                (declare (not safe))
                (_g121633121654_ _g121634121657_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g121633121654_
                                                 _g121634121657_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121633121654_ _g121634121657_)))))
                              (let ()
                                (declare (not safe))
                                (_g121633121654_ _g121634121657_)))))
                      (let ()
                        (declare (not safe))
                        (_g121633121654_ _g121634121657_))))))
          (declare (not safe))
          (_g121632121711_ _ann121631_))))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.class
       gxc#basic-expression-type-annotation-mop.class))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.constructor
       gxc#basic-expression-type-annotation-mop.constructor))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.predicate
       gxc#basic-expression-type-annotation-mop.predicate))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.accessor
       gxc#basic-expression-type-annotation-mop.accessor))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.mutator
       gxc#basic-expression-type-annotation-mop.mutator))
    (define gxc#basic-expression-type-lambda%
      (lambda (_stx120750_)
        (let* ((___stx123716123717_ _stx120750_)
               (_g120756120952_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx123716123717_)))))
          (let ((___kont123718123719_
                 (lambda (_L121618_)
                   (let ((__obj125386
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj125386
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L121618_))
                      '#f)
                     __obj125386)))
                (___kont123720123721_
                 (lambda (_L121545_
                          _L121546_
                          _L121547_
                          _L121548_
                          _L121549_
                          _L121550_)
                   (let* ((_tab121600_
                           (let () (declare (not safe)) (gx#stx-e _L121547_)))
                          (_keys121602_
                           (if _tab121600_
                               (let ((__tmp125436 (vector->list _tab121600_)))
                                 (declare (not safe))
                                 (filter values __tmp125436))
                               '#f)))
                     (let ((__tmp125437
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L121546_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys121602_
                        __tmp125437)))))
                (___kont123722123723_
                 (lambda (_L121278_
                          _L121279_
                          _L121280_
                          _L121281_
                          _L121282_
                          _L121283_
                          _L121284_
                          _L121285_
                          _L121286_
                          _L121287_)
                   (let ((__tmp125439
                          (map gx#stx-e
                               (let ((__tmp125440
                                      (lambda (_g121380121383_ _g121381121385_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g121380121383_
                                                _g121381121385_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp125440 '() _L121280_))))
                         (__tmp125438
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L121284_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp125439
                      __tmp125438))))
                (___kont123726123727_
                 (lambda (_L120988_)
                   (let ((__obj125387
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj125387
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L120988_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L120988_)))
                     __obj125387)))
                (___kont123728123729_
                 (lambda (_L120965_)
                   (let ((__obj125388
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj125388
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L120965_))
                      '#f)
                     __obj125388))))
            (let* ((___match124035124036_
                    (lambda (_e120941120980_ _hd120942120983_ _tl120943120985_)
                      (let ((_L120988_ _tl120943120985_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L120988_))
                            (___kont123726123727_ _L120988_)
                            (___kont123728123729_ _tl120943120985_)))))
                   (___match124029124030_
                    (lambda (_e120835121002_
                             _hd120836121005_
                             _tl120837121007_
                             _e120838121010_
                             _hd120839121013_
                             _tl120840121015_
                             _e120841121018_
                             _hd120842121021_
                             _tl120843121023_
                             _e120844121026_
                             _hd120845121029_
                             _tl120846121031_
                             _e120847121034_
                             _hd120848121037_
                             _tl120849121039_
                             _e120850121042_
                             _hd120851121045_
                             _tl120852121047_
                             _e120853121050_
                             _hd120854121053_
                             _tl120855121055_
                             _e120856121058_
                             _hd120857121061_
                             _tl120858121063_
                             _e120859121066_
                             _hd120860121069_
                             _tl120861121071_
                             _e120862121074_
                             _hd120863121077_
                             _tl120864121079_
                             _e120865121082_
                             _hd120866121085_
                             _tl120867121087_
                             _e120868121090_
                             _hd120869121093_
                             _tl120870121095_
                             _e120871121098_
                             _hd120872121101_
                             _tl120873121103_
                             _e120874121106_
                             _hd120875121109_
                             _tl120876121111_
                             ___splice123724123725_
                             _target120877121114_
                             _tl120879121116_
                             _e120892121119_
                             _hd120893121122_
                             _tl120894121124_
                             _e120895121127_
                             _hd120896121130_
                             _tl120897121132_
                             _e120898121135_
                             _hd120899121138_
                             _tl120900121140_)
                      (letrec ((_loop120880121143_
                                (lambda (_hd120878121146_
                                         _-absent-value120884121148_
                                         _key120885121150_
                                         _-xkwvar120886121152_
                                         _-hash-ref120887121154_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd120878121146_))
                                      (let ((_e120881121157_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd120878121146_))))
                                        (let ((_lp-tl120883121162_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120881121157_)))
                                              (_lp-hd120882121160_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120881121157_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd120882121160_))
                                              (let ((_e120901121165_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd120882121160_))))
                                                (let ((_tl120903121170_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e120901121165_)))
                                                      (_hd120902121168_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e120901121165_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd120902121168_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd120902121168_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120903121170_))
                      (let ((_e120904121173_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120903121170_))))
                        (let ((_tl120906121178_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120904121173_)))
                              (_hd120905121176_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120904121173_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd120905121176_))
                              (let ((_e120907121181_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd120905121176_))))
                                (let ((_tl120909121186_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120907121181_)))
                                      (_hd120908121184_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120907121181_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd120908121184_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd120908121184_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl120909121186_))
                                              (let ((_e120910121189_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl120909121186_))))
                                                (let ((_tl120912121194_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e120910121189_)))
                                                      (_hd120911121192_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e120910121189_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl120912121194_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl120906121178_))
                                                          (let ((_e120913121197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl120906121178_))))
                    (let ((_tl120915121202_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120913121197_)))
                          (_hd120914121200_
                           (let ()
                             (declare (not safe))
                             (##car _e120913121197_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd120914121200_))
                          (let ((_e120916121205_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd120914121200_))))
                            (let ((_tl120918121210_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120916121205_)))
                                  (_hd120917121208_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120916121205_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd120917121208_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd120917121208_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl120918121210_))
                                          (let ((_e120919121213_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl120918121210_))))
                                            (let ((_tl120921121218_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120919121213_)))
                                                  (_hd120920121216_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120919121213_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl120921121218_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl120915121202_))
                                                      (let ((_e120922121221_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl120915121202_))))
                (let ((_tl120924121226_
                       (let () (declare (not safe)) (##cdr _e120922121221_)))
                      (_hd120923121224_
                       (let () (declare (not safe)) (##car _e120922121221_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd120923121224_))
                      (let ((_e120925121229_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd120923121224_))))
                        (let ((_tl120927121234_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120925121229_)))
                              (_hd120926121232_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120925121229_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd120926121232_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd120926121232_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120927121234_))
                                      (let ((_e120928121237_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120927121234_))))
                                        (let ((_tl120930121242_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120928121237_)))
                                              (_hd120929121240_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120928121237_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120930121242_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl120924121226_))
                                                  (let ((_e120931121245_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl120924121226_))))
                                                    (let ((_tl120933121250_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120931121245_)))
                                                          (_hd120932121248_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120931121245_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd120932121248_))
                                                          (let ((_e120934121253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd120932121248_))))
                    (let ((_tl120936121258_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120934121253_)))
                          (_hd120935121256_
                           (let ()
                             (declare (not safe))
                             (##car _e120934121253_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd120935121256_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd120935121256_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl120936121258_))
                                  (let ((_e120937121261_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl120936121258_))))
                                    (let ((_tl120939121266_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120937121261_)))
                                          (_hd120938121264_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120937121261_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl120939121266_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120933121250_))
                                              (let ((__tmp125444
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd120938121264_
                                                             _-absent-value120884121148_)))
                                                    (__tmp125443
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd120929121240_
                                                             _key120885121150_)))
                                                    (__tmp125442
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd120920121216_
                                                             _-xkwvar120886121152_)))
                                                    (__tmp125441
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd120911121192_
                                                             _-hash-ref120887121154_))))
                                                (declare (not safe))
                                                (_loop120880121143_
                                                 _lp-tl120883121162_
                                                 __tmp125444
                                                 __tmp125443
                                                 __tmp125442
                                                 __tmp125441))
                                              (___match124035124036_
                                               _e120835121002_
                                               _hd120836121005_
                                               _tl120837121007_))
                                          (___match124035124036_
                                           _e120835121002_
                                           _hd120836121005_
                                           _tl120837121007_))))
                                  (___match124035124036_
                                   _e120835121002_
                                   _hd120836121005_
                                   _tl120837121007_))
                              (___match124035124036_
                               _e120835121002_
                               _hd120836121005_
                               _tl120837121007_))
                          (___match124035124036_
                           _e120835121002_
                           _hd120836121005_
                           _tl120837121007_))))
                  (___match124035124036_
                   _e120835121002_
                   _hd120836121005_
                   _tl120837121007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match124035124036_
                                                   _e120835121002_
                                                   _hd120836121005_
                                                   _tl120837121007_))
                                              (___match124035124036_
                                               _e120835121002_
                                               _hd120836121005_
                                               _tl120837121007_))))
                                      (___match124035124036_
                                       _e120835121002_
                                       _hd120836121005_
                                       _tl120837121007_))
                                  (___match124035124036_
                                   _e120835121002_
                                   _hd120836121005_
                                   _tl120837121007_))
                              (___match124035124036_
                               _e120835121002_
                               _hd120836121005_
                               _tl120837121007_))))
                      (___match124035124036_
                       _e120835121002_
                       _hd120836121005_
                       _tl120837121007_))))
              (___match124035124036_
               _e120835121002_
               _hd120836121005_
               _tl120837121007_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match124035124036_
                                                   _e120835121002_
                                                   _hd120836121005_
                                                   _tl120837121007_))))
                                          (___match124035124036_
                                           _e120835121002_
                                           _hd120836121005_
                                           _tl120837121007_))
                                      (___match124035124036_
                                       _e120835121002_
                                       _hd120836121005_
                                       _tl120837121007_))
                                  (___match124035124036_
                                   _e120835121002_
                                   _hd120836121005_
                                   _tl120837121007_))))
                          (___match124035124036_
                           _e120835121002_
                           _hd120836121005_
                           _tl120837121007_))))
                  (___match124035124036_
                   _e120835121002_
                   _hd120836121005_
                   _tl120837121007_))
              (___match124035124036_
               _e120835121002_
               _hd120836121005_
               _tl120837121007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match124035124036_
                                               _e120835121002_
                                               _hd120836121005_
                                               _tl120837121007_))
                                          (___match124035124036_
                                           _e120835121002_
                                           _hd120836121005_
                                           _tl120837121007_))
                                      (___match124035124036_
                                       _e120835121002_
                                       _hd120836121005_
                                       _tl120837121007_))))
                              (___match124035124036_
                               _e120835121002_
                               _hd120836121005_
                               _tl120837121007_))))
                      (___match124035124036_
                       _e120835121002_
                       _hd120836121005_
                       _tl120837121007_))
                  (___match124035124036_
                   _e120835121002_
                   _hd120836121005_
                   _tl120837121007_))
              (___match124035124036_
               _e120835121002_
               _hd120836121005_
               _tl120837121007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match124035124036_
                                               _e120835121002_
                                               _hd120836121005_
                                               _tl120837121007_))))
                                      (let ((_-hash-ref120891121275_
                                             (reverse _-hash-ref120887121154_))
                                            (_-xkwvar120890121273_
                                             (reverse _-xkwvar120886121152_))
                                            (_key120889121271_
                                             (reverse _key120885121150_))
                                            (_-absent-value120888121269_
                                             (reverse _-absent-value120884121148_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120846121031_))
                                            (let ((_L121278_ _hd120899121138_)
                                                  (_L121279_
                                                   _-absent-value120888121269_)
                                                  (_L121280_ _key120889121271_)
                                                  (_L121281_
                                                   _-xkwvar120890121273_)
                                                  (_L121282_
                                                   _-hash-ref120891121275_)
                                                  (_L121283_ _hd120875121109_)
                                                  (_L121284_ _hd120866121085_)
                                                  (_L121285_ _hd120857121061_)
                                                  (_L121286_ _tl120843121023_)
                                                  (_L121287_ _hd120842121021_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L121287_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L121286_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L121285_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L121287_
                                                          _L121283_))
                                                       (let ((__tmp125445
                                                              (let ((__tmp125446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g121340121343_ _g121341121345_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g121340121343_ _g121341121345_)))))
                        (declare (not safe))
                        (foldr1 __tmp125446 '() _L121280_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp125445))
               (let ((__tmp125449
                      (lambda (_g121347121349_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g121347121349_
                           'hash-ref))))
                     (__tmp125447
                      (let ((__tmp125448
                             (lambda (_g121351121354_ _g121352121356_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g121351121354_ _g121352121356_)))))
                        (declare (not safe))
                        (foldr1 __tmp125448 '() _L121282_))))
                 (declare (not safe))
                 (andmap1 __tmp125449 __tmp125447))
               (let ((__tmp125452
                      (lambda (_g121358121360_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g121358121360_
                           'absent-value))))
                     (__tmp125450
                      (let ((__tmp125451
                             (lambda (_g121362121365_ _g121363121367_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g121362121365_ _g121363121367_)))))
                        (declare (not safe))
                        (foldr1 __tmp125451 '() _L121279_))))
                 (declare (not safe))
                 (andmap1 __tmp125452 __tmp125450))
               (let ((__tmp125455
                      (lambda (_g121369121371_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g121369121371_ _L121287_))))
                     (__tmp125453
                      (let ((__tmp125454
                             (lambda (_g121373121376_ _g121374121378_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g121373121376_ _g121374121378_)))))
                        (declare (not safe))
                        (foldr1 __tmp125454 '() _L121281_))))
                 (declare (not safe))
                 (andmap1 __tmp125455 __tmp125453)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont123722123723_
                                                   _L121278_
                                                   _L121279_
                                                   _L121280_
                                                   _L121281_
                                                   _L121282_
                                                   _L121283_
                                                   _L121284_
                                                   _L121285_
                                                   _L121286_
                                                   _L121287_)
                                                  (___match124035124036_
                                                   _e120835121002_
                                                   _hd120836121005_
                                                   _tl120837121007_)))
                                            (___match124035124036_
                                             _e120835121002_
                                             _hd120836121005_
                                             _tl120837121007_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop120880121143_
                           _target120877121114_
                           '()
                           '()
                           '()
                           '())))))
                   (___match123901123902_
                    (lambda (_e120835121002_
                             _hd120836121005_
                             _tl120837121007_
                             _e120838121010_
                             _hd120839121013_
                             _tl120840121015_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd120839121013_))
                          (let ((_e120841121018_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd120839121013_))))
                            (let ((_tl120843121023_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120841121018_)))
                                  (_hd120842121021_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120841121018_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl120840121015_))
                                  (let ((_e120844121026_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl120840121015_))))
                                    (let ((_tl120846121031_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120844121026_)))
                                          (_hd120845121029_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120844121026_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120845121029_))
                                          (let ((_e120847121034_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120845121029_))))
                                            (let ((_tl120849121039_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120847121034_)))
                                                  (_hd120848121037_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120847121034_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd120848121037_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd120848121037_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl120849121039_))
                                                          (let ((_e120850121042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl120849121039_))))
                    (let ((_tl120852121047_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120850121042_)))
                          (_hd120851121045_
                           (let ()
                             (declare (not safe))
                             (##car _e120850121042_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd120851121045_))
                          (let ((_e120853121050_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd120851121045_))))
                            (let ((_tl120855121055_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120853121050_)))
                                  (_hd120854121053_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120853121050_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd120854121053_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd120854121053_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl120855121055_))
                                          (let ((_e120856121058_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl120855121055_))))
                                            (let ((_tl120858121063_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120856121058_)))
                                                  (_hd120857121061_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120856121058_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl120858121063_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl120852121047_))
                                                      (let ((_e120859121066_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl120852121047_))))
                (let ((_tl120861121071_
                       (let () (declare (not safe)) (##cdr _e120859121066_)))
                      (_hd120860121069_
                       (let () (declare (not safe)) (##car _e120859121066_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd120860121069_))
                      (let ((_e120862121074_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd120860121069_))))
                        (let ((_tl120864121079_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120862121074_)))
                              (_hd120863121077_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120862121074_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd120863121077_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd120863121077_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120864121079_))
                                      (let ((_e120865121082_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120864121079_))))
                                        (let ((_tl120867121087_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120865121082_)))
                                              (_hd120866121085_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120865121082_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120867121087_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl120861121071_))
                                                  (let ((_e120868121090_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl120861121071_))))
                                                    (let ((_tl120870121095_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120868121090_)))
                                                          (_hd120869121093_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120868121090_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd120869121093_))
                                                          (let ((_e120871121098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd120869121093_))))
                    (let ((_tl120873121103_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120871121098_)))
                          (_hd120872121101_
                           (let ()
                             (declare (not safe))
                             (##car _e120871121098_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd120872121101_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd120872121101_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl120873121103_))
                                  (let ((_e120874121106_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl120873121103_))))
                                    (let ((_tl120876121111_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120874121106_)))
                                          (_hd120875121109_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120874121106_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl120876121111_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl120870121095_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl120870121095_))
                                                        '1)
                                                  (let ((___splice123724123725_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl120870121095_
                                                            '1))))
                                                    (let ((_tl120879121116_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice123724123725_
                                                              '1)))
                                                          (_target120877121114_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice123724123725_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl120879121116_))
                                                          (let ((_e120892121119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl120879121116_))))
                    (let ((_tl120894121124_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120892121119_)))
                          (_hd120893121122_
                           (let ()
                             (declare (not safe))
                             (##car _e120892121119_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd120893121122_))
                          (let ((_e120895121127_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd120893121122_))))
                            (let ((_tl120897121132_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120895121127_)))
                                  (_hd120896121130_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120895121127_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd120896121130_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd120896121130_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl120897121132_))
                                          (let ((_e120898121135_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl120897121132_))))
                                            (let ((_tl120900121140_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120898121135_)))
                                                  (_hd120899121138_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120898121135_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl120900121140_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl120894121124_))
                                                      (___match124029124030_
                                                       _e120835121002_
                                                       _hd120836121005_
                                                       _tl120837121007_
                                                       _e120838121010_
                                                       _hd120839121013_
                                                       _tl120840121015_
                                                       _e120841121018_
                                                       _hd120842121021_
                                                       _tl120843121023_
                                                       _e120844121026_
                                                       _hd120845121029_
                                                       _tl120846121031_
                                                       _e120847121034_
                                                       _hd120848121037_
                                                       _tl120849121039_
                                                       _e120850121042_
                                                       _hd120851121045_
                                                       _tl120852121047_
                                                       _e120853121050_
                                                       _hd120854121053_
                                                       _tl120855121055_
                                                       _e120856121058_
                                                       _hd120857121061_
                                                       _tl120858121063_
                                                       _e120859121066_
                                                       _hd120860121069_
                                                       _tl120861121071_
                                                       _e120862121074_
                                                       _hd120863121077_
                                                       _tl120864121079_
                                                       _e120865121082_
                                                       _hd120866121085_
                                                       _tl120867121087_
                                                       _e120868121090_
                                                       _hd120869121093_
                                                       _tl120870121095_
                                                       _e120871121098_
                                                       _hd120872121101_
                                                       _tl120873121103_
                                                       _e120874121106_
                                                       _hd120875121109_
                                                       _tl120876121111_
                                                       ___splice123724123725_
                                                       _target120877121114_
                                                       _tl120879121116_
                                                       _e120892121119_
                                                       _hd120893121122_
                                                       _tl120894121124_
                                                       _e120895121127_
                                                       _hd120896121130_
                                                       _tl120897121132_
                                                       _e120898121135_
                                                       _hd120899121138_
                                                       _tl120900121140_)
                                                      (___match124035124036_
                                                       _e120835121002_
                                                       _hd120836121005_
                                                       _tl120837121007_))
                                                  (___match124035124036_
                                                   _e120835121002_
                                                   _hd120836121005_
                                                   _tl120837121007_))))
                                          (___match124035124036_
                                           _e120835121002_
                                           _hd120836121005_
                                           _tl120837121007_))
                                      (___match124035124036_
                                       _e120835121002_
                                       _hd120836121005_
                                       _tl120837121007_))
                                  (___match124035124036_
                                   _e120835121002_
                                   _hd120836121005_
                                   _tl120837121007_))))
                          (___match124035124036_
                           _e120835121002_
                           _hd120836121005_
                           _tl120837121007_))))
                  (___match124035124036_
                   _e120835121002_
                   _hd120836121005_
                   _tl120837121007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match124035124036_
                                                   _e120835121002_
                                                   _hd120836121005_
                                                   _tl120837121007_))
                                              (___match124035124036_
                                               _e120835121002_
                                               _hd120836121005_
                                               _tl120837121007_))
                                          (___match124035124036_
                                           _e120835121002_
                                           _hd120836121005_
                                           _tl120837121007_))))
                                  (___match124035124036_
                                   _e120835121002_
                                   _hd120836121005_
                                   _tl120837121007_))
                              (___match124035124036_
                               _e120835121002_
                               _hd120836121005_
                               _tl120837121007_))
                          (___match124035124036_
                           _e120835121002_
                           _hd120836121005_
                           _tl120837121007_))))
                  (___match124035124036_
                   _e120835121002_
                   _hd120836121005_
                   _tl120837121007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match124035124036_
                                                   _e120835121002_
                                                   _hd120836121005_
                                                   _tl120837121007_))
                                              (___match124035124036_
                                               _e120835121002_
                                               _hd120836121005_
                                               _tl120837121007_))))
                                      (___match124035124036_
                                       _e120835121002_
                                       _hd120836121005_
                                       _tl120837121007_))
                                  (___match124035124036_
                                   _e120835121002_
                                   _hd120836121005_
                                   _tl120837121007_))
                              (___match124035124036_
                               _e120835121002_
                               _hd120836121005_
                               _tl120837121007_))))
                      (___match124035124036_
                       _e120835121002_
                       _hd120836121005_
                       _tl120837121007_))))
              (___match124035124036_
               _e120835121002_
               _hd120836121005_
               _tl120837121007_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match124035124036_
                                                   _e120835121002_
                                                   _hd120836121005_
                                                   _tl120837121007_))))
                                          (___match124035124036_
                                           _e120835121002_
                                           _hd120836121005_
                                           _tl120837121007_))
                                      (___match124035124036_
                                       _e120835121002_
                                       _hd120836121005_
                                       _tl120837121007_))
                                  (___match124035124036_
                                   _e120835121002_
                                   _hd120836121005_
                                   _tl120837121007_))))
                          (___match124035124036_
                           _e120835121002_
                           _hd120836121005_
                           _tl120837121007_))))
                  (___match124035124036_
                   _e120835121002_
                   _hd120836121005_
                   _tl120837121007_))
              (___match124035124036_
               _e120835121002_
               _hd120836121005_
               _tl120837121007_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match124035124036_
                                                   _e120835121002_
                                                   _hd120836121005_
                                                   _tl120837121007_))))
                                          (___match124035124036_
                                           _e120835121002_
                                           _hd120836121005_
                                           _tl120837121007_))))
                                  (___match124035124036_
                                   _e120835121002_
                                   _hd120836121005_
                                   _tl120837121007_))))
                          (___match124035124036_
                           _e120835121002_
                           _hd120836121005_
                           _tl120837121007_))))
                   (___match123889123890_
                    (lambda (_e120768121393_
                             _hd120769121396_
                             _tl120770121398_
                             _e120771121401_
                             _hd120772121404_
                             _tl120773121406_
                             _e120774121409_
                             _hd120775121412_
                             _tl120776121414_
                             _e120777121417_
                             _hd120778121420_
                             _tl120779121422_
                             _e120780121425_
                             _hd120781121428_
                             _tl120782121430_
                             _e120783121433_
                             _hd120784121436_
                             _tl120785121438_
                             _e120786121441_
                             _hd120787121444_
                             _tl120788121446_
                             _e120789121449_
                             _hd120790121452_
                             _tl120791121454_
                             _e120792121457_
                             _hd120793121460_
                             _tl120794121462_
                             _e120795121465_
                             _hd120796121468_
                             _tl120797121470_
                             _e120798121473_
                             _hd120799121476_
                             _tl120800121478_
                             _e120801121481_
                             _hd120802121484_
                             _tl120803121486_
                             _e120804121489_
                             _hd120805121492_
                             _tl120806121494_
                             _e120807121497_
                             _hd120808121500_
                             _tl120809121502_
                             _e120810121505_
                             _hd120811121508_
                             _tl120812121510_
                             _e120813121513_
                             _hd120814121516_
                             _tl120815121518_
                             _e120816121521_
                             _hd120817121524_
                             _tl120818121526_
                             _e120819121529_
                             _hd120820121532_
                             _tl120821121534_
                             _e120822121537_
                             _hd120823121540_
                             _tl120824121542_)
                      (let ((_L121545_ _hd120823121540_)
                            (_L121546_ _hd120814121516_)
                            (_L121547_ _hd120805121492_)
                            (_L121548_ _hd120796121468_)
                            (_L121549_ _hd120787121444_)
                            (_L121550_ _hd120772121404_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L121550_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L121549_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L121548_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L121550_ _L121545_)))
                            (___kont123720123721_
                             _L121545_
                             _L121546_
                             _L121547_
                             _L121548_
                             _L121549_
                             _L121550_)
                            (___match123901123902_
                             _e120768121393_
                             _hd120769121396_
                             _tl120770121398_
                             _e120771121401_
                             _hd120772121404_
                             _tl120773121406_)))))
                   (___match123743123744_
                    (lambda (_e120768121393_ _hd120769121396_ _tl120770121398_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120770121398_))
                          (let ((_e120771121401_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120770121398_))))
                            (let ((_tl120773121406_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120771121401_)))
                                  (_hd120772121404_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120771121401_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl120773121406_))
                                  (let ((_e120774121409_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl120773121406_))))
                                    (let ((_tl120776121414_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120774121409_)))
                                          (_hd120775121412_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120774121409_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120775121412_))
                                          (let ((_e120777121417_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120775121412_))))
                                            (let ((_tl120779121422_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120777121417_)))
                                                  (_hd120778121420_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120777121417_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd120778121420_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd120778121420_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl120779121422_))
                                                          (let ((_e120780121425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl120779121422_))))
                    (let ((_tl120782121430_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120780121425_)))
                          (_hd120781121428_
                           (let ()
                             (declare (not safe))
                             (##car _e120780121425_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd120781121428_))
                          (let ((_e120783121433_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd120781121428_))))
                            (let ((_tl120785121438_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120783121433_)))
                                  (_hd120784121436_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120783121433_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd120784121436_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd120784121436_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl120785121438_))
                                          (let ((_e120786121441_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl120785121438_))))
                                            (let ((_tl120788121446_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120786121441_)))
                                                  (_hd120787121444_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120786121441_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl120788121446_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl120782121430_))
                                                      (let ((_e120789121449_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl120782121430_))))
                (let ((_tl120791121454_
                       (let () (declare (not safe)) (##cdr _e120789121449_)))
                      (_hd120790121452_
                       (let () (declare (not safe)) (##car _e120789121449_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd120790121452_))
                      (let ((_e120792121457_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd120790121452_))))
                        (let ((_tl120794121462_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120792121457_)))
                              (_hd120793121460_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120792121457_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd120793121460_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd120793121460_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120794121462_))
                                      (let ((_e120795121465_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120794121462_))))
                                        (let ((_tl120797121470_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120795121465_)))
                                              (_hd120796121468_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120795121465_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120797121470_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl120791121454_))
                                                  (let ((_e120798121473_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl120791121454_))))
                                                    (let ((_tl120800121478_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120798121473_)))
                                                          (_hd120799121476_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120798121473_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd120799121476_))
                                                          (let ((_e120801121481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd120799121476_))))
                    (let ((_tl120803121486_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120801121481_)))
                          (_hd120802121484_
                           (let ()
                             (declare (not safe))
                             (##car _e120801121481_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd120802121484_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd120802121484_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl120803121486_))
                                  (let ((_e120804121489_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl120803121486_))))
                                    (let ((_tl120806121494_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120804121489_)))
                                          (_hd120805121492_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120804121489_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl120806121494_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl120800121478_))
                                              (let ((_e120807121497_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl120800121478_))))
                                                (let ((_tl120809121502_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e120807121497_)))
                                                      (_hd120808121500_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e120807121497_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd120808121500_))
                                                      (let ((_e120810121505_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd120808121500_))))
                (let ((_tl120812121510_
                       (let () (declare (not safe)) (##cdr _e120810121505_)))
                      (_hd120811121508_
                       (let () (declare (not safe)) (##car _e120810121505_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd120811121508_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd120811121508_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl120812121510_))
                              (let ((_e120813121513_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl120812121510_))))
                                (let ((_tl120815121518_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120813121513_)))
                                      (_hd120814121516_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120813121513_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl120815121518_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl120809121502_))
                                          (let ((_e120816121521_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl120809121502_))))
                                            (let ((_tl120818121526_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120816121521_)))
                                                  (_hd120817121524_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120816121521_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120817121524_))
                                                  (let ((_e120819121529_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120817121524_))))
                                                    (let ((_tl120821121534_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120819121529_)))
                                                          (_hd120820121532_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120819121529_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd120820121532_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd120820121532_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120821121534_))
                          (let ((_e120822121537_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120821121534_))))
                            (let ((_tl120824121542_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120822121537_)))
                                  (_hd120823121540_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120822121537_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120824121542_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl120818121526_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl120776121414_))
                                          (___match123889123890_
                                           _e120768121393_
                                           _hd120769121396_
                                           _tl120770121398_
                                           _e120771121401_
                                           _hd120772121404_
                                           _tl120773121406_
                                           _e120774121409_
                                           _hd120775121412_
                                           _tl120776121414_
                                           _e120777121417_
                                           _hd120778121420_
                                           _tl120779121422_
                                           _e120780121425_
                                           _hd120781121428_
                                           _tl120782121430_
                                           _e120783121433_
                                           _hd120784121436_
                                           _tl120785121438_
                                           _e120786121441_
                                           _hd120787121444_
                                           _tl120788121446_
                                           _e120789121449_
                                           _hd120790121452_
                                           _tl120791121454_
                                           _e120792121457_
                                           _hd120793121460_
                                           _tl120794121462_
                                           _e120795121465_
                                           _hd120796121468_
                                           _tl120797121470_
                                           _e120798121473_
                                           _hd120799121476_
                                           _tl120800121478_
                                           _e120801121481_
                                           _hd120802121484_
                                           _tl120803121486_
                                           _e120804121489_
                                           _hd120805121492_
                                           _tl120806121494_
                                           _e120807121497_
                                           _hd120808121500_
                                           _tl120809121502_
                                           _e120810121505_
                                           _hd120811121508_
                                           _tl120812121510_
                                           _e120813121513_
                                           _hd120814121516_
                                           _tl120815121518_
                                           _e120816121521_
                                           _hd120817121524_
                                           _tl120818121526_
                                           _e120819121529_
                                           _hd120820121532_
                                           _tl120821121534_
                                           _e120822121537_
                                           _hd120823121540_
                                           _tl120824121542_)
                                          (___match123901123902_
                                           _e120768121393_
                                           _hd120769121396_
                                           _tl120770121398_
                                           _e120771121401_
                                           _hd120772121404_
                                           _tl120773121406_))
                                      (___match123901123902_
                                       _e120768121393_
                                       _hd120769121396_
                                       _tl120770121398_
                                       _e120771121401_
                                       _hd120772121404_
                                       _tl120773121406_))
                                  (___match123901123902_
                                   _e120768121393_
                                   _hd120769121396_
                                   _tl120770121398_
                                   _e120771121401_
                                   _hd120772121404_
                                   _tl120773121406_))))
                          (___match123901123902_
                           _e120768121393_
                           _hd120769121396_
                           _tl120770121398_
                           _e120771121401_
                           _hd120772121404_
                           _tl120773121406_))
                      (___match123901123902_
                       _e120768121393_
                       _hd120769121396_
                       _tl120770121398_
                       _e120771121401_
                       _hd120772121404_
                       _tl120773121406_))
                  (___match123901123902_
                   _e120768121393_
                   _hd120769121396_
                   _tl120770121398_
                   _e120771121401_
                   _hd120772121404_
                   _tl120773121406_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match123901123902_
                                                   _e120768121393_
                                                   _hd120769121396_
                                                   _tl120770121398_
                                                   _e120771121401_
                                                   _hd120772121404_
                                                   _tl120773121406_))))
                                          (___match123901123902_
                                           _e120768121393_
                                           _hd120769121396_
                                           _tl120770121398_
                                           _e120771121401_
                                           _hd120772121404_
                                           _tl120773121406_))
                                      (___match123901123902_
                                       _e120768121393_
                                       _hd120769121396_
                                       _tl120770121398_
                                       _e120771121401_
                                       _hd120772121404_
                                       _tl120773121406_))))
                              (___match123901123902_
                               _e120768121393_
                               _hd120769121396_
                               _tl120770121398_
                               _e120771121401_
                               _hd120772121404_
                               _tl120773121406_))
                          (___match123901123902_
                           _e120768121393_
                           _hd120769121396_
                           _tl120770121398_
                           _e120771121401_
                           _hd120772121404_
                           _tl120773121406_))
                      (___match123901123902_
                       _e120768121393_
                       _hd120769121396_
                       _tl120770121398_
                       _e120771121401_
                       _hd120772121404_
                       _tl120773121406_))))
              (___match123901123902_
               _e120768121393_
               _hd120769121396_
               _tl120770121398_
               _e120771121401_
               _hd120772121404_
               _tl120773121406_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match123901123902_
                                               _e120768121393_
                                               _hd120769121396_
                                               _tl120770121398_
                                               _e120771121401_
                                               _hd120772121404_
                                               _tl120773121406_))
                                          (___match123901123902_
                                           _e120768121393_
                                           _hd120769121396_
                                           _tl120770121398_
                                           _e120771121401_
                                           _hd120772121404_
                                           _tl120773121406_))))
                                  (___match123901123902_
                                   _e120768121393_
                                   _hd120769121396_
                                   _tl120770121398_
                                   _e120771121401_
                                   _hd120772121404_
                                   _tl120773121406_))
                              (___match123901123902_
                               _e120768121393_
                               _hd120769121396_
                               _tl120770121398_
                               _e120771121401_
                               _hd120772121404_
                               _tl120773121406_))
                          (___match123901123902_
                           _e120768121393_
                           _hd120769121396_
                           _tl120770121398_
                           _e120771121401_
                           _hd120772121404_
                           _tl120773121406_))))
                  (___match123901123902_
                   _e120768121393_
                   _hd120769121396_
                   _tl120770121398_
                   _e120771121401_
                   _hd120772121404_
                   _tl120773121406_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match123901123902_
                                                   _e120768121393_
                                                   _hd120769121396_
                                                   _tl120770121398_
                                                   _e120771121401_
                                                   _hd120772121404_
                                                   _tl120773121406_))
                                              (___match123901123902_
                                               _e120768121393_
                                               _hd120769121396_
                                               _tl120770121398_
                                               _e120771121401_
                                               _hd120772121404_
                                               _tl120773121406_))))
                                      (___match123901123902_
                                       _e120768121393_
                                       _hd120769121396_
                                       _tl120770121398_
                                       _e120771121401_
                                       _hd120772121404_
                                       _tl120773121406_))
                                  (___match123901123902_
                                   _e120768121393_
                                   _hd120769121396_
                                   _tl120770121398_
                                   _e120771121401_
                                   _hd120772121404_
                                   _tl120773121406_))
                              (___match123901123902_
                               _e120768121393_
                               _hd120769121396_
                               _tl120770121398_
                               _e120771121401_
                               _hd120772121404_
                               _tl120773121406_))))
                      (___match123901123902_
                       _e120768121393_
                       _hd120769121396_
                       _tl120770121398_
                       _e120771121401_
                       _hd120772121404_
                       _tl120773121406_))))
              (___match123901123902_
               _e120768121393_
               _hd120769121396_
               _tl120770121398_
               _e120771121401_
               _hd120772121404_
               _tl120773121406_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match123901123902_
                                                   _e120768121393_
                                                   _hd120769121396_
                                                   _tl120770121398_
                                                   _e120771121401_
                                                   _hd120772121404_
                                                   _tl120773121406_))))
                                          (___match123901123902_
                                           _e120768121393_
                                           _hd120769121396_
                                           _tl120770121398_
                                           _e120771121401_
                                           _hd120772121404_
                                           _tl120773121406_))
                                      (___match123901123902_
                                       _e120768121393_
                                       _hd120769121396_
                                       _tl120770121398_
                                       _e120771121401_
                                       _hd120772121404_
                                       _tl120773121406_))
                                  (___match123901123902_
                                   _e120768121393_
                                   _hd120769121396_
                                   _tl120770121398_
                                   _e120771121401_
                                   _hd120772121404_
                                   _tl120773121406_))))
                          (___match123901123902_
                           _e120768121393_
                           _hd120769121396_
                           _tl120770121398_
                           _e120771121401_
                           _hd120772121404_
                           _tl120773121406_))))
                  (___match123901123902_
                   _e120768121393_
                   _hd120769121396_
                   _tl120770121398_
                   _e120771121401_
                   _hd120772121404_
                   _tl120773121406_))
              (___match123901123902_
               _e120768121393_
               _hd120769121396_
               _tl120770121398_
               _e120771121401_
               _hd120772121404_
               _tl120773121406_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match123901123902_
                                                   _e120768121393_
                                                   _hd120769121396_
                                                   _tl120770121398_
                                                   _e120771121401_
                                                   _hd120772121404_
                                                   _tl120773121406_))))
                                          (___match123901123902_
                                           _e120768121393_
                                           _hd120769121396_
                                           _tl120770121398_
                                           _e120771121401_
                                           _hd120772121404_
                                           _tl120773121406_))))
                                  (___match123901123902_
                                   _e120768121393_
                                   _hd120769121396_
                                   _tl120770121398_
                                   _e120771121401_
                                   _hd120772121404_
                                   _tl120773121406_))))
                          (___match124035124036_
                           _e120768121393_
                           _hd120769121396_
                           _tl120770121398_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx123716123717_))
                  (let ((_e120759121610_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx123716123717_))))
                    (let ((_tl120761121615_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120759121610_)))
                          (_hd120760121613_
                           (let ()
                             (declare (not safe))
                             (##car _e120759121610_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L121618_ _tl120761121615_))
                            (___kont123718123719_ _L121618_))
                          (___match123743123744_
                           _e120759121610_
                           _hd120760121613_
                           _tl120761121615_))))
                  (let () (declare (not safe)) (_g120756120952_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx120705_)
        (letrec ((_clause-e120707_
                  (lambda (_form120748_)
                    (let ((__obj125389
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
                       __obj125389
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form120748_))
                       (if (let ((__tmp125456
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp125456))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form120748_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form120748_))
                               '#f)
                           '#f))
                      __obj125389))))
          (let* ((_g120709120719_
                  (lambda (_g120710120716_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g120710120716_))))
                 (_g120708120745_
                  (lambda (_g120710120722_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g120710120722_))
                        (let ((_e120712120724_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g120710120722_))))
                          (let ((_hd120713120727_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120712120724_)))
                                (_tl120714120729_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120712120724_))))
                            ((lambda (_L120732_)
                               (let ((_clauses120743_
                                      (map _clause-e120707_ _L120732_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses120743_)))
                             _tl120714120729_)))
                        (let ()
                          (declare (not safe))
                          (_g120709120719_ _g120710120722_))))))
            (declare (not safe))
            (_g120708120745_ _stx120705_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx120637_)
        (let* ((_g120639120656_
                (lambda (_g120640120653_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g120640120653_))))
               (_g120638120702_
                (lambda (_g120640120659_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g120640120659_))
                      (let ((_e120643120661_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g120640120659_))))
                        (let ((_hd120644120664_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120643120661_)))
                              (_tl120645120666_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120643120661_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl120645120666_))
                              (let ((_e120646120669_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl120645120666_))))
                                (let ((_hd120647120672_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120646120669_)))
                                      (_tl120648120674_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120646120669_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120648120674_))
                                      (let ((_e120649120677_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120648120674_))))
                                        (let ((_hd120650120680_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120649120677_)))
                                              (_tl120651120682_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120649120677_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120651120682_))
                                              ((lambda (_L120685_ _L120686_)
                                                 (let ((__tmp125457
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L120685_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp125457
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd120650120680_
                                               _hd120647120672_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120639120656_
                                                 _g120640120659_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120639120656_ _g120640120659_)))))
                              (let ()
                                (declare (not safe))
                                (_g120639120656_ _g120640120659_)))))
                      (let ()
                        (declare (not safe))
                        (_g120639120656_ _g120640120659_))))))
          (declare (not safe))
          (_g120638120702_ _stx120637_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx120542_)
        (let* ((___stx124044124045_ _stx120542_)
               (_g120545120565_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx124044124045_)))))
          (let ((___kont124046124047_
                 (lambda (_L120609_ _L120610_)
                   (let ((_type-e120627120629_
                          (let ((__tmp125458
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L120610_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp125458))))
                     (if _type-e120627120629_
                         (let ((_type-e120632_ _type-e120627120629_))
                           (_type-e120632_ _stx120542_ _L120609_))
                         '#f))))
                (___kont124048124049_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx124044124045_))
                (let ((_e120549120577_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx124044124045_))))
                  (let ((_tl120551120582_
                         (let () (declare (not safe)) (##cdr _e120549120577_)))
                        (_hd120550120580_
                         (let ()
                           (declare (not safe))
                           (##car _e120549120577_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl120551120582_))
                        (let ((_e120552120585_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120551120582_))))
                          (let ((_tl120554120590_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120552120585_)))
                                (_hd120553120588_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120552120585_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120553120588_))
                                (let ((_e120555120593_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120553120588_))))
                                  (let ((_tl120557120598_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120555120593_)))
                                        (_hd120556120596_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120555120593_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120556120596_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd120556120596_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120557120598_))
                                                (let ((_e120558120601_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120557120598_))))
                                                  (let ((_tl120560120606_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120558120601_)))
                                                        (_hd120559120604_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120558120601_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120560120606_))
                                                        (___kont124046124047_
                                                         _tl120554120590_
                                                         _hd120559120604_)
                                                        (___kont124048124049_))))
                                                (___kont124048124049_))
                                            (___kont124048124049_))
                                        (___kont124048124049_))))
                                (___kont124048124049_))))
                        (___kont124048124049_))))
                (___kont124048124049_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx120491_)
        (let* ((_g120493120506_
                (lambda (_g120494120503_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g120494120503_))))
               (_g120492120539_
                (lambda (_g120494120509_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g120494120509_))
                      (let ((_e120496120511_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g120494120509_))))
                        (let ((_hd120497120514_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120496120511_)))
                              (_tl120498120516_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120496120511_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl120498120516_))
                              (let ((_e120499120519_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl120498120516_))))
                                (let ((_hd120500120522_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120499120519_)))
                                      (_tl120501120524_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120499120519_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl120501120524_))
                                      ((lambda (_L120527_)
                                         (let ((__tmp125459
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L120527_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp125459)))
                                       _hd120500120522_)
                                      (let ()
                                        (declare (not safe))
                                        (_g120493120506_ _g120494120509_)))))
                              (let ()
                                (declare (not safe))
                                (_g120493120506_ _g120494120509_)))))
                      (let ()
                        (declare (not safe))
                        (_g120493120506_ _g120494120509_))))))
          (declare (not safe))
          (_g120492120539_ _stx120491_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form119725_)
        (let* ((___stx124082124083_ _form119725_)
               (_g119730119887_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx124082124083_)))))
          (let ((___kont124084124085_
                 (lambda (_L120411_ _L120412_ _L120413_) '#t))
                (___kont124090124091_
                 (lambda (_L120199_
                          _L120200_
                          _L120201_
                          _L120202_
                          _L120203_
                          _L120204_)
                   '#t))
                (___kont124096124097_
                 (lambda (_L119995_ _L119996_ _L119997_ _L119998_) '#t))
                (___kont124098124099_ (lambda () '#f)))
            (let* ((___match124223124224_
                    (lambda (_e119847119899_
                             _hd119848119902_
                             _tl119849119904_
                             _e119850119907_
                             _hd119851119910_
                             _tl119852119912_
                             _e119853119915_
                             _hd119854119918_
                             _tl119855119920_
                             _e119856119923_
                             _hd119857119926_
                             _tl119858119928_
                             _e119859119931_
                             _hd119860119934_
                             _tl119861119936_
                             _e119862119939_
                             _hd119863119942_
                             _tl119864119944_
                             _e119865119947_
                             _hd119866119950_
                             _tl119867119952_
                             _e119868119955_
                             _hd119869119958_
                             _tl119870119960_
                             _e119871119963_
                             _hd119872119966_
                             _tl119873119968_
                             _e119874119971_
                             _hd119875119974_
                             _tl119876119976_
                             _e119877119979_
                             _hd119878119982_
                             _tl119879119984_
                             _e119880119987_
                             _hd119881119990_
                             _tl119882119992_)
                      (let ((_L119995_ _hd119881119990_)
                            (_L119996_ _hd119872119966_)
                            (_L119997_ _hd119863119942_)
                            (_L119998_ _hd119848119902_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L119998_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L119997_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L119998_ _L119995_))
                                 (let ((__tmp125460
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L119996_
                                           _L119998_))))
                                   (declare (not safe))
                                   (not __tmp125460)))
                            (___kont124096124097_
                             _L119995_
                             _L119996_
                             _L119997_
                             _L119998_)
                            (___kont124098124099_)))))
                   (___match124195124196_
                    (lambda (_e119847119899_
                             _hd119848119902_
                             _tl119849119904_
                             _e119850119907_
                             _hd119851119910_
                             _tl119852119912_
                             _e119853119915_
                             _hd119854119918_
                             _tl119855119920_
                             _e119856119923_
                             _hd119857119926_
                             _tl119858119928_
                             _e119859119931_
                             _hd119860119934_
                             _tl119861119936_
                             _e119862119939_
                             _hd119863119942_
                             _tl119864119944_
                             _e119865119947_
                             _hd119866119950_
                             _tl119867119952_
                             _e119868119955_
                             _hd119869119958_
                             _tl119870119960_
                             _e119871119963_
                             _hd119872119966_
                             _tl119873119968_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119867119952_))
                          (let ((_e119874119971_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119867119952_))))
                            (let ((_tl119876119976_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119874119971_)))
                                  (_hd119875119974_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119874119971_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119875119974_))
                                  (let ((_e119877119979_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119875119974_))))
                                    (let ((_tl119879119984_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119877119979_)))
                                          (_hd119878119982_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119877119979_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd119878119982_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd119878119982_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl119879119984_))
                                                  (let ((_e119880119987_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl119879119984_))))
                                                    (let ((_tl119882119992_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119880119987_)))
                                                          (_hd119881119990_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119880119987_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119882119992_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl119876119976_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl119852119912_))
                          (___match124223124224_
                           _e119847119899_
                           _hd119848119902_
                           _tl119849119904_
                           _e119850119907_
                           _hd119851119910_
                           _tl119852119912_
                           _e119853119915_
                           _hd119854119918_
                           _tl119855119920_
                           _e119856119923_
                           _hd119857119926_
                           _tl119858119928_
                           _e119859119931_
                           _hd119860119934_
                           _tl119861119936_
                           _e119862119939_
                           _hd119863119942_
                           _tl119864119944_
                           _e119865119947_
                           _hd119866119950_
                           _tl119867119952_
                           _e119868119955_
                           _hd119869119958_
                           _tl119870119960_
                           _e119871119963_
                           _hd119872119966_
                           _tl119873119968_
                           _e119874119971_
                           _hd119875119974_
                           _tl119876119976_
                           _e119877119979_
                           _hd119878119982_
                           _tl119879119984_
                           _e119880119987_
                           _hd119881119990_
                           _tl119882119992_)
                          (___kont124098124099_))
                      (___kont124098124099_))
                  (___kont124098124099_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont124098124099_))
                                              (___kont124098124099_))
                                          (___kont124098124099_))))
                                  (___kont124098124099_))))
                          (___kont124098124099_))))
                   (___match124125124126_
                    (lambda (_e119783120039_
                             _hd119784120042_
                             _tl119785120044_
                             ___splice124092124093_
                             _target119786120047_
                             _tl119788120049_)
                      (letrec ((_loop119789120052_
                                (lambda (_hd119787120055_ _arg119793120057_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd119787120055_))
                                      (let ((_e119790120060_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd119787120055_))))
                                        (let ((_lp-tl119792120065_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119790120060_)))
                                              (_lp-hd119791120063_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119790120060_))))
                                          (let ((__tmp125461
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd119791120063_
                                                         _arg119793120057_))))
                                            (declare (not safe))
                                            (_loop119789120052_
                                             _lp-tl119792120065_
                                             __tmp125461))))
                                      (let ((_arg119794120068_
                                             (reverse _arg119793120057_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl119785120044_))
                                            (let ((_e119795120071_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl119785120044_))))
                                              (let ((_tl119797120076_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e119795120071_)))
                                                    (_hd119796120074_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e119795120071_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd119796120074_))
                                                    (let ((_e119798120079_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd119796120074_))))
                                                      (let ((_tl119800120084_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e119798120079_)))
                    (_hd119799120082_
                     (let () (declare (not safe)) (##car _e119798120079_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd119799120082_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd119799120082_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119800120084_))
                            (let ((_e119801120087_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119800120084_))))
                              (let ((_tl119803120092_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119801120087_)))
                                    (_hd119802120090_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119801120087_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd119802120090_))
                                    (let ((_e119804120095_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd119802120090_))))
                                      (let ((_tl119806120100_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e119804120095_)))
                                            (_hd119805120098_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e119804120095_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd119805120098_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd119805120098_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl119806120100_))
                                                    (let ((_e119807120103_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl119806120100_))))
                                                      (let ((_tl119809120108_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e119807120103_)))
                    (_hd119808120106_
                     (let () (declare (not safe)) (##car _e119807120103_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl119809120108_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl119803120092_))
                        (let ((_e119810120111_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl119803120092_))))
                          (let ((_tl119812120116_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e119810120111_)))
                                (_hd119811120114_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e119810120111_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd119811120114_))
                                (let ((_e119813120119_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd119811120114_))))
                                  (let ((_tl119815120124_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e119813120119_)))
                                        (_hd119814120122_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e119813120119_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd119814120122_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd119814120122_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl119815120124_))
                                                (let ((_e119816120127_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl119815120124_))))
                                                  (let ((_tl119818120132_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e119816120127_)))
                                                        (_hd119817120130_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e119816120127_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl119818120132_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl119812120116_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl119812120116_))
                              '1)
                        (let ((___splice124094124095_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl119812120116_
                                  '1))))
                          (let ((_tl119821120137_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice124094124095_ '1)))
                                (_target119819120135_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice124094124095_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl119821120137_))
                                (let ((_e119828120140_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl119821120137_))))
                                  (let ((_tl119830120145_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e119828120140_)))
                                        (_hd119829120143_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e119828120140_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd119829120143_))
                                        (let ((_e119831120148_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd119829120143_))))
                                          (let ((_tl119833120153_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e119831120148_)))
                                                (_hd119832120151_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e119831120148_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd119832120151_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd119832120151_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl119833120153_))
                                                        (let ((_e119834120156_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl119833120153_))))
                  (let ((_tl119836120161_
                         (let () (declare (not safe)) (##cdr _e119834120156_)))
                        (_hd119835120159_
                         (let ()
                           (declare (not safe))
                           (##car _e119834120156_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl119836120161_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl119830120145_))
                            (letrec ((_loop119822120164_
                                      (lambda (_hd119820120167_
                                               _xarg119826120169_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd119820120167_))
                                            (let ((_e119823120172_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd119820120167_))))
                                              (let ((_lp-tl119825120177_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e119823120172_)))
                                                    (_lp-hd119824120175_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e119823120172_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd119824120175_))
                                                    (let ((_e119837120180_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd119824120175_))))
                                                      (let ((_tl119839120185_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e119837120180_)))
                    (_hd119838120183_
                     (let () (declare (not safe)) (##car _e119837120180_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd119838120183_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd119838120183_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119839120185_))
                            (let ((_e119840120188_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119839120185_))))
                              (let ((_tl119842120193_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119840120188_)))
                                    (_hd119841120191_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119840120188_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl119842120193_))
                                    (let ((__tmp125462
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd119841120191_
                                                   _xarg119826120169_))))
                                      (declare (not safe))
                                      (_loop119822120164_
                                       _lp-tl119825120177_
                                       __tmp125462))
                                    (___match124195124196_
                                     _e119783120039_
                                     _hd119784120042_
                                     _tl119785120044_
                                     _e119795120071_
                                     _hd119796120074_
                                     _tl119797120076_
                                     _e119798120079_
                                     _hd119799120082_
                                     _tl119800120084_
                                     _e119801120087_
                                     _hd119802120090_
                                     _tl119803120092_
                                     _e119804120095_
                                     _hd119805120098_
                                     _tl119806120100_
                                     _e119807120103_
                                     _hd119808120106_
                                     _tl119809120108_
                                     _e119810120111_
                                     _hd119811120114_
                                     _tl119812120116_
                                     _e119813120119_
                                     _hd119814120122_
                                     _tl119815120124_
                                     _e119816120127_
                                     _hd119817120130_
                                     _tl119818120132_))))
                            (___match124195124196_
                             _e119783120039_
                             _hd119784120042_
                             _tl119785120044_
                             _e119795120071_
                             _hd119796120074_
                             _tl119797120076_
                             _e119798120079_
                             _hd119799120082_
                             _tl119800120084_
                             _e119801120087_
                             _hd119802120090_
                             _tl119803120092_
                             _e119804120095_
                             _hd119805120098_
                             _tl119806120100_
                             _e119807120103_
                             _hd119808120106_
                             _tl119809120108_
                             _e119810120111_
                             _hd119811120114_
                             _tl119812120116_
                             _e119813120119_
                             _hd119814120122_
                             _tl119815120124_
                             _e119816120127_
                             _hd119817120130_
                             _tl119818120132_))
                        (___match124195124196_
                         _e119783120039_
                         _hd119784120042_
                         _tl119785120044_
                         _e119795120071_
                         _hd119796120074_
                         _tl119797120076_
                         _e119798120079_
                         _hd119799120082_
                         _tl119800120084_
                         _e119801120087_
                         _hd119802120090_
                         _tl119803120092_
                         _e119804120095_
                         _hd119805120098_
                         _tl119806120100_
                         _e119807120103_
                         _hd119808120106_
                         _tl119809120108_
                         _e119810120111_
                         _hd119811120114_
                         _tl119812120116_
                         _e119813120119_
                         _hd119814120122_
                         _tl119815120124_
                         _e119816120127_
                         _hd119817120130_
                         _tl119818120132_))
                    (___match124195124196_
                     _e119783120039_
                     _hd119784120042_
                     _tl119785120044_
                     _e119795120071_
                     _hd119796120074_
                     _tl119797120076_
                     _e119798120079_
                     _hd119799120082_
                     _tl119800120084_
                     _e119801120087_
                     _hd119802120090_
                     _tl119803120092_
                     _e119804120095_
                     _hd119805120098_
                     _tl119806120100_
                     _e119807120103_
                     _hd119808120106_
                     _tl119809120108_
                     _e119810120111_
                     _hd119811120114_
                     _tl119812120116_
                     _e119813120119_
                     _hd119814120122_
                     _tl119815120124_
                     _e119816120127_
                     _hd119817120130_
                     _tl119818120132_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match124195124196_
                                                     _e119783120039_
                                                     _hd119784120042_
                                                     _tl119785120044_
                                                     _e119795120071_
                                                     _hd119796120074_
                                                     _tl119797120076_
                                                     _e119798120079_
                                                     _hd119799120082_
                                                     _tl119800120084_
                                                     _e119801120087_
                                                     _hd119802120090_
                                                     _tl119803120092_
                                                     _e119804120095_
                                                     _hd119805120098_
                                                     _tl119806120100_
                                                     _e119807120103_
                                                     _hd119808120106_
                                                     _tl119809120108_
                                                     _e119810120111_
                                                     _hd119811120114_
                                                     _tl119812120116_
                                                     _e119813120119_
                                                     _hd119814120122_
                                                     _tl119815120124_
                                                     _e119816120127_
                                                     _hd119817120130_
                                                     _tl119818120132_))))
                                            (let ((_xarg119827120196_
                                                   (reverse _xarg119826120169_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl119797120076_))
                                                  (let ((_L120199_
                                                         _hd119835120159_)
                                                        (_L120200_
                                                         _xarg119827120196_)
                                                        (_L120201_
                                                         _hd119817120130_)
                                                        (_L120202_
                                                         _hd119808120106_)
                                                        (_L120203_
                                                         _tl119788120049_)
                                                        (_L120204_
                                                         _arg119794120068_))
                                                    (if (and (let ((__tmp125463
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp125464
                                   (lambda (_g120247120250_ _g120248120252_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g120247120250_
                                             _g120248120252_)))))
                              (declare (not safe))
                              (foldr1 __tmp125464 '() _L120204_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp125463))
                     (let () (declare (not safe)) (gx#identifier? _L120203_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L120202_ 'apply))
                     (fx= (length (let ((__tmp125465
                                         (lambda (_g120254120257_
                                                  _g120255120259_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g120254120257_
                                                   _g120255120259_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp125465 '() _L120204_)))
                          (length (let ((__tmp125466
                                         (lambda (_g120261120264_
                                                  _g120262120266_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g120261120264_
                                                   _g120262120266_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp125466 '() _L120200_))))
                     (let ((__tmp125469
                            (let ((__tmp125470
                                   (lambda (_g120268120271_ _g120269120273_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g120268120271_
                                             _g120269120273_)))))
                              (declare (not safe))
                              (foldr1 __tmp125470 '() _L120204_)))
                           (__tmp125467
                            (let ((__tmp125468
                                   (lambda (_g120275120278_ _g120276120280_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g120275120278_
                                             _g120276120280_)))))
                              (declare (not safe))
                              (foldr1 __tmp125468 '() _L120200_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp125469 __tmp125467))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L120203_ _L120199_))
                     (let ((__tmp125471
                            (let ((__tmp125475
                                   (lambda (_g120282120284_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g120282120284_
                                        _L120201_))))
                                  (__tmp125472
                                   (let ((__tmp125474
                                          (lambda (_g120286120289_
                                                   _g120287120291_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g120286120289_
                                                    _g120287120291_))))
                                         (__tmp125473
                                          (let ()
                                            (declare (not safe))
                                            (cons _L120203_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp125474
                                             __tmp125473
                                             _L120204_))))
                              (declare (not safe))
                              (find __tmp125475 __tmp125472))))
                       (declare (not safe))
                       (not __tmp125471)))
                (___kont124090124091_
                 _L120199_
                 _L120200_
                 _L120201_
                 _L120202_
                 _L120203_
                 _L120204_)
                (___match124195124196_
                 _e119783120039_
                 _hd119784120042_
                 _tl119785120044_
                 _e119795120071_
                 _hd119796120074_
                 _tl119797120076_
                 _e119798120079_
                 _hd119799120082_
                 _tl119800120084_
                 _e119801120087_
                 _hd119802120090_
                 _tl119803120092_
                 _e119804120095_
                 _hd119805120098_
                 _tl119806120100_
                 _e119807120103_
                 _hd119808120106_
                 _tl119809120108_
                 _e119810120111_
                 _hd119811120114_
                 _tl119812120116_
                 _e119813120119_
                 _hd119814120122_
                 _tl119815120124_
                 _e119816120127_
                 _hd119817120130_
                 _tl119818120132_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match124195124196_
                                                   _e119783120039_
                                                   _hd119784120042_
                                                   _tl119785120044_
                                                   _e119795120071_
                                                   _hd119796120074_
                                                   _tl119797120076_
                                                   _e119798120079_
                                                   _hd119799120082_
                                                   _tl119800120084_
                                                   _e119801120087_
                                                   _hd119802120090_
                                                   _tl119803120092_
                                                   _e119804120095_
                                                   _hd119805120098_
                                                   _tl119806120100_
                                                   _e119807120103_
                                                   _hd119808120106_
                                                   _tl119809120108_
                                                   _e119810120111_
                                                   _hd119811120114_
                                                   _tl119812120116_
                                                   _e119813120119_
                                                   _hd119814120122_
                                                   _tl119815120124_
                                                   _e119816120127_
                                                   _hd119817120130_
                                                   _tl119818120132_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop119822120164_ _target119819120135_ '())))
                            (___match124195124196_
                             _e119783120039_
                             _hd119784120042_
                             _tl119785120044_
                             _e119795120071_
                             _hd119796120074_
                             _tl119797120076_
                             _e119798120079_
                             _hd119799120082_
                             _tl119800120084_
                             _e119801120087_
                             _hd119802120090_
                             _tl119803120092_
                             _e119804120095_
                             _hd119805120098_
                             _tl119806120100_
                             _e119807120103_
                             _hd119808120106_
                             _tl119809120108_
                             _e119810120111_
                             _hd119811120114_
                             _tl119812120116_
                             _e119813120119_
                             _hd119814120122_
                             _tl119815120124_
                             _e119816120127_
                             _hd119817120130_
                             _tl119818120132_))
                        (___match124195124196_
                         _e119783120039_
                         _hd119784120042_
                         _tl119785120044_
                         _e119795120071_
                         _hd119796120074_
                         _tl119797120076_
                         _e119798120079_
                         _hd119799120082_
                         _tl119800120084_
                         _e119801120087_
                         _hd119802120090_
                         _tl119803120092_
                         _e119804120095_
                         _hd119805120098_
                         _tl119806120100_
                         _e119807120103_
                         _hd119808120106_
                         _tl119809120108_
                         _e119810120111_
                         _hd119811120114_
                         _tl119812120116_
                         _e119813120119_
                         _hd119814120122_
                         _tl119815120124_
                         _e119816120127_
                         _hd119817120130_
                         _tl119818120132_))))
                (___match124195124196_
                 _e119783120039_
                 _hd119784120042_
                 _tl119785120044_
                 _e119795120071_
                 _hd119796120074_
                 _tl119797120076_
                 _e119798120079_
                 _hd119799120082_
                 _tl119800120084_
                 _e119801120087_
                 _hd119802120090_
                 _tl119803120092_
                 _e119804120095_
                 _hd119805120098_
                 _tl119806120100_
                 _e119807120103_
                 _hd119808120106_
                 _tl119809120108_
                 _e119810120111_
                 _hd119811120114_
                 _tl119812120116_
                 _e119813120119_
                 _hd119814120122_
                 _tl119815120124_
                 _e119816120127_
                 _hd119817120130_
                 _tl119818120132_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match124195124196_
                                                     _e119783120039_
                                                     _hd119784120042_
                                                     _tl119785120044_
                                                     _e119795120071_
                                                     _hd119796120074_
                                                     _tl119797120076_
                                                     _e119798120079_
                                                     _hd119799120082_
                                                     _tl119800120084_
                                                     _e119801120087_
                                                     _hd119802120090_
                                                     _tl119803120092_
                                                     _e119804120095_
                                                     _hd119805120098_
                                                     _tl119806120100_
                                                     _e119807120103_
                                                     _hd119808120106_
                                                     _tl119809120108_
                                                     _e119810120111_
                                                     _hd119811120114_
                                                     _tl119812120116_
                                                     _e119813120119_
                                                     _hd119814120122_
                                                     _tl119815120124_
                                                     _e119816120127_
                                                     _hd119817120130_
                                                     _tl119818120132_))
                                                (___match124195124196_
                                                 _e119783120039_
                                                 _hd119784120042_
                                                 _tl119785120044_
                                                 _e119795120071_
                                                 _hd119796120074_
                                                 _tl119797120076_
                                                 _e119798120079_
                                                 _hd119799120082_
                                                 _tl119800120084_
                                                 _e119801120087_
                                                 _hd119802120090_
                                                 _tl119803120092_
                                                 _e119804120095_
                                                 _hd119805120098_
                                                 _tl119806120100_
                                                 _e119807120103_
                                                 _hd119808120106_
                                                 _tl119809120108_
                                                 _e119810120111_
                                                 _hd119811120114_
                                                 _tl119812120116_
                                                 _e119813120119_
                                                 _hd119814120122_
                                                 _tl119815120124_
                                                 _e119816120127_
                                                 _hd119817120130_
                                                 _tl119818120132_))))
                                        (___match124195124196_
                                         _e119783120039_
                                         _hd119784120042_
                                         _tl119785120044_
                                         _e119795120071_
                                         _hd119796120074_
                                         _tl119797120076_
                                         _e119798120079_
                                         _hd119799120082_
                                         _tl119800120084_
                                         _e119801120087_
                                         _hd119802120090_
                                         _tl119803120092_
                                         _e119804120095_
                                         _hd119805120098_
                                         _tl119806120100_
                                         _e119807120103_
                                         _hd119808120106_
                                         _tl119809120108_
                                         _e119810120111_
                                         _hd119811120114_
                                         _tl119812120116_
                                         _e119813120119_
                                         _hd119814120122_
                                         _tl119815120124_
                                         _e119816120127_
                                         _hd119817120130_
                                         _tl119818120132_))))
                                (___match124195124196_
                                 _e119783120039_
                                 _hd119784120042_
                                 _tl119785120044_
                                 _e119795120071_
                                 _hd119796120074_
                                 _tl119797120076_
                                 _e119798120079_
                                 _hd119799120082_
                                 _tl119800120084_
                                 _e119801120087_
                                 _hd119802120090_
                                 _tl119803120092_
                                 _e119804120095_
                                 _hd119805120098_
                                 _tl119806120100_
                                 _e119807120103_
                                 _hd119808120106_
                                 _tl119809120108_
                                 _e119810120111_
                                 _hd119811120114_
                                 _tl119812120116_
                                 _e119813120119_
                                 _hd119814120122_
                                 _tl119815120124_
                                 _e119816120127_
                                 _hd119817120130_
                                 _tl119818120132_))))
                        (___match124195124196_
                         _e119783120039_
                         _hd119784120042_
                         _tl119785120044_
                         _e119795120071_
                         _hd119796120074_
                         _tl119797120076_
                         _e119798120079_
                         _hd119799120082_
                         _tl119800120084_
                         _e119801120087_
                         _hd119802120090_
                         _tl119803120092_
                         _e119804120095_
                         _hd119805120098_
                         _tl119806120100_
                         _e119807120103_
                         _hd119808120106_
                         _tl119809120108_
                         _e119810120111_
                         _hd119811120114_
                         _tl119812120116_
                         _e119813120119_
                         _hd119814120122_
                         _tl119815120124_
                         _e119816120127_
                         _hd119817120130_
                         _tl119818120132_))
                    (___match124195124196_
                     _e119783120039_
                     _hd119784120042_
                     _tl119785120044_
                     _e119795120071_
                     _hd119796120074_
                     _tl119797120076_
                     _e119798120079_
                     _hd119799120082_
                     _tl119800120084_
                     _e119801120087_
                     _hd119802120090_
                     _tl119803120092_
                     _e119804120095_
                     _hd119805120098_
                     _tl119806120100_
                     _e119807120103_
                     _hd119808120106_
                     _tl119809120108_
                     _e119810120111_
                     _hd119811120114_
                     _tl119812120116_
                     _e119813120119_
                     _hd119814120122_
                     _tl119815120124_
                     _e119816120127_
                     _hd119817120130_
                     _tl119818120132_))
                (___kont124098124099_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont124098124099_))
                                            (___kont124098124099_))
                                        (___kont124098124099_))))
                                (___kont124098124099_))))
                        (___kont124098124099_))
                    (___kont124098124099_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont124098124099_))
                                                (___kont124098124099_))
                                            (___kont124098124099_))))
                                    (___kont124098124099_))))
                            (___kont124098124099_))
                        (___kont124098124099_))
                    (___kont124098124099_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont124098124099_))))
                                            (___kont124098124099_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop119789120052_ _target119786120047_ '())))))
                   (___match124113124114_
                    (lambda (_e119735120299_
                             _hd119736120302_
                             _tl119737120304_
                             ___splice124086124087_
                             _target119738120307_
                             _tl119740120309_)
                      (letrec ((_loop119741120312_
                                (lambda (_hd119739120315_ _arg119745120317_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd119739120315_))
                                      (let ((_e119742120320_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd119739120315_))))
                                        (let ((_lp-tl119744120325_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119742120320_)))
                                              (_lp-hd119743120323_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119742120320_))))
                                          (let ((__tmp125476
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd119743120323_
                                                         _arg119745120317_))))
                                            (declare (not safe))
                                            (_loop119741120312_
                                             _lp-tl119744120325_
                                             __tmp125476))))
                                      (let ((_arg119746120328_
                                             (reverse _arg119745120317_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl119737120304_))
                                            (let ((_e119747120331_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl119737120304_))))
                                              (let ((_tl119749120336_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e119747120331_)))
                                                    (_hd119748120334_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e119747120331_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd119748120334_))
                                                    (let ((_e119750120339_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd119748120334_))))
                                                      (let ((_tl119752120344_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e119750120339_)))
                    (_hd119751120342_
                     (let () (declare (not safe)) (##car _e119750120339_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd119751120342_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd119751120342_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119752120344_))
                            (let ((_e119753120347_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119752120344_))))
                              (let ((_tl119755120352_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119753120347_)))
                                    (_hd119754120350_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119753120347_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd119754120350_))
                                    (let ((_e119756120355_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd119754120350_))))
                                      (let ((_tl119758120360_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e119756120355_)))
                                            (_hd119757120358_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e119756120355_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd119757120358_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd119757120358_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl119758120360_))
                                                    (let ((_e119759120363_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl119758120360_))))
                                                      (let ((_tl119761120368_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e119759120363_)))
                    (_hd119760120366_
                     (let () (declare (not safe)) (##car _e119759120363_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl119761120368_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl119755120352_))
                        (let ((___splice124088124089_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl119755120352_
                                  '0))))
                          (let ((_tl119764120373_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice124088124089_ '1)))
                                (_target119762120371_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice124088124089_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl119764120373_))
                                (letrec ((_loop119765120376_
                                          (lambda (_hd119763120379_
                                                   _xarg119769120381_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd119763120379_))
                                                (let ((_e119766120384_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd119763120379_))))
                                                  (let ((_lp-tl119768120389_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e119766120384_)))
                                                        (_lp-hd119767120387_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e119766120384_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd119767120387_))
                                                        (let ((_e119771120392_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd119767120387_))))
                  (let ((_tl119773120397_
                         (let () (declare (not safe)) (##cdr _e119771120392_)))
                        (_hd119772120395_
                         (let ()
                           (declare (not safe))
                           (##car _e119771120392_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd119772120395_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd119772120395_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl119773120397_))
                                (let ((_e119774120400_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl119773120397_))))
                                  (let ((_tl119776120405_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e119774120400_)))
                                        (_hd119775120403_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e119774120400_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl119776120405_))
                                        (let ((__tmp125477
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd119775120403_
                                                       _xarg119769120381_))))
                                          (declare (not safe))
                                          (_loop119765120376_
                                           _lp-tl119768120389_
                                           __tmp125477))
                                        (___match124125124126_
                                         _e119735120299_
                                         _hd119736120302_
                                         _tl119737120304_
                                         ___splice124086124087_
                                         _target119738120307_
                                         _tl119740120309_))))
                                (___match124125124126_
                                 _e119735120299_
                                 _hd119736120302_
                                 _tl119737120304_
                                 ___splice124086124087_
                                 _target119738120307_
                                 _tl119740120309_))
                            (___match124125124126_
                             _e119735120299_
                             _hd119736120302_
                             _tl119737120304_
                             ___splice124086124087_
                             _target119738120307_
                             _tl119740120309_))
                        (___match124125124126_
                         _e119735120299_
                         _hd119736120302_
                         _tl119737120304_
                         ___splice124086124087_
                         _target119738120307_
                         _tl119740120309_))))
                (___match124125124126_
                 _e119735120299_
                 _hd119736120302_
                 _tl119737120304_
                 ___splice124086124087_
                 _target119738120307_
                 _tl119740120309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg119770120408_
                                                       (reverse _xarg119769120381_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl119749120336_))
                                                      (let ((_L120411_
                                                             _xarg119770120408_)
                                                            (_L120412_
                                                             _hd119760120366_)
                                                            (_L120413_
                                                             _arg119746120328_))
                                                        (if (and (let ((__tmp125478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp125479
                                       (lambda (_g120441120444_
                                                _g120442120446_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g120441120444_
                                                 _g120442120446_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp125479 '() _L120413_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp125478))
                         (fx= (length (let ((__tmp125480
                                             (lambda (_g120448120451_
                                                      _g120449120453_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g120448120451_
                                                       _g120449120453_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp125480 '() _L120413_)))
                              (length (let ((__tmp125481
                                             (lambda (_g120455120458_
                                                      _g120456120460_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g120455120458_
                                                       _g120456120460_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp125481 '() _L120411_))))
                         (let ((__tmp125484
                                (let ((__tmp125485
                                       (lambda (_g120462120465_
                                                _g120463120467_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g120462120465_
                                                 _g120463120467_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp125485 '() _L120413_)))
                               (__tmp125482
                                (let ((__tmp125483
                                       (lambda (_g120469120472_
                                                _g120470120474_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g120469120472_
                                                 _g120470120474_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp125483 '() _L120411_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp125484
                                    __tmp125482))
                         (let ((__tmp125486
                                (let ((__tmp125489
                                       (lambda (_g120476120478_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g120476120478_
                                            _L120412_))))
                                      (__tmp125487
                                       (let ((__tmp125488
                                              (lambda (_g120480120483_
                                                       _g120481120485_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g120480120483_
                                                        _g120481120485_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp125488 '() _L120413_))))
                                  (declare (not safe))
                                  (find __tmp125489 __tmp125487))))
                           (declare (not safe))
                           (not __tmp125486)))
                    (___kont124084124085_ _L120411_ _L120412_ _L120413_)
                    (___match124125124126_
                     _e119735120299_
                     _hd119736120302_
                     _tl119737120304_
                     ___splice124086124087_
                     _target119738120307_
                     _tl119740120309_)))
              (___match124125124126_
               _e119735120299_
               _hd119736120302_
               _tl119737120304_
               ___splice124086124087_
               _target119738120307_
               _tl119740120309_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop119765120376_
                                     _target119762120371_
                                     '())))
                                (___match124125124126_
                                 _e119735120299_
                                 _hd119736120302_
                                 _tl119737120304_
                                 ___splice124086124087_
                                 _target119738120307_
                                 _tl119740120309_))))
                        (___match124125124126_
                         _e119735120299_
                         _hd119736120302_
                         _tl119737120304_
                         ___splice124086124087_
                         _target119738120307_
                         _tl119740120309_))
                    (___match124125124126_
                     _e119735120299_
                     _hd119736120302_
                     _tl119737120304_
                     ___splice124086124087_
                     _target119738120307_
                     _tl119740120309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match124125124126_
                                                     _e119735120299_
                                                     _hd119736120302_
                                                     _tl119737120304_
                                                     ___splice124086124087_
                                                     _target119738120307_
                                                     _tl119740120309_))
                                                (___match124125124126_
                                                 _e119735120299_
                                                 _hd119736120302_
                                                 _tl119737120304_
                                                 ___splice124086124087_
                                                 _target119738120307_
                                                 _tl119740120309_))
                                            (___match124125124126_
                                             _e119735120299_
                                             _hd119736120302_
                                             _tl119737120304_
                                             ___splice124086124087_
                                             _target119738120307_
                                             _tl119740120309_))))
                                    (___match124125124126_
                                     _e119735120299_
                                     _hd119736120302_
                                     _tl119737120304_
                                     ___splice124086124087_
                                     _target119738120307_
                                     _tl119740120309_))))
                            (___match124125124126_
                             _e119735120299_
                             _hd119736120302_
                             _tl119737120304_
                             ___splice124086124087_
                             _target119738120307_
                             _tl119740120309_))
                        (___match124125124126_
                         _e119735120299_
                         _hd119736120302_
                         _tl119737120304_
                         ___splice124086124087_
                         _target119738120307_
                         _tl119740120309_))
                    (___match124125124126_
                     _e119735120299_
                     _hd119736120302_
                     _tl119737120304_
                     ___splice124086124087_
                     _target119738120307_
                     _tl119740120309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match124125124126_
                                                     _e119735120299_
                                                     _hd119736120302_
                                                     _tl119737120304_
                                                     ___splice124086124087_
                                                     _target119738120307_
                                                     _tl119740120309_))))
                                            (___match124125124126_
                                             _e119735120299_
                                             _hd119736120302_
                                             _tl119737120304_
                                             ___splice124086124087_
                                             _target119738120307_
                                             _tl119740120309_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop119741120312_ _target119738120307_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx124082124083_))
                  (let ((_e119735120299_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx124082124083_))))
                    (let ((_tl119737120304_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119735120299_)))
                          (_hd119736120302_
                           (let ()
                             (declare (not safe))
                             (##car _e119735120299_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd119736120302_))
                          (let ((___splice124086124087_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd119736120302_
                                    '0))))
                            (let ((_tl119740120309_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice124086124087_ '1)))
                                  (_target119738120307_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice124086124087_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119740120309_))
                                  (___match124113124114_
                                   _e119735120299_
                                   _hd119736120302_
                                   _tl119737120304_
                                   ___splice124086124087_
                                   _target119738120307_
                                   _tl119740120309_)
                                  (___match124125124126_
                                   _e119735120299_
                                   _hd119736120302_
                                   _tl119737120304_
                                   ___splice124086124087_
                                   _target119738120307_
                                   _tl119740120309_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119737120304_))
                              (let ((_e119850119907_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119737120304_))))
                                (let ((_tl119852119912_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119850119907_)))
                                      (_hd119851119910_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119850119907_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd119851119910_))
                                      (let ((_e119853119915_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd119851119910_))))
                                        (let ((_tl119855119920_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119853119915_)))
                                              (_hd119854119918_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119853119915_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd119854119918_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd119854119918_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl119855119920_))
                                                      (let ((_e119856119923_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl119855119920_))))
                (let ((_tl119858119928_
                       (let () (declare (not safe)) (##cdr _e119856119923_)))
                      (_hd119857119926_
                       (let () (declare (not safe)) (##car _e119856119923_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd119857119926_))
                      (let ((_e119859119931_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd119857119926_))))
                        (let ((_tl119861119936_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119859119931_)))
                              (_hd119860119934_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119859119931_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd119860119934_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd119860119934_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119861119936_))
                                      (let ((_e119862119939_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119861119936_))))
                                        (let ((_tl119864119944_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119862119939_)))
                                              (_hd119863119942_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119862119939_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119864119944_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl119858119928_))
                                                  (let ((_e119865119947_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl119858119928_))))
                                                    (let ((_tl119867119952_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119865119947_)))
                                                          (_hd119866119950_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119865119947_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd119866119950_))
                                                          (let ((_e119868119955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd119866119950_))))
                    (let ((_tl119870119960_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119868119955_)))
                          (_hd119869119958_
                           (let ()
                             (declare (not safe))
                             (##car _e119868119955_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd119869119958_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd119869119958_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl119870119960_))
                                  (let ((_e119871119963_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl119870119960_))))
                                    (let ((_tl119873119968_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119871119963_)))
                                          (_hd119872119966_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119871119963_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl119873119968_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl119867119952_))
                                              (let ((_e119874119971_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl119867119952_))))
                                                (let ((_tl119876119976_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e119874119971_)))
                                                      (_hd119875119974_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e119874119971_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd119875119974_))
                                                      (let ((_e119877119979_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd119875119974_))))
                (let ((_tl119879119984_
                       (let () (declare (not safe)) (##cdr _e119877119979_)))
                      (_hd119878119982_
                       (let () (declare (not safe)) (##car _e119877119979_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd119878119982_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd119878119982_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119879119984_))
                              (let ((_e119880119987_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119879119984_))))
                                (let ((_tl119882119992_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119880119987_)))
                                      (_hd119881119990_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119880119987_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl119882119992_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl119876119976_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119852119912_))
                                              (___match124223124224_
                                               _e119735120299_
                                               _hd119736120302_
                                               _tl119737120304_
                                               _e119850119907_
                                               _hd119851119910_
                                               _tl119852119912_
                                               _e119853119915_
                                               _hd119854119918_
                                               _tl119855119920_
                                               _e119856119923_
                                               _hd119857119926_
                                               _tl119858119928_
                                               _e119859119931_
                                               _hd119860119934_
                                               _tl119861119936_
                                               _e119862119939_
                                               _hd119863119942_
                                               _tl119864119944_
                                               _e119865119947_
                                               _hd119866119950_
                                               _tl119867119952_
                                               _e119868119955_
                                               _hd119869119958_
                                               _tl119870119960_
                                               _e119871119963_
                                               _hd119872119966_
                                               _tl119873119968_
                                               _e119874119971_
                                               _hd119875119974_
                                               _tl119876119976_
                                               _e119877119979_
                                               _hd119878119982_
                                               _tl119879119984_
                                               _e119880119987_
                                               _hd119881119990_
                                               _tl119882119992_)
                                              (___kont124098124099_))
                                          (___kont124098124099_))
                                      (___kont124098124099_))))
                              (___kont124098124099_))
                          (___kont124098124099_))
                      (___kont124098124099_))))
              (___kont124098124099_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont124098124099_))
                                          (___kont124098124099_))))
                                  (___kont124098124099_))
                              (___kont124098124099_))
                          (___kont124098124099_))))
                  (___kont124098124099_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont124098124099_))
                                              (___kont124098124099_))))
                                      (___kont124098124099_))
                                  (___kont124098124099_))
                              (___kont124098124099_))))
                      (___kont124098124099_))))
              (___kont124098124099_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont124098124099_))
                                              (___kont124098124099_))))
                                      (___kont124098124099_))))
                              (___kont124098124099_)))))
                  (___kont124098124099_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form119193_)
        (let* ((___stx124226124227_ _form119193_)
               (_g119197119321_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx124226124227_)))))
          (let ((___kont124228124229_
                 (lambda (_L119691_ _L119692_ _L119693_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L119692_))))
                (___kont124234124235_
                 (lambda (_L119539_ _L119540_ _L119541_ _L119542_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L119539_))))
                (___kont124238124239_
                 (lambda (_L119406_ _L119407_ _L119408_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L119406_)))))
            (let* ((___match124335124336_
                    (lambda (_e119287119326_
                             _hd119288119329_
                             _tl119289119331_
                             _e119290119334_
                             _hd119291119337_
                             _tl119292119339_
                             _e119293119342_
                             _hd119294119345_
                             _tl119295119347_
                             _e119296119350_
                             _hd119297119353_
                             _tl119298119355_
                             _e119299119358_
                             _hd119300119361_
                             _tl119301119363_
                             _e119302119366_
                             _hd119303119369_
                             _tl119304119371_
                             _e119305119374_
                             _hd119306119377_
                             _tl119307119379_
                             _e119308119382_
                             _hd119309119385_
                             _tl119310119387_
                             _e119311119390_
                             _hd119312119393_
                             _tl119313119395_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119307119379_))
                          (let ((_e119314119398_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119307119379_))))
                            (let ((_tl119316119403_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119314119398_)))
                                  (_hd119315119401_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119314119398_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119316119403_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl119292119339_))
                                      (___kont124238124239_
                                       _hd119312119393_
                                       _hd119303119369_
                                       _hd119288119329_)
                                      (let ()
                                        (declare (not safe))
                                        (_g119197119321_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119197119321_)))))
                          (let () (declare (not safe)) (_g119197119321_)))))
                   (___match124265124266_
                    (lambda (_e119248119443_
                             _hd119249119446_
                             _tl119250119448_
                             ___splice124236124237_
                             _target119251119451_
                             _tl119253119453_)
                      (letrec ((_loop119254119456_
                                (lambda (_hd119252119459_ _arg119258119461_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd119252119459_))
                                      (let ((_e119255119464_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd119252119459_))))
                                        (let ((_lp-tl119257119469_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119255119464_)))
                                              (_lp-hd119256119467_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119255119464_))))
                                          (let ((__tmp125490
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd119256119467_
                                                         _arg119258119461_))))
                                            (declare (not safe))
                                            (_loop119254119456_
                                             _lp-tl119257119469_
                                             __tmp125490))))
                                      (let ((_arg119259119472_
                                             (reverse _arg119258119461_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl119250119448_))
                                            (let ((_e119260119475_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl119250119448_))))
                                              (let ((_tl119262119480_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e119260119475_)))
                                                    (_hd119261119478_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e119260119475_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd119261119478_))
                                                    (let ((_e119263119483_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd119261119478_))))
                                                      (let ((_tl119265119488_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e119263119483_)))
                    (_hd119264119486_
                     (let () (declare (not safe)) (##car _e119263119483_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd119264119486_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd119264119486_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119265119488_))
                            (let ((_e119266119491_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119265119488_))))
                              (let ((_tl119268119496_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119266119491_)))
                                    (_hd119267119494_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119266119491_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd119267119494_))
                                    (let ((_e119269119499_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd119267119494_))))
                                      (let ((_tl119271119504_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e119269119499_)))
                                            (_hd119270119502_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e119269119499_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd119270119502_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd119270119502_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl119271119504_))
                                                    (let ((_e119272119507_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl119271119504_))))
                                                      (let ((_tl119274119512_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e119272119507_)))
                    (_hd119273119510_
                     (let () (declare (not safe)) (##car _e119272119507_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl119274119512_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl119268119496_))
                        (let ((_e119275119515_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl119268119496_))))
                          (let ((_tl119277119520_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e119275119515_)))
                                (_hd119276119518_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e119275119515_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd119276119518_))
                                (let ((_e119278119523_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd119276119518_))))
                                  (let ((_tl119280119528_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e119278119523_)))
                                        (_hd119279119526_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e119278119523_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd119279119526_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd119279119526_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl119280119528_))
                                                (let ((_e119281119531_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl119280119528_))))
                                                  (let ((_tl119283119536_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e119281119531_)))
                                                        (_hd119282119534_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e119281119531_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl119283119536_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl119262119480_))
                                                            (___kont124234124235_
                                                             _hd119282119534_
                                                             _hd119273119510_
                                                             _tl119253119453_
                                                             _arg119259119472_)
                                                            (___match124335124336_
                                                             _e119248119443_
                                                             _hd119249119446_
                                                             _tl119250119448_
                                                             _e119260119475_
                                                             _hd119261119478_
                                                             _tl119262119480_
                                                             _e119263119483_
                                                             _hd119264119486_
                                                             _tl119265119488_
                                                             _e119266119491_
                                                             _hd119267119494_
                                                             _tl119268119496_
                                                             _e119269119499_
                                                             _hd119270119502_
                                                             _tl119271119504_
                                                             _e119272119507_
                                                             _hd119273119510_
                                                             _tl119274119512_
                                                             _e119275119515_
                                                             _hd119276119518_
                                                             _tl119277119520_
                                                             _e119278119523_
                                                             _hd119279119526_
                                                             _tl119280119528_
                                                             _e119281119531_
                                                             _hd119282119534_
                                                             _tl119283119536_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g119197119321_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119197119321_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g119197119321_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g119197119321_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g119197119321_)))))
                        (let () (declare (not safe)) (_g119197119321_)))
                    (let () (declare (not safe)) (_g119197119321_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g119197119321_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119197119321_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g119197119321_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g119197119321_)))))
                            (let () (declare (not safe)) (_g119197119321_)))
                        (let () (declare (not safe)) (_g119197119321_)))
                    (let () (declare (not safe)) (_g119197119321_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g119197119321_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g119197119321_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop119254119456_ _target119251119451_ '())))))
                   (___match124253124254_
                    (lambda (_e119202119579_
                             _hd119203119582_
                             _tl119204119584_
                             ___splice124230124231_
                             _target119205119587_
                             _tl119207119589_)
                      (letrec ((_loop119208119592_
                                (lambda (_hd119206119595_ _arg119212119597_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd119206119595_))
                                      (let ((_e119209119600_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd119206119595_))))
                                        (let ((_lp-tl119211119605_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119209119600_)))
                                              (_lp-hd119210119603_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119209119600_))))
                                          (let ((__tmp125491
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd119210119603_
                                                         _arg119212119597_))))
                                            (declare (not safe))
                                            (_loop119208119592_
                                             _lp-tl119211119605_
                                             __tmp125491))))
                                      (let ((_arg119213119608_
                                             (reverse _arg119212119597_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl119204119584_))
                                            (let ((_e119214119611_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl119204119584_))))
                                              (let ((_tl119216119616_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e119214119611_)))
                                                    (_hd119215119614_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e119214119611_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd119215119614_))
                                                    (let ((_e119217119619_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd119215119614_))))
                                                      (let ((_tl119219119624_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e119217119619_)))
                    (_hd119218119622_
                     (let () (declare (not safe)) (##car _e119217119619_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd119218119622_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd119218119622_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119219119624_))
                            (let ((_e119220119627_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119219119624_))))
                              (let ((_tl119222119632_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119220119627_)))
                                    (_hd119221119630_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119220119627_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd119221119630_))
                                    (let ((_e119223119635_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd119221119630_))))
                                      (let ((_tl119225119640_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e119223119635_)))
                                            (_hd119224119638_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e119223119635_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd119224119638_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd119224119638_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl119225119640_))
                                                    (let ((_e119226119643_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl119225119640_))))
                                                      (let ((_tl119228119648_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e119226119643_)))
                    (_hd119227119646_
                     (let () (declare (not safe)) (##car _e119226119643_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl119228119648_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl119222119632_))
                        (let ((___splice124232124233_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl119222119632_
                                  '0))))
                          (let ((_tl119231119653_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice124232124233_ '1)))
                                (_target119229119651_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice124232124233_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl119231119653_))
                                (letrec ((_loop119232119656_
                                          (lambda (_hd119230119659_
                                                   _xarg119236119661_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd119230119659_))
                                                (let ((_e119233119664_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd119230119659_))))
                                                  (let ((_lp-tl119235119669_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e119233119664_)))
                                                        (_lp-hd119234119667_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e119233119664_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd119234119667_))
                                                        (let ((_e119238119672_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd119234119667_))))
                  (let ((_tl119240119677_
                         (let () (declare (not safe)) (##cdr _e119238119672_)))
                        (_hd119239119675_
                         (let ()
                           (declare (not safe))
                           (##car _e119238119672_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd119239119675_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd119239119675_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl119240119677_))
                                (let ((_e119241119680_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl119240119677_))))
                                  (let ((_tl119243119685_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e119241119680_)))
                                        (_hd119242119683_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e119241119680_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl119243119685_))
                                        (let ((__tmp125492
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd119242119683_
                                                       _xarg119236119661_))))
                                          (declare (not safe))
                                          (_loop119232119656_
                                           _lp-tl119235119669_
                                           __tmp125492))
                                        (___match124265124266_
                                         _e119202119579_
                                         _hd119203119582_
                                         _tl119204119584_
                                         ___splice124230124231_
                                         _target119205119587_
                                         _tl119207119589_))))
                                (___match124265124266_
                                 _e119202119579_
                                 _hd119203119582_
                                 _tl119204119584_
                                 ___splice124230124231_
                                 _target119205119587_
                                 _tl119207119589_))
                            (___match124265124266_
                             _e119202119579_
                             _hd119203119582_
                             _tl119204119584_
                             ___splice124230124231_
                             _target119205119587_
                             _tl119207119589_))
                        (___match124265124266_
                         _e119202119579_
                         _hd119203119582_
                         _tl119204119584_
                         ___splice124230124231_
                         _target119205119587_
                         _tl119207119589_))))
                (___match124265124266_
                 _e119202119579_
                 _hd119203119582_
                 _tl119204119584_
                 ___splice124230124231_
                 _target119205119587_
                 _tl119207119589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg119237119688_
                                                       (reverse _xarg119236119661_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl119216119616_))
                                                      (___kont124228124229_
                                                       _xarg119237119688_
                                                       _hd119227119646_
                                                       _arg119213119608_)
                                                      (___match124265124266_
                                                       _e119202119579_
                                                       _hd119203119582_
                                                       _tl119204119584_
                                                       ___splice124230124231_
                                                       _target119205119587_
                                                       _tl119207119589_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop119232119656_
                                     _target119229119651_
                                     '())))
                                (___match124265124266_
                                 _e119202119579_
                                 _hd119203119582_
                                 _tl119204119584_
                                 ___splice124230124231_
                                 _target119205119587_
                                 _tl119207119589_))))
                        (___match124265124266_
                         _e119202119579_
                         _hd119203119582_
                         _tl119204119584_
                         ___splice124230124231_
                         _target119205119587_
                         _tl119207119589_))
                    (___match124265124266_
                     _e119202119579_
                     _hd119203119582_
                     _tl119204119584_
                     ___splice124230124231_
                     _target119205119587_
                     _tl119207119589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match124265124266_
                                                     _e119202119579_
                                                     _hd119203119582_
                                                     _tl119204119584_
                                                     ___splice124230124231_
                                                     _target119205119587_
                                                     _tl119207119589_))
                                                (___match124265124266_
                                                 _e119202119579_
                                                 _hd119203119582_
                                                 _tl119204119584_
                                                 ___splice124230124231_
                                                 _target119205119587_
                                                 _tl119207119589_))
                                            (___match124265124266_
                                             _e119202119579_
                                             _hd119203119582_
                                             _tl119204119584_
                                             ___splice124230124231_
                                             _target119205119587_
                                             _tl119207119589_))))
                                    (___match124265124266_
                                     _e119202119579_
                                     _hd119203119582_
                                     _tl119204119584_
                                     ___splice124230124231_
                                     _target119205119587_
                                     _tl119207119589_))))
                            (___match124265124266_
                             _e119202119579_
                             _hd119203119582_
                             _tl119204119584_
                             ___splice124230124231_
                             _target119205119587_
                             _tl119207119589_))
                        (___match124265124266_
                         _e119202119579_
                         _hd119203119582_
                         _tl119204119584_
                         ___splice124230124231_
                         _target119205119587_
                         _tl119207119589_))
                    (___match124265124266_
                     _e119202119579_
                     _hd119203119582_
                     _tl119204119584_
                     ___splice124230124231_
                     _target119205119587_
                     _tl119207119589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match124265124266_
                                                     _e119202119579_
                                                     _hd119203119582_
                                                     _tl119204119584_
                                                     ___splice124230124231_
                                                     _target119205119587_
                                                     _tl119207119589_))))
                                            (___match124265124266_
                                             _e119202119579_
                                             _hd119203119582_
                                             _tl119204119584_
                                             ___splice124230124231_
                                             _target119205119587_
                                             _tl119207119589_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop119208119592_ _target119205119587_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx124226124227_))
                  (let ((_e119202119579_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx124226124227_))))
                    (let ((_tl119204119584_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119202119579_)))
                          (_hd119203119582_
                           (let ()
                             (declare (not safe))
                             (##car _e119202119579_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd119203119582_))
                          (let ((___splice124230124231_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd119203119582_
                                    '0))))
                            (let ((_tl119207119589_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice124230124231_ '1)))
                                  (_target119205119587_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice124230124231_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119207119589_))
                                  (___match124253124254_
                                   _e119202119579_
                                   _hd119203119582_
                                   _tl119204119584_
                                   ___splice124230124231_
                                   _target119205119587_
                                   _tl119207119589_)
                                  (___match124265124266_
                                   _e119202119579_
                                   _hd119203119582_
                                   _tl119204119584_
                                   ___splice124230124231_
                                   _target119205119587_
                                   _tl119207119589_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119204119584_))
                              (let ((_e119290119334_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119204119584_))))
                                (let ((_tl119292119339_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119290119334_)))
                                      (_hd119291119337_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119290119334_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd119291119337_))
                                      (let ((_e119293119342_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd119291119337_))))
                                        (let ((_tl119295119347_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119293119342_)))
                                              (_hd119294119345_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119293119342_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd119294119345_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd119294119345_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl119295119347_))
                                                      (let ((_e119296119350_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl119295119347_))))
                (let ((_tl119298119355_
                       (let () (declare (not safe)) (##cdr _e119296119350_)))
                      (_hd119297119353_
                       (let () (declare (not safe)) (##car _e119296119350_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd119297119353_))
                      (let ((_e119299119358_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd119297119353_))))
                        (let ((_tl119301119363_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119299119358_)))
                              (_hd119300119361_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119299119358_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd119300119361_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd119300119361_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119301119363_))
                                      (let ((_e119302119366_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119301119363_))))
                                        (let ((_tl119304119371_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119302119366_)))
                                              (_hd119303119369_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119302119366_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119304119371_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl119298119355_))
                                                  (let ((_e119305119374_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl119298119355_))))
                                                    (let ((_tl119307119379_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119305119374_)))
                                                          (_hd119306119377_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119305119374_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd119306119377_))
                                                          (let ((_e119308119382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd119306119377_))))
                    (let ((_tl119310119387_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119308119382_)))
                          (_hd119309119385_
                           (let ()
                             (declare (not safe))
                             (##car _e119308119382_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd119309119385_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd119309119385_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl119310119387_))
                                  (let ((_e119311119390_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl119310119387_))))
                                    (let ((_tl119313119395_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119311119390_)))
                                          (_hd119312119393_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119311119390_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl119313119395_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl119307119379_))
                                              (let ((_e119314119398_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl119307119379_))))
                                                (let ((_tl119316119403_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e119314119398_)))
                                                      (_hd119315119401_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e119314119398_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl119316119403_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119292119339_))
                                                          (___kont124238124239_
                                                           _hd119312119393_
                                                           _hd119303119369_
                                                           _hd119203119582_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g119197119321_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g119197119321_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g119197119321_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g119197119321_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119197119321_)))
                              (let () (declare (not safe)) (_g119197119321_)))
                          (let () (declare (not safe)) (_g119197119321_)))))
                  (let () (declare (not safe)) (_g119197119321_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119197119321_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g119197119321_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119197119321_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119197119321_)))
                              (let ()
                                (declare (not safe))
                                (_g119197119321_)))))
                      (let () (declare (not safe)) (_g119197119321_)))))
              (let () (declare (not safe)) (_g119197119321_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119197119321_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g119197119321_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119197119321_)))))
                              (let ()
                                (declare (not safe))
                                (_g119197119321_))))))
                  (let () (declare (not safe)) (_g119197119321_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form118997_)
        (let* ((_g118999119013_
                (lambda (_g119000119010_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g119000119010_))))
               (_g118998119190_
                (lambda (_g119000119016_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g119000119016_))
                      (let ((_e119003119018_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g119000119016_))))
                        (let ((_hd119004119021_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119003119018_)))
                              (_tl119005119023_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119003119018_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119005119023_))
                              (let ((_e119006119026_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119005119023_))))
                                (let ((_hd119007119029_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119006119026_)))
                                      (_tl119008119031_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119006119026_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl119008119031_))
                                      ((lambda (_L119034_ _L119035_)
                                         (let* ((___stx124348124349_ _L119035_)
                                                (_g119050119078_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx124348124349_)))))
                                           (let ((___kont124350124351_
                                                  (lambda (_L119169_)
                                                    (length (let ((__tmp125493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g119179119182_ _g119180119184_)
                             (let ()
                               (declare (not safe))
                               (cons _g119179119182_ _g119180119184_)))))
                      (declare (not safe))
                      (foldr1 __tmp125493 '() _L119169_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont124354124355_
                                                  (lambda (_L119120_ _L119121_)
                                                    (let ((__tmp125494
                                                           (length (let ((__tmp125495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g119132119135_ _g119133119137_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g119132119135_
                                            _g119133119137_)))))
                             (declare (not safe))
                             (foldr1 __tmp125495 '() _L119121_)))))
              (declare (not safe))
              (cons __tmp125494 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont124358124359_
                                                  (lambda (_L119083_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match124373124374_
                                                     (lambda (___splice124356124357_
                                                              _target119064119096_
                                                              _tl119066119098_)
                                                       (letrec ((_loop119067119101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd119065119104_ _arg119071119106_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd119065119104_))
                               (let ((_e119068119109_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd119065119104_))))
                                 (let ((_lp-tl119070119114_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e119068119109_)))
                                       (_lp-hd119069119112_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e119068119109_))))
                                   (let ((__tmp125496
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd119069119112_
                                                  _arg119071119106_))))
                                     (declare (not safe))
                                     (_loop119067119101_
                                      _lp-tl119070119114_
                                      __tmp125496))))
                               (let ((_arg119072119117_
                                      (reverse _arg119071119106_)))
                                 (___kont124354124355_
                                  _tl119066119098_
                                  _arg119072119117_))))))
                 (let ()
                   (declare (not safe))
                   (_loop119067119101_ _target119064119096_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match124367124368_
                                                     (lambda (___splice124352124353_
                                                              _target119053119145_
                                                              _tl119055119147_)
                                                       (letrec ((_loop119056119150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd119054119153_ _arg119060119155_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd119054119153_))
                               (let ((_e119057119158_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd119054119153_))))
                                 (let ((_lp-tl119059119163_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e119057119158_)))
                                       (_lp-hd119058119161_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e119057119158_))))
                                   (let ((__tmp125497
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd119058119161_
                                                  _arg119060119155_))))
                                     (declare (not safe))
                                     (_loop119056119150_
                                      _lp-tl119059119163_
                                      __tmp125497))))
                               (let ((_arg119061119166_
                                      (reverse _arg119060119155_)))
                                 (___kont124350124351_ _arg119061119166_))))))
                 (let ()
                   (declare (not safe))
                   (_loop119056119150_ _target119053119145_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx124348124349_))
                                                   (let ((___splice124352124353_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx124348124349_
                                                             '0))))
                                                     (let ((_tl119055119147_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice124352124353_
                                                               '1)))
                                                           (_target119053119145_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice124352124353_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119055119147_))
                                                           (___match124367124368_
                                                            ___splice124352124353_
                                                            _target119053119145_
                                                            _tl119055119147_)
                                                           (___match124373124374_
                                                            ___splice124352124353_
                                                            _target119053119145_
                                                            _tl119055119147_))))
                                                   (___kont124358124359_
                                                    ___stx124348124349_))))))
                                       _hd119007119029_
                                       _hd119004119021_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118999119013_ _g119000119016_)))))
                              (let ()
                                (declare (not safe))
                                (_g118999119013_ _g119000119016_)))))
                      (let ()
                        (declare (not safe))
                        (_g118999119013_ _g119000119016_))))))
          (declare (not safe))
          (_g118998119190_ _form118997_))))
    (define gxc#lambda-expr?
      (lambda (_expr118950_)
        (let* ((___stx124376124377_ _expr118950_)
               (_g118953118963_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx124376124377_)))))
          (let ((___kont124378124379_ (lambda (_L118983_) '#t))
                (___kont124380124381_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx124376124377_))
                (let ((_e118956118975_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx124376124377_))))
                  (let ((_tl118958118980_
                         (let () (declare (not safe)) (##cdr _e118956118975_)))
                        (_hd118957118978_
                         (let ()
                           (declare (not safe))
                           (##car _e118956118975_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd118957118978_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd118957118978_))
                            (___kont124378124379_ _tl118958118980_)
                            (___kont124380124381_))
                        (___kont124380124381_))))
                (___kont124380124381_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr118903_)
        (let* ((___stx124394124395_ _expr118903_)
               (_g118906118916_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx124394124395_)))))
          (let ((___kont124396124397_ (lambda (_L118936_) '#t))
                (___kont124398124399_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx124394124395_))
                (let ((_e118909118928_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx124394124395_))))
                  (let ((_tl118911118933_
                         (let () (declare (not safe)) (##cdr _e118909118928_)))
                        (_hd118910118931_
                         (let ()
                           (declare (not safe))
                           (##car _e118909118928_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd118910118931_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd118910118931_))
                            (___kont124396124397_ _tl118911118933_)
                            (___kont124398124399_))
                        (___kont124398124399_))))
                (___kont124398124399_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr118772_)
        (let* ((___stx124412124413_ _expr118772_)
               (_g118775118805_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx124412124413_)))))
          (let ((___kont124414124415_
                 (lambda (_L118873_ _L118874_ _L118875_)
                   (if (let () (declare (not safe)) (gx#identifier? _L118875_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L118874_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L118873_))
                           '#f)
                       '#f)))
                (___kont124416124417_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx124412124413_))
                (let ((_e118780118817_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx124412124413_))))
                  (let ((_tl118782118822_
                         (let () (declare (not safe)) (##cdr _e118780118817_)))
                        (_hd118781118820_
                         (let ()
                           (declare (not safe))
                           (##car _e118780118817_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd118781118820_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd118781118820_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl118782118822_))
                                (let ((_e118783118825_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl118782118822_))))
                                  (let ((_tl118785118830_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e118783118825_)))
                                        (_hd118784118828_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e118783118825_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd118784118828_))
                                        (let ((_e118786118833_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd118784118828_))))
                                          (let ((_tl118788118838_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e118786118833_)))
                                                (_hd118787118836_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e118786118833_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd118787118836_))
                                                (let ((_e118789118841_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd118787118836_))))
                                                  (let ((_tl118791118846_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e118789118841_)))
                                                        (_hd118790118844_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e118789118841_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd118790118844_))
                                                        (let ((_e118792118849_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd118790118844_))))
                  (let ((_tl118794118854_
                         (let () (declare (not safe)) (##cdr _e118792118849_)))
                        (_hd118793118852_
                         (let ()
                           (declare (not safe))
                           (##car _e118792118849_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl118794118854_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118791118846_))
                            (let ((_e118795118857_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118791118846_))))
                              (let ((_tl118797118862_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118795118857_)))
                                    (_hd118796118860_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118795118857_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl118797118862_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl118788118838_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl118785118830_))
                                            (let ((_e118798118865_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl118785118830_))))
                                              (let ((_tl118800118870_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e118798118865_)))
                                                    (_hd118799118868_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e118798118865_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl118800118870_))
                                                    (___kont124414124415_
                                                     _hd118799118868_
                                                     _hd118796118860_
                                                     _hd118793118852_)
                                                    (___kont124416124417_))))
                                            (___kont124416124417_))
                                        (___kont124416124417_))
                                    (___kont124416124417_))))
                            (___kont124416124417_))
                        (___kont124416124417_))))
                (___kont124416124417_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont124416124417_))))
                                        (___kont124416124417_))))
                                (___kont124416124417_))
                            (___kont124416124417_))
                        (___kont124416124417_))))
                (___kont124416124417_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr118097_)
        (let* ((___stx124474124475_ _expr118097_)
               (_g118100118258_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx124474124475_)))))
          (let ((___kont124476124477_
                 (lambda (_L118646_
                          _L118647_
                          _L118648_
                          _L118649_
                          _L118650_
                          _L118651_
                          _L118652_
                          _L118653_
                          _L118654_
                          _L118655_
                          _L118656_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L118653_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L118649_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L118648_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L118656_
                                      _L118647_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L118655_
                                          _L118652_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L118650_
                                              _L118646_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L118654_
                                              _L118651_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont124478124479_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx124474124475_))
                (let ((_e118113118270_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx124474124475_))))
                  (let ((_tl118115118275_
                         (let () (declare (not safe)) (##cdr _e118113118270_)))
                        (_hd118114118273_
                         (let ()
                           (declare (not safe))
                           (##car _e118113118270_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd118114118273_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd118114118273_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl118115118275_))
                                (let ((_e118116118278_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl118115118275_))))
                                  (let ((_tl118118118283_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e118116118278_)))
                                        (_hd118117118281_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e118116118278_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd118117118281_))
                                        (let ((_e118119118286_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd118117118281_))))
                                          (let ((_tl118121118291_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e118119118286_)))
                                                (_hd118120118289_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e118119118286_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd118120118289_))
                                                (let ((_e118122118294_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd118120118289_))))
                                                  (let ((_tl118124118299_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e118122118294_)))
                                                        (_hd118123118297_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e118122118294_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd118123118297_))
                                                        (let ((_e118125118302_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd118123118297_))))
                  (let ((_tl118127118307_
                         (let () (declare (not safe)) (##cdr _e118125118302_)))
                        (_hd118126118305_
                         (let ()
                           (declare (not safe))
                           (##car _e118125118302_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl118127118307_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118124118299_))
                            (let ((_e118128118310_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118124118299_))))
                              (let ((_tl118130118315_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118128118310_)))
                                    (_hd118129118313_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118128118310_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd118129118313_))
                                    (let ((_e118131118318_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd118129118313_))))
                                      (let ((_tl118133118323_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e118131118318_)))
                                            (_hd118132118321_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e118131118318_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd118132118321_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd118132118321_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl118133118323_))
                                                    (let ((_e118134118326_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl118133118323_))))
                                                      (let ((_tl118136118331_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e118134118326_)))
                    (_hd118135118329_
                     (let () (declare (not safe)) (##car _e118134118326_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd118135118329_))
                    (let ((_e118137118334_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd118135118329_))))
                      (let ((_tl118139118339_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118137118334_)))
                            (_hd118138118337_
                             (let ()
                               (declare (not safe))
                               (##car _e118137118334_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd118138118337_))
                            (let ((_e118140118342_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd118138118337_))))
                              (let ((_tl118142118347_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118140118342_)))
                                    (_hd118141118345_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118140118342_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd118141118345_))
                                    (let ((_e118143118350_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd118141118345_))))
                                      (let ((_tl118145118355_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e118143118350_)))
                                            (_hd118144118353_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e118143118350_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118145118355_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl118142118347_))
                                                (let ((_e118146118358_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl118142118347_))))
                                                  (let ((_tl118148118363_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e118146118358_)))
                                                        (_hd118147118361_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e118146118358_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl118148118363_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl118139118339_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl118136118331_))
                        (let ((_e118149118366_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl118136118331_))))
                          (let ((_tl118151118371_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118149118366_)))
                                (_hd118150118369_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118149118366_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd118150118369_))
                                (let ((_e118152118374_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd118150118369_))))
                                  (let ((_tl118154118379_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e118152118374_)))
                                        (_hd118153118377_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e118152118374_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd118153118377_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd118153118377_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl118154118379_))
                                                (let ((_e118155118382_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl118154118379_))))
                                                  (let ((_tl118157118387_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e118155118382_)))
                                                        (_hd118156118385_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e118155118382_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd118156118385_))
                                                        (let ((_e118158118390_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd118156118385_))))
                  (let ((_tl118160118395_
                         (let () (declare (not safe)) (##cdr _e118158118390_)))
                        (_hd118159118393_
                         (let ()
                           (declare (not safe))
                           (##car _e118158118390_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl118157118387_))
                        (let ((_e118161118398_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl118157118387_))))
                          (let ((_tl118163118403_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118161118398_)))
                                (_hd118162118401_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118161118398_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd118162118401_))
                                (let ((_e118164118406_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd118162118401_))))
                                  (let ((_tl118166118411_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e118164118406_)))
                                        (_hd118165118409_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e118164118406_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd118165118409_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd118165118409_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl118166118411_))
                                                (let ((_e118167118414_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl118166118411_))))
                                                  (let ((_tl118169118419_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e118167118414_)))
                                                        (_hd118168118417_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e118167118414_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd118168118417_))
                                                        (let ((_e118170118422_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd118168118417_))))
                  (let ((_tl118172118427_
                         (let () (declare (not safe)) (##cdr _e118170118422_)))
                        (_hd118171118425_
                         (let ()
                           (declare (not safe))
                           (##car _e118170118422_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd118171118425_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd118171118425_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl118172118427_))
                                (let ((_e118173118430_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl118172118427_))))
                                  (let ((_tl118175118435_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e118173118430_)))
                                        (_hd118174118433_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e118173118430_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl118175118435_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl118169118419_))
                                            (let ((_e118176118438_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl118169118419_))))
                                              (let ((_tl118178118443_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e118176118438_)))
                                                    (_hd118177118441_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e118176118438_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd118177118441_))
                                                    (let ((_e118179118446_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd118177118441_))))
                                                      (let ((_tl118181118451_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e118179118446_)))
                    (_hd118180118449_
                     (let () (declare (not safe)) (##car _e118179118446_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd118180118449_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd118180118449_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118181118451_))
                            (let ((_e118182118454_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118181118451_))))
                              (let ((_tl118184118459_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118182118454_)))
                                    (_hd118183118457_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118182118454_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl118184118459_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl118178118443_))
                                        (let ((_e118185118462_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl118178118443_))))
                                          (let ((_tl118187118467_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e118185118462_)))
                                                (_hd118186118465_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e118185118462_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd118186118465_))
                                                (let ((_e118188118470_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd118186118465_))))
                                                  (let ((_tl118190118475_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e118188118470_)))
                                                        (_hd118189118473_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e118188118470_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd118189118473_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd118189118473_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl118190118475_))
                        (let ((_e118191118478_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl118190118475_))))
                          (let ((_tl118193118483_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118191118478_)))
                                (_hd118192118481_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118191118478_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl118193118483_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl118163118403_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl118151118371_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118130118315_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl118121118291_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl118118118283_))
                                                    (let ((_e118194118486_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl118118118283_))))
                                                      (let ((_tl118196118491_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e118194118486_)))
                    (_hd118195118489_
                     (let () (declare (not safe)) (##car _e118194118486_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd118195118489_))
                    (let ((_e118197118494_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd118195118489_))))
                      (let ((_tl118199118499_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118197118494_)))
                            (_hd118198118497_
                             (let ()
                               (declare (not safe))
                               (##car _e118197118494_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd118198118497_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd118198118497_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl118199118499_))
                                    (let ((_e118200118502_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl118199118499_))))
                                      (let ((_tl118202118507_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e118200118502_)))
                                            (_hd118201118505_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e118200118502_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl118202118507_))
                                            (let ((_e118203118510_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl118202118507_))))
                                              (let ((_tl118205118515_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e118203118510_)))
                                                    (_hd118204118513_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e118203118510_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd118204118513_))
                                                    (let ((_e118206118518_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd118204118513_))))
                                                      (let ((_tl118208118523_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e118206118518_)))
                    (_hd118207118521_
                     (let () (declare (not safe)) (##car _e118206118518_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd118207118521_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd118207118521_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118208118523_))
                            (let ((_e118209118526_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118208118523_))))
                              (let ((_tl118211118531_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118209118526_)))
                                    (_hd118210118529_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118209118526_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd118210118529_))
                                    (let ((_e118212118534_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd118210118529_))))
                                      (let ((_tl118214118539_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e118212118534_)))
                                            (_hd118213118537_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e118212118534_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd118213118537_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd118213118537_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl118214118539_))
                                                    (let ((_e118215118542_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl118214118539_))))
                                                      (let ((_tl118217118547_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e118215118542_)))
                    (_hd118216118545_
                     (let () (declare (not safe)) (##car _e118215118542_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl118217118547_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl118211118531_))
                        (let ((_e118218118550_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl118211118531_))))
                          (let ((_tl118220118555_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118218118550_)))
                                (_hd118219118553_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118218118550_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd118219118553_))
                                (let ((_e118221118558_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd118219118553_))))
                                  (let ((_tl118223118563_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e118221118558_)))
                                        (_hd118222118561_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e118221118558_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd118222118561_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd118222118561_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl118223118563_))
                                                (let ((_e118224118566_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl118223118563_))))
                                                  (let ((_tl118226118571_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e118224118566_)))
                                                        (_hd118225118569_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e118224118566_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl118226118571_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl118220118555_))
                                                            (let ((_e118227118574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl118220118555_))))
                      (let ((_tl118229118579_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118227118574_)))
                            (_hd118228118577_
                             (let ()
                               (declare (not safe))
                               (##car _e118227118574_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd118228118577_))
                            (let ((_e118230118582_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd118228118577_))))
                              (let ((_tl118232118587_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118230118582_)))
                                    (_hd118231118585_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118230118582_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd118231118585_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd118231118585_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl118232118587_))
                                            (let ((_e118233118590_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl118232118587_))))
                                              (let ((_tl118235118595_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e118233118590_)))
                                                    (_hd118234118593_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e118233118590_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl118235118595_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl118229118579_))
                                                        (let ((_e118236118598_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl118229118579_))))
                  (let ((_tl118238118603_
                         (let () (declare (not safe)) (##cdr _e118236118598_)))
                        (_hd118237118601_
                         (let ()
                           (declare (not safe))
                           (##car _e118236118598_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd118237118601_))
                        (let ((_e118239118606_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd118237118601_))))
                          (let ((_tl118241118611_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118239118606_)))
                                (_hd118240118609_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118239118606_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd118240118609_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd118240118609_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl118241118611_))
                                        (let ((_e118242118614_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl118241118611_))))
                                          (let ((_tl118244118619_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e118242118614_)))
                                                (_hd118243118617_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e118242118614_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl118244118619_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl118238118603_))
                                                    (let ((_e118245118622_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl118238118603_))))
                                                      (let ((_tl118247118627_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e118245118622_)))
                    (_hd118246118625_
                     (let () (declare (not safe)) (##car _e118245118622_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd118246118625_))
                    (let ((_e118248118630_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd118246118625_))))
                      (let ((_tl118250118635_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118248118630_)))
                            (_hd118249118633_
                             (let ()
                               (declare (not safe))
                               (##car _e118248118630_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd118249118633_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd118249118633_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl118250118635_))
                                    (let ((_e118251118638_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl118250118635_))))
                                      (let ((_tl118253118643_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e118251118638_)))
                                            (_hd118252118641_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e118251118638_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118253118643_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl118247118627_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl118205118515_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl118196118491_))
                                                        (___kont124476124477_
                                                         _hd118252118641_
                                                         _hd118243118617_
                                                         _hd118225118569_
                                                         _hd118216118545_
                                                         _hd118201118505_
                                                         _hd118192118481_
                                                         _hd118183118457_
                                                         _hd118174118433_
                                                         _hd118159118393_
                                                         _hd118144118353_
                                                         _hd118126118305_)
                                                        (___kont124478124479_))
                                                    (___kont124478124479_))
                                                (___kont124478124479_))
                                            (___kont124478124479_))))
                                    (___kont124478124479_))
                                (___kont124478124479_))
                            (___kont124478124479_))))
                    (___kont124478124479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont124478124479_))
                                                (___kont124478124479_))))
                                        (___kont124478124479_))
                                    (___kont124478124479_))
                                (___kont124478124479_))))
                        (___kont124478124479_))))
                (___kont124478124479_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont124478124479_))))
                                            (___kont124478124479_))
                                        (___kont124478124479_))
                                    (___kont124478124479_))))
                            (___kont124478124479_))))
                    (___kont124478124479_))
                (___kont124478124479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont124478124479_))
                                            (___kont124478124479_))
                                        (___kont124478124479_))))
                                (___kont124478124479_))))
                        (___kont124478124479_))
                    (___kont124478124479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont124478124479_))
                                                (___kont124478124479_))
                                            (___kont124478124479_))))
                                    (___kont124478124479_))))
                            (___kont124478124479_))
                        (___kont124478124479_))
                    (___kont124478124479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont124478124479_))))
                                            (___kont124478124479_))))
                                    (___kont124478124479_))
                                (___kont124478124479_))
                            (___kont124478124479_))))
                    (___kont124478124479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont124478124479_))
                                                (___kont124478124479_))
                                            (___kont124478124479_))
                                        (___kont124478124479_))
                                    (___kont124478124479_))
                                (___kont124478124479_))))
                        (___kont124478124479_))
                    (___kont124478124479_))
                (___kont124478124479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont124478124479_))))
                                        (___kont124478124479_))
                                    (___kont124478124479_))))
                            (___kont124478124479_))
                        (___kont124478124479_))
                    (___kont124478124479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont124478124479_))))
                                            (___kont124478124479_))
                                        (___kont124478124479_))))
                                (___kont124478124479_))
                            (___kont124478124479_))
                        (___kont124478124479_))))
                (___kont124478124479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont124478124479_))
                                            (___kont124478124479_))
                                        (___kont124478124479_))))
                                (___kont124478124479_))))
                        (___kont124478124479_))))
                (___kont124478124479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont124478124479_))
                                            (___kont124478124479_))
                                        (___kont124478124479_))))
                                (___kont124478124479_))))
                        (___kont124478124479_))
                    (___kont124478124479_))
                (___kont124478124479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont124478124479_))
                                            (___kont124478124479_))))
                                    (___kont124478124479_))))
                            (___kont124478124479_))))
                    (___kont124478124479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont124478124479_))
                                                (___kont124478124479_))
                                            (___kont124478124479_))))
                                    (___kont124478124479_))))
                            (___kont124478124479_))
                        (___kont124478124479_))))
                (___kont124478124479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont124478124479_))))
                                        (___kont124478124479_))))
                                (___kont124478124479_))
                            (___kont124478124479_))
                        (___kont124478124479_))))
                (___kont124478124479_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx117839_ _id117840_ _clauses117841_ _gensym?117842_)
        (let _lp117844_ ((_rest117846_ _clauses117841_)
                         (_ids117847_ '())
                         (_impls117848_ '())
                         (_clauses117849_ '()))
          (let* ((_rest117850117858_ _rest117846_)
                 (_else117852117866_
                  (lambda ()
                    (values (reverse _ids117847_)
                            (reverse _impls117848_)
                            (reverse _clauses117849_))))
                 (_K117854118071_
                  (lambda (_rest117869_ _clause117870_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause117870_))
                        (let ((__tmp125498
                               (let ()
                                 (declare (not safe))
                                 (cons _clause117870_ _clauses117849_))))
                          (declare (not safe))
                          (_lp117844_
                           _rest117869_
                           _ids117847_
                           _impls117848_
                           __tmp125498))
                        (let* ((_g117872117883_
                                (lambda (_g117873117880_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g117873117880_))))
                               (_g117871118068_
                                (lambda (_g117873117886_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g117873117886_))
                                      (let ((_e117876117888_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g117873117886_))))
                                        (let ((_hd117877117891_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117876117888_)))
                                              (_tl117878117893_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117876117888_))))
                                          ((lambda (_L117896_ _L117897_)
                                             (let* ((_id117914_
                                                     (let ((__tmp125501
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id117840_)))
                                                           (__tmp125500
                                                            (length _clauses117849_))
                                                           (__tmp125499
                                                            (if _gensym?117842_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp125501
                                                        '"__"
                                                        __tmp125500
                                                        __tmp125499)))
                                                    (_id117916_
                                                     (let ((__tmp125502
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx117839_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id117914_
                                                        __tmp125502)))
                                                    (_impl117918_
                                                     (let ((__tmp125503
                                                            (let ((__tmp125505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp125504
                           (let ()
                             (declare (not safe))
                             (cons _L117897_ _L117896_))))
                      (declare (not safe))
                      (cons __tmp125505 __tmp125504))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp125503 _stx117839_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause118065_
                                                     (let* ((___stx124858124859_
                                                             _L117897_)
                                                            (_g117922117950_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx124858124859_)))))
               (let ((___kont124860124861_
                      (lambda (_L118044_)
                        (let ((__tmp125506
                               (let ((__tmp125507
                                      (let ((__tmp125508
                                             (let ((__tmp125509
                                                    (let ((__tmp125515
                                                           (let ((__tmp125516
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id117916_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp125516)))
                  (__tmp125510
                   (let ((__tmp125511
                          (lambda (_g118054118057_ _g118055118059_)
                            (let ((__tmp125512
                                   (let ((__tmp125514
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp125513
                                          (let ()
                                            (declare (not safe))
                                            (cons _g118054118057_ '()))))
                                     (declare (not safe))
                                     (cons __tmp125514 __tmp125513))))
                              (declare (not safe))
                              (cons __tmp125512 _g118055118059_)))))
                     (declare (not safe))
                     (foldr1 __tmp125511 '() _L118044_))))
              (declare (not safe))
              (cons __tmp125515 __tmp125510))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp125509))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp125508
                                         _stx117839_))))
                                 (declare (not safe))
                                 (cons __tmp125507 '()))))
                          (declare (not safe))
                          (cons _L117897_ __tmp125506))))
                     (___kont124864124865_
                      (lambda (_L117995_ _L117996_)
                        (let ((__tmp125517
                               (let ((__tmp125518
                                      (let ((__tmp125519
                                             (let ((__tmp125520
                                                    (let ((__tmp125534
                                                           (let ((__tmp125535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp125535)))
                  (__tmp125521
                   (let ((__tmp125532
                          (let ((__tmp125533
                                 (let ()
                                   (declare (not safe))
                                   (cons _id117916_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp125533)))
                         (__tmp125522
                          (let ((__tmp125528
                                 (let ((__tmp125529
                                        (let ((__tmp125531
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp125530
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L117995_ '()))))
                                          (declare (not safe))
                                          (cons __tmp125531 __tmp125530))))
                                   (declare (not safe))
                                   (cons __tmp125529 '())))
                                (__tmp125523
                                 (let ((__tmp125524
                                        (lambda (_g118007118010_
                                                 _g118008118012_)
                                          (let ((__tmp125525
                                                 (let ((__tmp125527
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp125526
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g118007118010_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp125527
                                                         __tmp125526))))
                                            (declare (not safe))
                                            (cons __tmp125525
                                                  _g118008118012_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp125524 '() _L117996_))))
                            (declare (not safe))
                            (foldr1 cons __tmp125528 __tmp125523))))
                     (declare (not safe))
                     (cons __tmp125532 __tmp125522))))
              (declare (not safe))
              (cons __tmp125534 __tmp125521))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp125520))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp125519
                                         _stx117839_))))
                                 (declare (not safe))
                                 (cons __tmp125518 '()))))
                          (declare (not safe))
                          (cons _L117897_ __tmp125517))))
                     (___kont124868124869_
                      (lambda (_L117955_)
                        (let ((__tmp125536
                               (let ((__tmp125537
                                      (let ((__tmp125538
                                             (let ((__tmp125539
                                                    (let ((__tmp125547
                                                           (let ((__tmp125548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp125548)))
                  (__tmp125540
                   (let ((__tmp125545
                          (let ((__tmp125546
                                 (let ()
                                   (declare (not safe))
                                   (cons _id117916_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp125546)))
                         (__tmp125541
                          (let ((__tmp125542
                                 (let ((__tmp125544
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp125543
                                        (let ()
                                          (declare (not safe))
                                          (cons _L117955_ '()))))
                                   (declare (not safe))
                                   (cons __tmp125544 __tmp125543))))
                            (declare (not safe))
                            (cons __tmp125542 '()))))
                     (declare (not safe))
                     (cons __tmp125545 __tmp125541))))
              (declare (not safe))
              (cons __tmp125547 __tmp125540))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp125539))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp125538
                                         _stx117839_))))
                                 (declare (not safe))
                                 (cons __tmp125537 '()))))
                          (declare (not safe))
                          (cons _L117897_ __tmp125536)))))
                 (let* ((___match124883124884_
                         (lambda (___splice124866124867_
                                  _target117936117971_
                                  _tl117938117973_)
                           (letrec ((_loop117939117976_
                                     (lambda (_hd117937117979_
                                              _arg117943117981_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd117937117979_))
                                           (let ((_e117940117984_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd117937117979_))))
                                             (let ((_lp-tl117942117989_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e117940117984_)))
                                                   (_lp-hd117941117987_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e117940117984_))))
                                               (let ((__tmp125549
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd117941117987_
                                                              _arg117943117981_))))
                                                 (declare (not safe))
                                                 (_loop117939117976_
                                                  _lp-tl117942117989_
                                                  __tmp125549))))
                                           (let ((_arg117944117992_
                                                  (reverse _arg117943117981_)))
                                             (___kont124864124865_
                                              _tl117938117973_
                                              _arg117944117992_))))))
                             (let ()
                               (declare (not safe))
                               (_loop117939117976_
                                _target117936117971_
                                '())))))
                        (___match124877124878_
                         (lambda (___splice124862124863_
                                  _target117925118020_
                                  _tl117927118022_)
                           (letrec ((_loop117928118025_
                                     (lambda (_hd117926118028_
                                              _arg117932118030_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd117926118028_))
                                           (let ((_e117929118033_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd117926118028_))))
                                             (let ((_lp-tl117931118038_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e117929118033_)))
                                                   (_lp-hd117930118036_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e117929118033_))))
                                               (let ((__tmp125550
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd117930118036_
                                                              _arg117932118030_))))
                                                 (declare (not safe))
                                                 (_loop117928118025_
                                                  _lp-tl117931118038_
                                                  __tmp125550))))
                                           (let ((_arg117933118041_
                                                  (reverse _arg117932118030_)))
                                             (___kont124860124861_
                                              _arg117933118041_))))))
                             (let ()
                               (declare (not safe))
                               (_loop117928118025_
                                _target117925118020_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx124858124859_))
                       (let ((___splice124862124863_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx124858124859_
                                 '0))))
                         (let ((_tl117927118022_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice124862124863_ '1)))
                               (_target117925118020_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice124862124863_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl117927118022_))
                               (___match124877124878_
                                ___splice124862124863_
                                _target117925118020_
                                _tl117927118022_)
                               (___match124883124884_
                                ___splice124862124863_
                                _target117925118020_
                                _tl117927118022_))))
                       (___kont124868124869_ ___stx124858124859_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp125553
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id117916_
                                                              _ids117847_)))
                                                     (__tmp125552
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl117918_
                                                              _impls117848_)))
                                                     (__tmp125551
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause118065_
                                                              _clauses117849_))))
                                                 (declare (not safe))
                                                 (_lp117844_
                                                  _rest117869_
                                                  __tmp125553
                                                  __tmp125552
                                                  __tmp125551))))
                                           _tl117878117893_
                                           _hd117877117891_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g117872117883_ _g117873117886_))))))
                          (declare (not safe))
                          (_g117871118068_ _clause117870_))))))
            (if (let () (declare (not safe)) (##pair? _rest117850117858_))
                (let ((_hd117855118074_
                       (let ()
                         (declare (not safe))
                         (##car _rest117850117858_)))
                      (_tl117856118076_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest117850117858_))))
                  (let* ((_clause118079_ _hd117855118074_)
                         (_rest118081_ _tl117856118076_))
                    (declare (not safe))
                    (_K117854118071_ _rest118081_ _clause118079_)))
                (let () (declare (not safe)) (_else117852117866_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx118086_ _id118087_ _clauses118088_)
        (let ((_gensym?118090_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx118086_
           _id118087_
           _clauses118088_
           _gensym?118090_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g125555_
        (let ((_g125554_ (let () (declare (not safe)) (##length _g125555_))))
          (cond ((let () (declare (not safe)) (##fx= _g125554_ 3))
                 (apply (lambda (_stx118086_ _id118087_ _clauses118088_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx118086_
                             _id118087_
                             _clauses118088_)))
                        _g125555_))
                ((let () (declare (not safe)) (##fx= _g125554_ 4))
                 (apply (lambda (_stx118092_
                                 _id118093_
                                 _clauses118094_
                                 _gensym?118095_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx118092_
                             _id118093_
                             _clauses118094_
                             _gensym?118095_)))
                        _g125555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g125555_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx117116_)
        (letrec ((_case-lambda-clause-def117118_
                  (lambda (_id117835_ _impl117836_)
                    (let ((__tmp125556
                           (let ((__tmp125557
                                  (let ((__tmp125560
                                         (let ()
                                           (declare (not safe))
                                           (cons _id117835_ '())))
                                        (__tmp125558
                                         (let ((__tmp125559
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl117836_))))
                                           (declare (not safe))
                                           (cons __tmp125559 '()))))
                                    (declare (not safe))
                                    (cons __tmp125560 __tmp125558))))
                             (declare (not safe))
                             (cons '%#define-values __tmp125557))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp125556 _stx117116_))))
                 (_opt-lambda-dispatch-name117119_
                  (lambda (_id117831_)
                    (if (uninterned-symbol? _id117831_)
                        (let ((_str117833_ (symbol->string _id117831_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str117833_))
                              '"%"
                              _id117831_))
                        _id117831_)))
                 (_kw-lambda-dispatch-name117120_
                  (lambda (_id117826_ _name117827_)
                    (if (uninterned-symbol? _id117826_)
                        (let ((_str117829_ (symbol->string _id117826_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str117829_))
                              _name117827_
                              _id117826_))
                        _id117826_))))
          (let* ((___stx124906124907_ _stx117116_)
                 (_g117125117184_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx124906124907_)))))
            (let ((___kont124908124909_
                   (lambda (_L117735_ _L117736_)
                     (let* ((___stx124886124887_ _L117735_)
                            (_g117753117767_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx124886124887_)))))
                       (let ((___kont124888124889_
                              (lambda (_L117811_) _stx117116_))
                             (___kont124890124891_
                              (lambda (_L117780_)
                                (let ((_g125561_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx117116_
                                          _L117736_
                                          _L117780_))))
                                  (begin
                                    (let ((_g125562_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g125561_)
                                                 (##vector-length _g125561_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g125562_ 3)))
                                          (error "Context expects 3 values"
                                                 _g125562_)))
                                    (let ((_ids117790_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g125561_ 0)))
                                          (_impls117791_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g125561_ 1)))
                                          (_clauses117792_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g125561_ 2))))
                                      (let* ((_g125563_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids117790_))
                                             (_defs117795_
                                              (map _case-lambda-clause-def117118_
                                                   _ids117790_
                                                   _impls117791_)))
                                        (let ((__tmp125565
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L117736_)))
                                              (__tmp125564
                                               (map gxc#identifier-symbol
                                                    _ids117790_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp125565
                                           '" => "
                                           __tmp125564))
                                        (let ((__tmp125566
                                               (let ((__tmp125567
                                                      (let ((__tmp125568
                                                             (let ((__tmp125569
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp125570
                                   (let ((__tmp125571
                                          (let ((__tmp125576
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L117736_ '())))
                                                (__tmp125572
                                                 (let ((__tmp125573
                                                        (let ((__tmp125575
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses117792_)))
                      (__tmp125574
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp125575 __tmp125574))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp125573 '()))))
                                            (declare (not safe))
                                            (cons __tmp125576 __tmp125572))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp125571))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp125570
                               _stx117116_))))
                       (declare (not safe))
                       (cons __tmp125569 '()))))
                (declare (not safe))
                (foldr1 cons __tmp125568 _defs117795_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp125567))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp125566
                                           _stx117116_)))))))))
                         (let ((___match124897124898_
                                (lambda (_e117756117803_
                                         _hd117757117806_
                                         _tl117758117808_)
                                  (let ((_L117811_ _tl117758117808_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L117811_))
                                        (___kont124888124889_ _L117811_)
                                        (___kont124890124891_
                                         _tl117758117808_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx124886124887_))
                               (let ((_e117756117803_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx124886124887_))))
                                 (let ((_tl117758117808_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e117756117803_)))
                                       (_hd117757117806_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e117756117803_))))
                                   (___match124897124898_
                                    _e117756117803_
                                    _hd117757117806_
                                    _tl117758117808_)))
                               (let ()
                                 (declare (not safe))
                                 (_g117753117767_))))))))
                  (___kont124910124911_
                   (lambda (_L117553_ _L117554_)
                     (let* ((_g117570117600_
                             (lambda (_g117571117597_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g117571117597_))))
                            (_g117569117695_
                             (lambda (_g117571117603_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g117571117603_))
                                   (let ((_e117575117605_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g117571117603_))))
                                     (let ((_hd117576117608_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e117575117605_)))
                                           (_tl117577117610_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e117575117605_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl117577117610_))
                                           (let ((_e117578117613_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl117577117610_))))
                                             (let ((_hd117579117616_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e117578117613_)))
                                                   (_tl117580117618_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e117578117613_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd117579117616_))
                                                   (let ((_e117581117621_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd117579117616_))))
                                                     (let ((_hd117582117624_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e117581117621_)))
                                                           (_tl117583117626_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e117581117621_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd117582117624_))
                                                           (let ((_e117584117629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd117582117624_))))
                     (let ((_hd117585117632_
                            (let ()
                              (declare (not safe))
                              (##car _e117584117629_)))
                           (_tl117586117634_
                            (let ()
                              (declare (not safe))
                              (##cdr _e117584117629_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd117585117632_))
                           (let ((_e117587117637_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd117585117632_))))
                             (let ((_hd117588117640_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e117587117637_)))
                                   (_tl117589117642_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e117587117637_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl117589117642_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl117586117634_))
                                       (let ((_e117590117645_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl117586117634_))))
                                         (let ((_hd117591117648_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e117590117645_)))
                                               (_tl117592117650_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e117590117645_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl117592117650_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl117583117626_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl117580117618_))
                                                       (let ((_e117593117653_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl117580117618_))))
                 (let ((_hd117594117656_
                        (let () (declare (not safe)) (##car _e117593117653_)))
                       (_tl117595117658_
                        (let () (declare (not safe)) (##cdr _e117593117653_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl117595117658_))
                       ((lambda (_L117661_ _L117662_ _L117663_)
                          (let* ((_lambda-id117687_
                                  (let ((__tmp125579
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L117554_)))
                                        (__tmp125577
                                         (let ((__tmp125578
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L117663_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name117119_
                                            __tmp125578))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp125579
                                     '"__"
                                     __tmp125577)))
                                 (_lambda-id117689_
                                  (let ((__tmp125580
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx117116_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id117687_
                                     __tmp125580)))
                                 (_g125581_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id117689_)))
                                 (_new-case-lambda-expr117692_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L117661_
                                     _L117663_
                                     _lambda-id117689_))))
                            (let ((__tmp125583
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L117554_)))
                                  (__tmp125582
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id117689_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp125583
                               '" => "
                               __tmp125582))
                            (let ((__tmp125584
                                   (let ((__tmp125585
                                          (let ((__tmp125593
                                                 (let ((__tmp125594
                                                        (let ((__tmp125595
                                                               (let ((__tmp125598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id117689_ '())))
                             (__tmp125596
                              (let ((__tmp125597
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L117662_))))
                                (declare (not safe))
                                (cons __tmp125597 '()))))
                         (declare (not safe))
                         (cons __tmp125598 __tmp125596))))
                  (declare (not safe))
                  (cons '%#define-values __tmp125595))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp125594
                                                    _stx117116_)))
                                                (__tmp125586
                                                 (let ((__tmp125587
                                                        (let ((__tmp125588
                                                               (let ((__tmp125589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp125590
                                     (let ((__tmp125592
                                            (let ()
                                              (declare (not safe))
                                              (cons _L117554_ '())))
                                           (__tmp125591
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr117692_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp125592 __tmp125591))))
                                (declare (not safe))
                                (cons '%#define-values __tmp125590))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp125589 _stx117116_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp125588))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp125587 '()))))
                                            (declare (not safe))
                                            (cons __tmp125593 __tmp125586))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp125585))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp125584
                               _stx117116_))))
                        _hd117594117656_
                        _hd117591117648_
                        _hd117588117640_)
                       (let ()
                         (declare (not safe))
                         (_g117570117600_ _g117571117603_)))))
               (let () (declare (not safe)) (_g117570117600_ _g117571117603_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g117570117600_
                                                      _g117571117603_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g117570117600_
                                                  _g117571117603_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g117570117600_ _g117571117603_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g117570117600_ _g117571117603_)))))
                           (let ()
                             (declare (not safe))
                             (_g117570117600_ _g117571117603_)))))
                   (let ()
                     (declare (not safe))
                     (_g117570117600_ _g117571117603_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g117570117600_
                                                      _g117571117603_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g117570117600_
                                              _g117571117603_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g117570117600_ _g117571117603_))))))
                       (declare (not safe))
                       (_g117569117695_ _L117553_))))
                  (___kont124912124913_
                   (lambda (_L117267_ _L117268_)
                     (let* ((_g117284117337_
                             (lambda (_g117285117334_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g117285117334_))))
                            (_g117283117513_
                             (lambda (_g117285117340_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g117285117340_))
                                   (let ((_e117291117342_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g117285117340_))))
                                     (let ((_hd117292117345_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e117291117342_)))
                                           (_tl117293117347_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e117291117342_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl117293117347_))
                                           (let ((_e117294117350_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl117293117347_))))
                                             (let ((_hd117295117353_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e117294117350_)))
                                                   (_tl117296117355_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e117294117350_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd117295117353_))
                                                   (let ((_e117297117358_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd117295117353_))))
                                                     (let ((_hd117298117361_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e117297117358_)))
                                                           (_tl117299117363_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e117297117358_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd117298117361_))
                                                           (let ((_e117300117366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd117298117361_))))
                     (let ((_hd117301117369_
                            (let ()
                              (declare (not safe))
                              (##car _e117300117366_)))
                           (_tl117302117371_
                            (let ()
                              (declare (not safe))
                              (##cdr _e117300117366_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd117301117369_))
                           (let ((_e117303117374_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd117301117369_))))
                             (let ((_hd117304117377_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e117303117374_)))
                                   (_tl117305117379_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e117303117374_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl117305117379_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl117302117371_))
                                       (let ((_e117306117382_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl117302117371_))))
                                         (let ((_hd117307117385_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e117306117382_)))
                                               (_tl117308117387_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e117306117382_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd117307117385_))
                                               (let ((_e117309117390_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd117307117385_))))
                                                 (let ((_hd117310117393_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e117309117390_)))
                                                       (_tl117311117395_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e117309117390_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl117311117395_))
                                                       (let ((_e117312117398_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl117311117395_))))
                 (let ((_hd117313117401_
                        (let () (declare (not safe)) (##car _e117312117398_)))
                       (_tl117314117403_
                        (let () (declare (not safe)) (##cdr _e117312117398_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd117313117401_))
                       (let ((_e117315117406_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd117313117401_))))
                         (let ((_hd117316117409_
                                (let ()
                                  (declare (not safe))
                                  (##car _e117315117406_)))
                               (_tl117317117411_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e117315117406_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd117316117409_))
                               (let ((_e117318117414_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd117316117409_))))
                                 (let ((_hd117319117417_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e117318117414_)))
                                       (_tl117320117419_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e117318117414_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd117319117417_))
                                       (let ((_e117321117422_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd117319117417_))))
                                         (let ((_hd117322117425_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e117321117422_)))
                                               (_tl117323117427_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e117321117422_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl117323117427_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl117320117419_))
                                                   (let ((_e117324117430_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl117320117419_))))
                                                     (let ((_hd117325117433_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e117324117430_)))
                                                           (_tl117326117435_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e117324117430_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl117326117435_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl117317117411_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl117314117403_))
                           (let ((_e117327117438_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl117314117403_))))
                             (let ((_hd117328117441_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e117327117438_)))
                                   (_tl117329117443_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e117327117438_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl117329117443_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl117308117387_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl117299117363_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl117296117355_))
                                               (let ((_e117330117446_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl117296117355_))))
                                                 (let ((_hd117331117449_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e117330117446_)))
                                                       (_tl117332117451_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e117330117446_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl117332117451_))
                                                       ((lambda (_L117454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L117455_
                         _L117456_
                         _L117457_
                         _L117458_)
                  (let* ((_get-kws-id117498_
                          (let ((__tmp125601
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L117268_)))
                                (__tmp125599
                                 (let ((__tmp125600
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L117458_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name117120_
                                    __tmp125600
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp125601 '"__" __tmp125599)))
                         (_get-kws-id117500_
                          (let ((__tmp125602
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx117116_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id117498_
                             __tmp125602)))
                         (_main-id117502_
                          (let ((__tmp125605
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L117268_)))
                                (__tmp125603
                                 (let ((__tmp125604
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L117457_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name117120_
                                    __tmp125604
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp125605 '"__" __tmp125603)))
                         (_main-id117504_
                          (let ((__tmp125606
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx117116_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id117502_
                             __tmp125606)))
                         (_g125607_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id117500_)))
                         (_g125608_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id117504_)))
                         (_new-kw-dispatch117508_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L117454_
                             _L117458_
                             _get-kws-id117500_)))
                         (_new-get-kws117510_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L117455_
                             _L117457_
                             _main-id117504_))))
                    (let ((__tmp125611
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L117268_)))
                          (__tmp125610
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id117500_)))
                          (__tmp125609
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id117504_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp125611
                       '" => "
                       __tmp125610
                       '" => "
                       __tmp125609))
                    (let ((__tmp125612
                           (let ((__tmp125613
                                  (let ((__tmp125626
                                         (let ((__tmp125627
                                                (let ((__tmp125628
                                                       (let ((__tmp125629
                                                              (let ((__tmp125631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id117504_ '())))
                            (__tmp125630
                             (let ()
                               (declare (not safe))
                               (cons _L117456_ '()))))
                        (declare (not safe))
                        (cons __tmp125631 __tmp125630))))
                 (declare (not safe))
                 (cons '%#define-values __tmp125629))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp125628
                                                   _stx117116_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp125627)))
                                        (__tmp125614
                                         (let ((__tmp125621
                                                (let ((__tmp125622
                                                       (let ((__tmp125623
                                                              (let ((__tmp125625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id117500_ '())))
                            (__tmp125624
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws117510_ '()))))
                        (declare (not safe))
                        (cons __tmp125625 __tmp125624))))
                 (declare (not safe))
                 (cons '%#define-values __tmp125623))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp125622
                                                   _stx117116_)))
                                               (__tmp125615
                                                (let ((__tmp125616
                                                       (let ((__tmp125617
                                                              (let ((__tmp125618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp125620
                                    (let ()
                                      (declare (not safe))
                                      (cons _L117268_ '())))
                                   (__tmp125619
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch117508_ '()))))
                               (declare (not safe))
                               (cons __tmp125620 __tmp125619))))
                        (declare (not safe))
                        (cons '%#define-values __tmp125618))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp125617 _stx117116_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp125616 '()))))
                                           (declare (not safe))
                                           (cons __tmp125621 __tmp125615))))
                                    (declare (not safe))
                                    (cons __tmp125626 __tmp125614))))
                             (declare (not safe))
                             (cons '%#begin __tmp125613))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp125612 _stx117116_))))
                _hd117331117449_
                _hd117328117441_
                _hd117325117433_
                _hd117322117425_
                _hd117304117377_)
               (let ()
                 (declare (not safe))
                 (_g117284117337_ _g117285117340_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g117284117337_
                                                  _g117285117340_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g117284117337_
                                              _g117285117340_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g117284117337_ _g117285117340_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g117284117337_ _g117285117340_)))))
                           (let ()
                             (declare (not safe))
                             (_g117284117337_ _g117285117340_)))
                       (let ()
                         (declare (not safe))
                         (_g117284117337_ _g117285117340_)))
                   (let ()
                     (declare (not safe))
                     (_g117284117337_ _g117285117340_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g117284117337_
                                                      _g117285117340_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g117284117337_
                                                  _g117285117340_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g117284117337_ _g117285117340_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g117284117337_ _g117285117340_)))))
                       (let ()
                         (declare (not safe))
                         (_g117284117337_ _g117285117340_)))))
               (let ()
                 (declare (not safe))
                 (_g117284117337_ _g117285117340_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g117284117337_
                                                  _g117285117340_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g117284117337_ _g117285117340_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g117284117337_ _g117285117340_)))))
                           (let ()
                             (declare (not safe))
                             (_g117284117337_ _g117285117340_)))))
                   (let ()
                     (declare (not safe))
                     (_g117284117337_ _g117285117340_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g117284117337_
                                                      _g117285117340_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g117284117337_
                                              _g117285117340_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g117284117337_ _g117285117340_))))))
                       (declare (not safe))
                       (_g117283117513_ _L117267_))))
                  (___kont124914124915_
                   (lambda (_L117213_ _L117214_)
                     (let ((__tmp125632
                            (let ((__tmp125633
                                   (let ((__tmp125634
                                          (let ((__tmp125635
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L117213_))))
                                            (declare (not safe))
                                            (cons __tmp125635 '()))))
                                     (declare (not safe))
                                     (cons _L117214_ __tmp125634))))
                              (declare (not safe))
                              (cons '%#define-values __tmp125633))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp125632 _stx117116_)))))
              (let* ((___match124999125000_
                      (lambda (_e117157117235_
                               _hd117158117238_
                               _tl117159117240_
                               _e117160117243_
                               _hd117161117246_
                               _tl117162117248_
                               _e117163117251_
                               _hd117164117254_
                               _tl117165117256_
                               _e117166117259_
                               _hd117167117262_
                               _tl117168117264_)
                        (let ((_L117267_ _hd117167117262_)
                              (_L117268_ _hd117164117254_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L117268_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L117267_)))
                              (___kont124912124913_ _L117267_ _L117268_)
                              (___kont124914124915_
                               _hd117167117262_
                               _hd117161117246_)))))
                     (___match124971124972_
                      (lambda (_e117143117521_
                               _hd117144117524_
                               _tl117145117526_
                               _e117146117529_
                               _hd117147117532_
                               _tl117148117534_
                               _e117149117537_
                               _hd117150117540_
                               _tl117151117542_
                               _e117152117545_
                               _hd117153117548_
                               _tl117154117550_)
                        (let ((_L117553_ _hd117153117548_)
                              (_L117554_ _hd117150117540_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L117554_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L117553_)))
                              (___kont124910124911_ _L117553_ _L117554_)
                              (___match124999125000_
                               _e117143117521_
                               _hd117144117524_
                               _tl117145117526_
                               _e117146117529_
                               _hd117147117532_
                               _tl117148117534_
                               _e117149117537_
                               _hd117150117540_
                               _tl117151117542_
                               _e117152117545_
                               _hd117153117548_
                               _tl117154117550_)))))
                     (___match124943124944_
                      (lambda (_e117129117703_
                               _hd117130117706_
                               _tl117131117708_
                               _e117132117711_
                               _hd117133117714_
                               _tl117134117716_
                               _e117135117719_
                               _hd117136117722_
                               _tl117137117724_
                               _e117138117727_
                               _hd117139117730_
                               _tl117140117732_)
                        (let ((_L117735_ _hd117139117730_)
                              (_L117736_ _hd117136117722_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L117736_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L117735_)))
                              (___kont124908124909_ _L117735_ _L117736_)
                              (___match124971124972_
                               _e117129117703_
                               _hd117130117706_
                               _tl117131117708_
                               _e117132117711_
                               _hd117133117714_
                               _tl117134117716_
                               _e117135117719_
                               _hd117136117722_
                               _tl117137117724_
                               _e117138117727_
                               _hd117139117730_
                               _tl117140117732_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx124906124907_))
                    (let ((_e117129117703_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx124906124907_))))
                      (let ((_tl117131117708_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117129117703_)))
                            (_hd117130117706_
                             (let ()
                               (declare (not safe))
                               (##car _e117129117703_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl117131117708_))
                            (let ((_e117132117711_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl117131117708_))))
                              (let ((_tl117134117716_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e117132117711_)))
                                    (_hd117133117714_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e117132117711_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd117133117714_))
                                    (let ((_e117135117719_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd117133117714_))))
                                      (let ((_tl117137117724_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e117135117719_)))
                                            (_hd117136117722_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e117135117719_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl117137117724_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl117134117716_))
                                                (let ((_e117138117727_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl117134117716_))))
                                                  (let ((_tl117140117732_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e117138117727_)))
                                                        (_hd117139117730_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e117138117727_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl117140117732_))
                                                        (___match124943124944_
                                                         _e117129117703_
                                                         _hd117130117706_
                                                         _tl117131117708_
                                                         _e117132117711_
                                                         _hd117133117714_
                                                         _tl117134117716_
                                                         _e117135117719_
                                                         _hd117136117722_
                                                         _tl117137117724_
                                                         _e117138117727_
                                                         _hd117139117730_
                                                         _tl117140117732_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g117125117184_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117125117184_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl117134117716_))
                                                (let ((_e117177117205_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl117134117716_))))
                                                  (let ((_tl117179117210_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e117177117205_)))
                                                        (_hd117178117208_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e117177117205_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl117179117210_))
                                                        (___kont124914124915_
                                                         _hd117178117208_
                                                         _hd117133117714_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g117125117184_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117125117184_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl117134117716_))
                                        (let ((_e117177117205_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl117134117716_))))
                                          (let ((_tl117179117210_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e117177117205_)))
                                                (_hd117178117208_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e117177117205_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117179117210_))
                                                (___kont124914124915_
                                                 _hd117178117208_
                                                 _hd117133117714_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117125117184_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g117125117184_))))))
                            (let () (declare (not safe)) (_g117125117184_)))))
                    (let () (declare (not safe)) (_g117125117184_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx116048_)
        (letrec* ((_bind-e__123302123303_
                   (lambda (_id117100_ _expr117101_ _compile?117102_)
                     (let ((__tmp125638
                            (let ()
                              (declare (not safe))
                              (cons _id117100_ '())))
                           (__tmp125636
                            (let ((__tmp125637
                                   (if _compile?117102_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr117101_))
                                       _expr117101_)))
                              (declare (not safe))
                              (cons __tmp125637 '()))))
                       (declare (not safe))
                       (cons __tmp125638 __tmp125636))))
                  (_bind-e__0__123304123305_
                   (lambda (_id117107_ _expr117108_)
                     (let ((_compile?117110_ '#t))
                       (declare (not safe))
                       (_bind-e__123302123303_
                        _id117107_
                        _expr117108_
                        _compile?117110_))))
                  (_bind-e116050_
                   (lambda _g125640_
                     (let ((_g125639_
                            (let ()
                              (declare (not safe))
                              (##length _g125640_))))
                       (cond ((let () (declare (not safe)) (##fx= _g125639_ 2))
                              (apply (lambda (_id117107_ _expr117108_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__123304123305_
                                          _id117107_
                                          _expr117108_)))
                                     _g125640_))
                             ((let () (declare (not safe)) (##fx= _g125639_ 3))
                              (apply (lambda (_id117112_
                                              _expr117113_
                                              _compile?117114_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__123302123303_
                                          _id117112_
                                          _expr117113_
                                          _compile?117114_)))
                                     _g125640_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g125640_))))))
                  (_compile-bindings116051_
                   (lambda (_bindings116684_)
                     (let _lp116686_ ((_rest116688_ _bindings116684_)
                                      (_lift1116689_ '())
                                      (_lift2116690_ '())
                                      (_bind116691_ '()))
                       (let* ((_rest116692116700_ _rest116688_)
                              (_else116694116708_
                               (lambda ()
                                 (values (reverse _lift1116689_)
                                         (reverse _lift2116690_)
                                         (reverse _bind116691_))))
                              (_K116696117087_
                               (lambda (_rest116711_ _hd116712_)
                                 (let* ((___stx125042125043_ _hd116712_)
                                        (_g116716116752_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx125042125043_)))))
                                   (let ((___kont125044125045_
                                          (lambda (_L116994_ _L116995_)
                                            (let* ((___stx125022125023_
                                                    _L116994_)
                                                   (_g117010117024_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx125022125023_)))))
                                              (let ((___kont125024125025_
                                                     (lambda (_L117072_)
                                                       (let ((__tmp125641
                                                              (let ((__tmp125642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__123302123303_
                                _L116995_
                                _L116994_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp125642 _bind116691_))))
                 (declare (not safe))
                 (_lp116686_
                  _rest116711_
                  _lift1116689_
                  _lift2116690_
                  __tmp125641))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont125026125027_
                                                     (lambda (_L117037_)
                                                       (let ((_g125643_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx116048_
                         _L116995_
                         _L117037_
                         '#t))))
                 (begin
                   (let ((_g125644_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g125643_)
                                (##vector-length _g125643_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g125644_ 3)))
                         (error "Context expects 3 values" _g125644_)))
                   (let ((_ids117047_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g125643_ 0)))
                         (_impls117048_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g125643_ 1)))
                         (_clauses117049_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g125643_ 2))))
                     (let* ((_g125645_
                             (for-each gx#core-bind-runtime! _ids117047_))
                            (_xbind117052_
                             (map _bind-e116050_ _ids117047_ _impls117048_))
                            (_expr*117054_
                             (let ((__tmp125647
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses117049_)))
                                   (__tmp125646
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp125647
                                __tmp125646)))
                            (_bind*117056_
                             (let ()
                               (declare (not safe))
                               (_bind-e__123302123303_
                                _L116995_
                                _expr*117054_
                                '#f))))
                       (let ((__tmp125649
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L116995_)))
                             (__tmp125648
                              (map gxc#identifier-symbol _ids117047_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp125649
                          '" => "
                          __tmp125648))
                       (let ((__tmp125651
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2116690_ _xbind117052_)))
                             (__tmp125650
                              (let ()
                                (declare (not safe))
                                (cons _bind*117056_ _bind116691_))))
                         (declare (not safe))
                         (_lp116686_
                          _rest116711_
                          _lift1116689_
                          __tmp125651
                          __tmp125650)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match125033125034_
                                                       (lambda (_e117013117064_
                                                                _hd117014117067_
                                                                _tl117015117069_)
                                                         (let ((_L117072_
                                                                _tl117015117069_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L117072_))
                       (___kont125024125025_ _L117072_)
                       (___kont125026125027_ _tl117015117069_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx125022125023_))
                                                      (let ((_e117013117064_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx125022125023_))))
                (let ((_tl117015117069_
                       (let () (declare (not safe)) (##cdr _e117013117064_)))
                      (_hd117014117067_
                       (let () (declare (not safe)) (##car _e117013117064_))))
                  (___match125033125034_
                   _e117013117064_
                   _hd117014117067_
                   _tl117015117069_)))
              (let () (declare (not safe)) (_g117010117024_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont125046125047_
                                          (lambda (_L116822_ _L116823_)
                                            (let* ((_g116837116867_
                                                    (lambda (_g116838116864_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g116838116864_))))
                                                   (_g116836116962_
                                                    (lambda (_g116838116870_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g116838116870_))
                                                          (let ((_e116842116872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g116838116870_))))
                    (let ((_hd116843116875_
                           (let ()
                             (declare (not safe))
                             (##car _e116842116872_)))
                          (_tl116844116877_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116842116872_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl116844116877_))
                          (let ((_e116845116880_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl116844116877_))))
                            (let ((_hd116846116883_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e116845116880_)))
                                  (_tl116847116885_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e116845116880_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd116846116883_))
                                  (let ((_e116848116888_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd116846116883_))))
                                    (let ((_hd116849116891_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116848116888_)))
                                          (_tl116850116893_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116848116888_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd116849116891_))
                                          (let ((_e116851116896_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd116849116891_))))
                                            (let ((_hd116852116899_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e116851116896_)))
                                                  (_tl116853116901_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e116851116896_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd116852116899_))
                                                  (let ((_e116854116904_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd116852116899_))))
                                                    (let ((_hd116855116907_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116854116904_)))
                                                          (_tl116856116909_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116854116904_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl116856116909_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl116853116901_))
                      (let ((_e116857116912_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl116853116901_))))
                        (let ((_hd116858116915_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116857116912_)))
                              (_tl116859116917_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116857116912_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl116859116917_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl116850116893_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116847116885_))
                                      (let ((_e116860116920_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116847116885_))))
                                        (let ((_hd116861116923_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116860116920_)))
                                              (_tl116862116925_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116860116920_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116862116925_))
                                              ((lambda (_L116928_
                                                        _L116929_
                                                        _L116930_)
                                                 (let* ((_lambda-id116954_
                                                         (let ((__tmp125653
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L116823_)))
                       (__tmp125652 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp125653 __tmp125652)))
                (_lambda-id116956_
                 (let ((__tmp125654
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx116048_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id116954_ __tmp125654)))
                (_g125655_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id116956_)))
                (_new-case-lambda-expr116959_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L116928_
                    _L116930_
                    _lambda-id116956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp125657
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L116823_)))
                                                         (__tmp125656
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id116956_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp125657
                                                      '" => "
                                                      __tmp125656))
                                                   (let ((__tmp125660
                                                          (let ((__tmp125661
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__123302123303_
                            _L116823_
                            _new-case-lambda-expr116959_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp125661 _rest116711_)))
                 (__tmp125658
                  (let ((__tmp125659
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__123304123305_
                            _lambda-id116956_
                            _L116929_))))
                    (declare (not safe))
                    (cons __tmp125659 _lift1116689_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp116686_
                                                      __tmp125660
                                                      __tmp125658
                                                      _lift2116690_
                                                      _bind116691_))))
                                               _hd116861116923_
                                               _hd116858116915_
                                               _hd116855116907_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116837116867_
                                                 _g116838116870_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116837116867_ _g116838116870_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g116837116867_ _g116838116870_)))
                              (let ()
                                (declare (not safe))
                                (_g116837116867_ _g116838116870_)))))
                      (let ()
                        (declare (not safe))
                        (_g116837116867_ _g116838116870_)))
                  (let ()
                    (declare (not safe))
                    (_g116837116867_ _g116838116870_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g116837116867_
                                                     _g116838116870_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g116837116867_
                                             _g116838116870_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g116837116867_ _g116838116870_)))))
                          (let ()
                            (declare (not safe))
                            (_g116837116867_ _g116838116870_)))))
                  (let ()
                    (declare (not safe))
                    (_g116837116867_ _g116838116870_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g116836116962_ _L116822_))))
                                         (___kont125048125049_
                                          (lambda (_L116773_ _L116774_)
                                            (let ((__tmp125662
                                                   (let ((__tmp125663
                                                          (let ((__tmp125664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp125665
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L116773_))))
                           (declare (not safe))
                           (cons __tmp125665 '()))))
                    (declare (not safe))
                    (cons _L116774_ __tmp125664))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp125663
                                                           _bind116691_))))
                                              (declare (not safe))
                                              (_lp116686_
                                               _rest116711_
                                               _lift1116689_
                                               _lift2116690_
                                               __tmp125662)))))
                                     (let* ((___match125093125094_
                                             (lambda (_e116731116798_
                                                      _hd116732116801_
                                                      _tl116733116803_
                                                      _e116734116806_
                                                      _hd116735116809_
                                                      _tl116736116811_
                                                      _e116737116814_
                                                      _hd116738116817_
                                                      _tl116739116819_)
                                               (let ((_L116822_
                                                      _hd116738116817_)
                                                     (_L116823_
                                                      _hd116735116809_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L116823_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L116822_)))
                                                     (___kont125046125047_
                                                      _L116822_
                                                      _L116823_)
                                                     (___kont125048125049_
                                                      _hd116738116817_
                                                      _hd116732116801_)))))
                                            (___match125071125072_
                                             (lambda (_e116720116970_
                                                      _hd116721116973_
                                                      _tl116722116975_
                                                      _e116723116978_
                                                      _hd116724116981_
                                                      _tl116725116983_
                                                      _e116726116986_
                                                      _hd116727116989_
                                                      _tl116728116991_)
                                               (let ((_L116994_
                                                      _hd116727116989_)
                                                     (_L116995_
                                                      _hd116724116981_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L116995_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L116994_)))
                                                     (___kont125044125045_
                                                      _L116994_
                                                      _L116995_)
                                                     (___match125093125094_
                                                      _e116720116970_
                                                      _hd116721116973_
                                                      _tl116722116975_
                                                      _e116723116978_
                                                      _hd116724116981_
                                                      _tl116725116983_
                                                      _e116726116986_
                                                      _hd116727116989_
                                                      _tl116728116991_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx125042125043_))
                                           (let ((_e116720116970_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx125042125043_))))
                                             (let ((_tl116722116975_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e116720116970_)))
                                                   (_hd116721116973_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e116720116970_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd116721116973_))
                                                   (let ((_e116723116978_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd116721116973_))))
                                                     (let ((_tl116725116983_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e116723116978_)))
                                                           (_hd116724116981_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e116723116978_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl116725116983_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl116722116975_))
                       (let ((_e116726116986_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl116722116975_))))
                         (let ((_tl116728116991_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e116726116986_)))
                               (_hd116727116989_
                                (let ()
                                  (declare (not safe))
                                  (##car _e116726116986_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl116728116991_))
                               (___match125071125072_
                                _e116720116970_
                                _hd116721116973_
                                _tl116722116975_
                                _e116723116978_
                                _hd116724116981_
                                _tl116725116983_
                                _e116726116986_
                                _hd116727116989_
                                _tl116728116991_)
                               (let ()
                                 (declare (not safe))
                                 (_g116716116752_)))))
                       (let () (declare (not safe)) (_g116716116752_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl116722116975_))
                       (let ((_e116745116765_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl116722116975_))))
                         (let ((_tl116747116770_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e116745116765_)))
                               (_hd116746116768_
                                (let ()
                                  (declare (not safe))
                                  (##car _e116745116765_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl116747116770_))
                               (___kont125048125049_
                                _hd116746116768_
                                _hd116721116973_)
                               (let ()
                                 (declare (not safe))
                                 (_g116716116752_)))))
                       (let () (declare (not safe)) (_g116716116752_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl116722116975_))
                                                       (let ((_e116745116765_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl116722116975_))))
                 (let ((_tl116747116770_
                        (let () (declare (not safe)) (##cdr _e116745116765_)))
                       (_hd116746116768_
                        (let () (declare (not safe)) (##car _e116745116765_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl116747116770_))
                       (___kont125048125049_ _hd116746116768_ _hd116721116973_)
                       (let () (declare (not safe)) (_g116716116752_)))))
               (let () (declare (not safe)) (_g116716116752_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g116716116752_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest116692116700_))
                             (let ((_hd116697117090_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest116692116700_)))
                                   (_tl116698117092_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest116692116700_))))
                               (let* ((_hd117095_ _hd116697117090_)
                                      (_rest117097_ _tl116698117092_))
                                 (declare (not safe))
                                 (_K116696117087_ _rest117097_ _hd117095_)))
                             (let ()
                               (declare (not safe))
                               (_else116694116708_)))))))
                  (_lift-kw-lambda?116052_
                   (lambda (_bind116608_)
                     (let* ((___stx125110125111_ _bind116608_)
                            (_g116611116628_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx125110125111_)))))
                       (let ((___kont125112125113_
                              (lambda (_L116664_ _L116665_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L116665_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L116664_))
                                    '#f)))
                             (___kont125114125115_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx125110125111_))
                             (let ((_e116615116640_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx125110125111_))))
                               (let ((_tl116617116645_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e116615116640_)))
                                     (_hd116616116643_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e116615116640_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd116616116643_))
                                     (let ((_e116618116648_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd116616116643_))))
                                       (let ((_tl116620116653_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e116618116648_)))
                                             (_hd116619116651_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e116618116648_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl116620116653_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl116617116645_))
                                                 (let ((_e116621116656_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl116617116645_))))
                                                   (let ((_tl116623116661_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e116621116656_)))
                                                         (_hd116622116659_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e116621116656_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl116623116661_))
                                                         (___kont125112125113_
                                                          _hd116622116659_
                                                          _hd116619116651_)
                                                         (___kont125114125115_))))
                                                 (___kont125114125115_))
                                             (___kont125114125115_))))
                                     (___kont125114125115_))))
                             (___kont125114125115_))))))
                  (_lift-kw-lambda-bindings116053_
                   (lambda (_bindings116220_)
                     (let _lp116222_ ((_rest116224_ _bindings116220_)
                                      (_lift1116225_ '())
                                      (_lift2116226_ '())
                                      (_bind116227_ '()))
                       (let* ((_rest116228116236_ _rest116224_)
                              (_else116230116244_
                               (lambda ()
                                 (values (reverse _lift1116225_)
                                         (reverse _lift2116226_)
                                         (reverse _bind116227_))))
                              (_K116232116596_
                               (lambda (_rest116247_ _hd116248_)
                                 (let* ((___stx125140125141_ _hd116248_)
                                        (_g116251116276_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx125140125141_)))))
                                   (let ((___kont125142125143_
                                          (lambda (_L116346_ _L116347_)
                                            (let* ((_g116361116414_
                                                    (lambda (_g116362116411_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g116362116411_))))
                                                   (_g116360116590_
                                                    (lambda (_g116362116417_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g116362116417_))
                                                          (let ((_e116368116419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g116362116417_))))
                    (let ((_hd116369116422_
                           (let ()
                             (declare (not safe))
                             (##car _e116368116419_)))
                          (_tl116370116424_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116368116419_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl116370116424_))
                          (let ((_e116371116427_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl116370116424_))))
                            (let ((_hd116372116430_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e116371116427_)))
                                  (_tl116373116432_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e116371116427_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd116372116430_))
                                  (let ((_e116374116435_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd116372116430_))))
                                    (let ((_hd116375116438_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116374116435_)))
                                          (_tl116376116440_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116374116435_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd116375116438_))
                                          (let ((_e116377116443_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd116375116438_))))
                                            (let ((_hd116378116446_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e116377116443_)))
                                                  (_tl116379116448_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e116377116443_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd116378116446_))
                                                  (let ((_e116380116451_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd116378116446_))))
                                                    (let ((_hd116381116454_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116380116451_)))
                                                          (_tl116382116456_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116380116451_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl116382116456_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl116379116448_))
                      (let ((_e116383116459_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl116379116448_))))
                        (let ((_hd116384116462_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116383116459_)))
                              (_tl116385116464_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116383116459_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd116384116462_))
                              (let ((_e116386116467_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd116384116462_))))
                                (let ((_hd116387116470_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116386116467_)))
                                      (_tl116388116472_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116386116467_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116388116472_))
                                      (let ((_e116389116475_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116388116472_))))
                                        (let ((_hd116390116478_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116389116475_)))
                                              (_tl116391116480_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116389116475_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd116390116478_))
                                              (let ((_e116392116483_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd116390116478_))))
                                                (let ((_hd116393116486_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e116392116483_)))
                                                      (_tl116394116488_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e116392116483_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd116393116486_))
                                                      (let ((_e116395116491_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd116393116486_))))
                (let ((_hd116396116494_
                       (let () (declare (not safe)) (##car _e116395116491_)))
                      (_tl116397116496_
                       (let () (declare (not safe)) (##cdr _e116395116491_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd116396116494_))
                      (let ((_e116398116499_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd116396116494_))))
                        (let ((_hd116399116502_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116398116499_)))
                              (_tl116400116504_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116398116499_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl116400116504_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl116397116496_))
                                  (let ((_e116401116507_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl116397116496_))))
                                    (let ((_hd116402116510_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116401116507_)))
                                          (_tl116403116512_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116401116507_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl116403116512_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116394116488_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl116391116480_))
                                                  (let ((_e116404116515_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl116391116480_))))
                                                    (let ((_hd116405116518_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116404116515_)))
                                                          (_tl116406116520_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116404116515_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl116406116520_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl116385116464_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl116376116440_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116373116432_))
                              (let ((_e116407116523_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116373116432_))))
                                (let ((_hd116408116526_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116407116523_)))
                                      (_tl116409116528_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116407116523_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116409116528_))
                                      ((lambda (_L116531_
                                                _L116532_
                                                _L116533_
                                                _L116534_
                                                _L116535_)
                                         (let* ((_get-kws-id116575_
                                                 (let ((__tmp125667
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L116347_)))
                                                       (__tmp125666
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp125667
                                                    __tmp125666)))
                                                (_get-kws-id116577_
                                                 (let ((__tmp125668
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx116048_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id116575_
                                                    __tmp125668)))
                                                (_main-id116579_
                                                 (let ((__tmp125670
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L116347_)))
                                                       (__tmp125669
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp125670
                                                    __tmp125669)))
                                                (_main-id116581_
                                                 (let ((__tmp125671
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx116048_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id116579_
                                                    __tmp125671)))
                                                (_g125672_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id116577_)))
                                                (_g125673_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id116581_)))
                                                (_new-kw-dispatch116585_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L116531_
                                                    _L116535_
                                                    _get-kws-id116577_)))
                                                (_new-get-kws116587_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L116532_
                                                    _L116534_
                                                    _main-id116581_))))
                                           (let ((__tmp125676
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L116347_)))
                                                 (__tmp125675
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id116577_)))
                                                 (__tmp125674
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id116581_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp125676
                                              '" => "
                                              __tmp125675
                                              '" => "
                                              __tmp125674))
                                           (let ((__tmp125681
                                                  (let ((__tmp125682
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__123302123303_
                                                            _main-id116581_
                                                            _L116533_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp125682
                                                          _lift1116225_)))
                                                 (__tmp125679
                                                  (let ((__tmp125680
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__123302123303_
                                                            _get-kws-id116577_
                                                            _new-get-kws116587_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp125680
                                                          _lift2116226_)))
                                                 (__tmp125677
                                                  (let ((__tmp125678
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__123302123303_
                                                            _L116347_
                                                            _new-kw-dispatch116585_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp125678
                                                          _bind116227_))))
                                             (declare (not safe))
                                             (_lp116222_
                                              _rest116247_
                                              __tmp125681
                                              __tmp125679
                                              __tmp125677))))
                                       _hd116408116526_
                                       _hd116405116518_
                                       _hd116402116510_
                                       _hd116399116502_
                                       _hd116381116454_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116361116414_ _g116362116417_)))))
                              (let ()
                                (declare (not safe))
                                (_g116361116414_ _g116362116417_)))
                          (let ()
                            (declare (not safe))
                            (_g116361116414_ _g116362116417_)))
                      (let ()
                        (declare (not safe))
                        (_g116361116414_ _g116362116417_)))
                  (let ()
                    (declare (not safe))
                    (_g116361116414_ _g116362116417_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g116361116414_
                                                     _g116362116417_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g116361116414_
                                                 _g116362116417_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g116361116414_
                                             _g116362116417_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g116361116414_ _g116362116417_)))
                              (let ()
                                (declare (not safe))
                                (_g116361116414_ _g116362116417_)))))
                      (let ()
                        (declare (not safe))
                        (_g116361116414_ _g116362116417_)))))
              (let ()
                (declare (not safe))
                (_g116361116414_ _g116362116417_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g116361116414_
                                                 _g116362116417_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116361116414_ _g116362116417_)))))
                              (let ()
                                (declare (not safe))
                                (_g116361116414_ _g116362116417_)))))
                      (let ()
                        (declare (not safe))
                        (_g116361116414_ _g116362116417_)))
                  (let ()
                    (declare (not safe))
                    (_g116361116414_ _g116362116417_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g116361116414_
                                                     _g116362116417_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g116361116414_
                                             _g116362116417_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g116361116414_ _g116362116417_)))))
                          (let ()
                            (declare (not safe))
                            (_g116361116414_ _g116362116417_)))))
                  (let ()
                    (declare (not safe))
                    (_g116361116414_ _g116362116417_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g116360116590_ _L116346_))))
                                         (___kont125144125145_
                                          (lambda (_L116297_ _L116298_)
                                            (let ((__tmp125683
                                                   (let ((__tmp125684
                                                          (let ((__tmp125685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L116297_ '()))))
                    (declare (not safe))
                    (cons _L116298_ __tmp125685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp125684
                                                           _bind116227_))))
                                              (declare (not safe))
                                              (_lp116222_
                                               _rest116247_
                                               _lift1116225_
                                               _lift2116226_
                                               __tmp125683)))))
                                     (let ((___match125167125168_
                                            (lambda (_e116255116322_
                                                     _hd116256116325_
                                                     _tl116257116327_
                                                     _e116258116330_
                                                     _hd116259116333_
                                                     _tl116260116335_
                                                     _e116261116338_
                                                     _hd116262116341_
                                                     _tl116263116343_)
                                              (let ((_L116346_
                                                     _hd116262116341_)
                                                    (_L116347_
                                                     _hd116259116333_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L116347_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L116346_)))
                                                    (___kont125142125143_
                                                     _L116346_
                                                     _L116347_)
                                                    (___kont125144125145_
                                                     _hd116262116341_
                                                     _hd116256116325_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx125140125141_))
                                           (let ((_e116255116322_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx125140125141_))))
                                             (let ((_tl116257116327_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e116255116322_)))
                                                   (_hd116256116325_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e116255116322_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd116256116325_))
                                                   (let ((_e116258116330_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd116256116325_))))
                                                     (let ((_tl116260116335_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e116258116330_)))
                                                           (_hd116259116333_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e116258116330_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl116260116335_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl116257116327_))
                       (let ((_e116261116338_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl116257116327_))))
                         (let ((_tl116263116343_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e116261116338_)))
                               (_hd116262116341_
                                (let ()
                                  (declare (not safe))
                                  (##car _e116261116338_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl116263116343_))
                               (___match125167125168_
                                _e116255116322_
                                _hd116256116325_
                                _tl116257116327_
                                _e116258116330_
                                _hd116259116333_
                                _tl116260116335_
                                _e116261116338_
                                _hd116262116341_
                                _tl116263116343_)
                               (let ()
                                 (declare (not safe))
                                 (_g116251116276_)))))
                       (let () (declare (not safe)) (_g116251116276_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl116257116327_))
                       (let ((_e116269116289_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl116257116327_))))
                         (let ((_tl116271116294_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e116269116289_)))
                               (_hd116270116292_
                                (let ()
                                  (declare (not safe))
                                  (##car _e116269116289_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl116271116294_))
                               (___kont125144125145_
                                _hd116270116292_
                                _hd116256116325_)
                               (let ()
                                 (declare (not safe))
                                 (_g116251116276_)))))
                       (let () (declare (not safe)) (_g116251116276_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl116257116327_))
                                                       (let ((_e116269116289_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl116257116327_))))
                 (let ((_tl116271116294_
                        (let () (declare (not safe)) (##cdr _e116269116289_)))
                       (_hd116270116292_
                        (let () (declare (not safe)) (##car _e116269116289_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl116271116294_))
                       (___kont125144125145_ _hd116270116292_ _hd116256116325_)
                       (let () (declare (not safe)) (_g116251116276_)))))
               (let () (declare (not safe)) (_g116251116276_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g116251116276_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest116228116236_))
                             (let ((_hd116233116599_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest116228116236_)))
                                   (_tl116234116601_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest116228116236_))))
                               (let* ((_hd116604_ _hd116233116599_)
                                      (_rest116606_ _tl116234116601_))
                                 (declare (not safe))
                                 (_K116232116596_ _rest116606_ _hd116604_)))
                             (let ()
                               (declare (not safe))
                               (_else116230116244_))))))))
          (let* ((___stx125184125185_ _stx116048_)
                 (_g116056116082_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx125184125185_)))))
            (let ((___kont125186125187_
                   (lambda (_L116142_ _L116143_)
                     (let ((__tmp125687
                            (lambda ()
                              (if (let ((__tmp125688
                                         (let ((__tmp125689
                                                (lambda (_g116171116174_
                                                         _g116172116176_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g116171116174_
                                                          _g116172116176_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp125689
                                                   '()
                                                   _L116143_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?116052_
                                            __tmp125688))
                                  (let ((_g125690_
                                         (let ((__tmp125692
                                                (let ((__tmp125693
                                                       (lambda (_g116178116181_
                                                                _g116179116183_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g116178116181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g116179116183_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp125693
                                                          '()
                                                          _L116143_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings116053_
                                            __tmp125692))))
                                    (begin
                                      (let ((_g125691_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g125690_)
                                                   (##vector-length _g125690_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g125691_ 3)))
                                            (error "Context expects 3 values"
                                                   _g125691_)))
                                      (let ((_lift1116186_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g125690_ 0)))
                                            (_lift2116187_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g125690_ 1)))
                                            (_hd116188_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g125690_ 2))))
                                        (let* ((_expr116190_
                                                (let ((__tmp125694
                                                       (let ((__tmp125695
                                                              (let ((__tmp125696
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L116142_ '()))))
                        (declare (not safe))
                        (cons _hd116188_ __tmp125696))))
                 (declare (not safe))
                 (cons '%#let-values __tmp125695))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp125694
                                                   _stx116048_)))
                                               (_expr116192_
                                                (let ((__tmp125697
                                                       (let ((__tmp125698
                                                              (let ((__tmp125699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr116190_ '()))))
                        (declare (not safe))
                        (cons _lift2116187_ __tmp125699))))
                 (declare (not safe))
                 (cons '%#let-values __tmp125698))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp125697
                                                   _stx116048_)))
                                               (_expr116194_
                                                (let ((__tmp125700
                                                       (let ((__tmp125701
                                                              (let ((__tmp125702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr116192_ '()))))
                        (declare (not safe))
                        (cons _lift1116186_ __tmp125702))))
                 (declare (not safe))
                 (cons '%#let-values __tmp125701))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp125700
                                                   _stx116048_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr116194_))))))
                                  (let ((_g125703_
                                         (let ((__tmp125705
                                                (let ((__tmp125706
                                                       (lambda (_g116196116199_
                                                                _g116197116201_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g116196116199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g116197116201_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp125706
                                                          '()
                                                          _L116143_))))
                                           (declare (not safe))
                                           (_compile-bindings116051_
                                            __tmp125705))))
                                    (begin
                                      (let ((_g125704_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g125703_)
                                                   (##vector-length _g125703_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g125704_ 3)))
                                            (error "Context expects 3 values"
                                                   _g125704_)))
                                      (let ((_lift1116204_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g125703_ 0)))
                                            (_lift2116205_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g125703_ 1)))
                                            (_hd116206_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g125703_ 2))))
                                        (let* ((_body116208_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L116142_)))
                                               (_expr116210_
                                                (let ((__tmp125707
                                                       (let ((__tmp125708
                                                              (let ((__tmp125709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body116208_ '()))))
                        (declare (not safe))
                        (cons _hd116206_ __tmp125709))))
                 (declare (not safe))
                 (cons '%#let-values __tmp125708))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp125707
                                                   _stx116048_)))
                                               (_expr116212_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2116205_))
                                                    _expr116210_
                                                    (let ((__tmp125710
                                                           (let ((__tmp125711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp125712
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr116210_ '()))))
                            (declare (not safe))
                            (cons _lift2116205_ __tmp125712))))
                     (declare (not safe))
                     (cons '%#let-values __tmp125711))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp125710 _stx116048_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr116214_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1116204_))
                                                    _expr116212_
                                                    (let ((__tmp125713
                                                           (let ((__tmp125714
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp125715
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr116212_ '()))))
                            (declare (not safe))
                            (cons _lift1116204_ __tmp125715))))
                     (declare (not safe))
                     (cons '%#let-values __tmp125714))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp125713 _stx116048_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr116214_)))))))
                           (__tmp125686
                            (let ((__obj125390
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj125390)
                              __obj125390)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp125687
                        gx#current-expander-context
                        __tmp125686))))
                  (___kont125190125191_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx116048_)))))
              (let ((___match125211125212_
                     (lambda (_e116060116094_
                              _hd116061116097_
                              _tl116062116099_
                              _e116063116102_
                              _hd116064116105_
                              _tl116065116107_
                              ___splice125188125189_
                              _target116066116110_
                              _tl116068116112_)
                       (letrec ((_loop116069116115_
                                 (lambda (_hd116067116118_ _bind116073116120_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd116067116118_))
                                       (let ((_e116070116123_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd116067116118_))))
                                         (let ((_lp-tl116072116128_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e116070116123_)))
                                               (_lp-hd116071116126_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e116070116123_))))
                                           (let ((__tmp125716
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd116071116126_
                                                          _bind116073116120_))))
                                             (declare (not safe))
                                             (_loop116069116115_
                                              _lp-tl116072116128_
                                              __tmp125716))))
                                       (let ((_bind116074116131_
                                              (reverse _bind116073116120_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl116065116107_))
                                             (let ((_e116075116134_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl116065116107_))))
                                               (let ((_tl116077116139_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e116075116134_)))
                                                     (_hd116076116137_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e116075116134_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl116077116139_))
                                                     (let ((_L116142_
                                                            _hd116076116137_)
                                                           (_L116143_
                                                            _bind116074116131_))
                                                       (if (let ((__tmp125717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp125718
                                 (lambda (_g116163116166_ _g116164116168_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g116163116166_ _g116164116168_)))))
                            (declare (not safe))
                            (foldr1 __tmp125718 '() _L116143_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp125717))
                   (___kont125186125187_ _L116142_ _L116143_)
                   (___kont125190125191_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont125190125191_))))
                                             (___kont125190125191_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop116069116115_ _target116066116110_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx125184125185_))
                    (let ((_e116060116094_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx125184125185_))))
                      (let ((_tl116062116099_
                             (let ()
                               (declare (not safe))
                               (##cdr _e116060116094_)))
                            (_hd116061116097_
                             (let ()
                               (declare (not safe))
                               (##car _e116060116094_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl116062116099_))
                            (let ((_e116063116102_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl116062116099_))))
                              (let ((_tl116065116107_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e116063116102_)))
                                    (_hd116064116105_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e116063116102_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd116064116105_))
                                    (let ((___splice125188125189_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd116064116105_
                                              '0))))
                                      (let ((_tl116068116112_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice125188125189_
                                                '1)))
                                            (_target116066116110_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice125188125189_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl116068116112_))
                                            (___match125211125212_
                                             _e116060116094_
                                             _hd116061116097_
                                             _tl116062116099_
                                             _e116063116102_
                                             _hd116064116105_
                                             _tl116065116107_
                                             ___splice125188125189_
                                             _target116066116110_
                                             _tl116068116112_)
                                            (___kont125190125191_))))
                                    (___kont125190125191_))))
                            (___kont125190125191_))))
                    (___kont125190125191_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx115192_)
        (letrec* ((_bind-e__123307123308_
                   (lambda (_id116032_ _expr116033_ _compile?116034_)
                     (let ((__tmp125721
                            (let ()
                              (declare (not safe))
                              (cons _id116032_ '())))
                           (__tmp125719
                            (let ((__tmp125720
                                   (if _compile?116034_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr116033_))
                                       _expr116033_)))
                              (declare (not safe))
                              (cons __tmp125720 '()))))
                       (declare (not safe))
                       (cons __tmp125721 __tmp125719))))
                  (_bind-e__0__123309123310_
                   (lambda (_id116039_ _expr116040_)
                     (let ((_compile?116042_ '#t))
                       (declare (not safe))
                       (_bind-e__123307123308_
                        _id116039_
                        _expr116040_
                        _compile?116042_))))
                  (_bind-e115194_
                   (lambda _g125723_
                     (let ((_g125722_
                            (let ()
                              (declare (not safe))
                              (##length _g125723_))))
                       (cond ((let () (declare (not safe)) (##fx= _g125722_ 2))
                              (apply (lambda (_id116039_ _expr116040_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__123309123310_
                                          _id116039_
                                          _expr116040_)))
                                     _g125723_))
                             ((let () (declare (not safe)) (##fx= _g125722_ 3))
                              (apply (lambda (_id116044_
                                              _expr116045_
                                              _compile?116046_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__123307123308_
                                          _id116044_
                                          _expr116045_
                                          _compile?116046_)))
                                     _g125723_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g125723_))))))
                  (_compile-bindings115195_
                   (lambda (_rest115330_)
                     (let _lp115332_ ((_rest115334_ _rest115330_)
                                      (_bind115335_ '()))
                       (let* ((_rest115336115344_ _rest115334_)
                              (_else115338115352_
                               (lambda () (reverse _bind115335_)))
                              (_K115340116019_
                               (lambda (_rest115355_ _hd115356_)
                                 (let* ((___stx125234125235_ _hd115356_)
                                        (_g115361115408_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx125234125235_)))))
                                   (let ((___kont125236125237_
                                          (lambda (_L115926_ _L115927_)
                                            (let* ((___stx125214125215_
                                                    _L115926_)
                                                   (_g115942115956_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx125214125215_)))))
                                              (let ((___kont125216125217_
                                                     (lambda (_L116004_)
                                                       (let ((__tmp125724
                                                              (let ((__tmp125725
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__123307123308_
                                _L115927_
                                _L115926_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp125725 _bind115335_))))
                 (declare (not safe))
                 (_lp115332_ _rest115355_ __tmp125724))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont125218125219_
                                                     (lambda (_L115969_)
                                                       (let ((_g125726_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx115192_
                         _L115927_
                         _L115969_
                         '#t))))
                 (begin
                   (let ((_g125727_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g125726_)
                                (##vector-length _g125726_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g125727_ 3)))
                         (error "Context expects 3 values" _g125727_)))
                   (let ((_ids115979_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g125726_ 0)))
                         (_impls115980_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g125726_ 1)))
                         (_clauses115981_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g125726_ 2))))
                     (let* ((_g125728_
                             (for-each gx#core-bind-runtime! _ids115979_))
                            (_xbind115984_
                             (map _bind-e115194_ _ids115979_ _impls115980_))
                            (_expr*115986_
                             (let ((__tmp125730
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses115981_)))
                                   (__tmp125729
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp125730
                                __tmp125729)))
                            (_bind*115988_
                             (let ()
                               (declare (not safe))
                               (_bind-e__123307123308_
                                _L115927_
                                _expr*115986_
                                '#f))))
                       (let ((__tmp125732
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L115927_)))
                             (__tmp125731
                              (map gxc#identifier-symbol _ids115979_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp125732
                          '" => "
                          __tmp125731))
                       (let ((__tmp125733
                              (let ((__tmp125734
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind115335_
                                               _xbind115984_))))
                                (declare (not safe))
                                (cons _bind*115988_ __tmp125734))))
                         (declare (not safe))
                         (_lp115332_ _rest115355_ __tmp125733)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match125225125226_
                                                       (lambda (_e115945115996_
                                                                _hd115946115999_
                                                                _tl115947116001_)
                                                         (let ((_L116004_
                                                                _tl115947116001_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L116004_))
                       (___kont125216125217_ _L116004_)
                       (___kont125218125219_ _tl115947116001_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx125214125215_))
                                                      (let ((_e115945115996_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx125214125215_))))
                (let ((_tl115947116001_
                       (let () (declare (not safe)) (##cdr _e115945115996_)))
                      (_hd115946115999_
                       (let () (declare (not safe)) (##car _e115945115996_))))
                  (___match125225125226_
                   _e115945115996_
                   _hd115946115999_
                   _tl115947116001_)))
              (let () (declare (not safe)) (_g115942115956_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont125238125239_
                                          (lambda (_L115754_ _L115755_)
                                            (let* ((_g115769115799_
                                                    (lambda (_g115770115796_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g115770115796_))))
                                                   (_g115768115894_
                                                    (lambda (_g115770115802_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g115770115802_))
                                                          (let ((_e115774115804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g115770115802_))))
                    (let ((_hd115775115807_
                           (let ()
                             (declare (not safe))
                             (##car _e115774115804_)))
                          (_tl115776115809_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115774115804_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl115776115809_))
                          (let ((_e115777115812_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl115776115809_))))
                            (let ((_hd115778115815_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e115777115812_)))
                                  (_tl115779115817_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e115777115812_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd115778115815_))
                                  (let ((_e115780115820_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd115778115815_))))
                                    (let ((_hd115781115823_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115780115820_)))
                                          (_tl115782115825_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115780115820_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd115781115823_))
                                          (let ((_e115783115828_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd115781115823_))))
                                            (let ((_hd115784115831_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e115783115828_)))
                                                  (_tl115785115833_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e115783115828_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd115784115831_))
                                                  (let ((_e115786115836_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd115784115831_))))
                                                    (let ((_hd115787115839_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115786115836_)))
                                                          (_tl115788115841_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115786115836_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl115788115841_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl115785115833_))
                      (let ((_e115789115844_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl115785115833_))))
                        (let ((_hd115790115847_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115789115844_)))
                              (_tl115791115849_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115789115844_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl115791115849_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl115782115825_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115779115817_))
                                      (let ((_e115792115852_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115779115817_))))
                                        (let ((_hd115793115855_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115792115852_)))
                                              (_tl115794115857_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115792115852_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115794115857_))
                                              ((lambda (_L115860_
                                                        _L115861_
                                                        _L115862_)
                                                 (let* ((_lambda-id115886_
                                                         (let ((__tmp125736
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L115755_)))
                       (__tmp125735 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp125736 __tmp125735)))
                (_lambda-id115888_
                 (let ((__tmp125737
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx115192_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id115886_ __tmp125737)))
                (_g125738_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id115888_)))
                (_new-case-lambda-expr115891_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L115860_
                    _L115862_
                    _lambda-id115888_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp125740
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L115755_)))
                                                         (__tmp125739
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id115888_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp125740
                                                      '" => "
                                                      __tmp125739))
                                                   (let ((__tmp125743
                                                          (let ((__tmp125744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__123307123308_
                            _L115755_
                            _new-case-lambda-expr115891_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp125744 _rest115355_)))
                 (__tmp125741
                  (let ((__tmp125742
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__123309123310_
                            _lambda-id115888_
                            _L115861_))))
                    (declare (not safe))
                    (cons __tmp125742 _bind115335_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp115332_
                                                      __tmp125743
                                                      __tmp125741))))
                                               _hd115793115855_
                                               _hd115790115847_
                                               _hd115787115839_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115769115799_
                                                 _g115770115802_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115769115799_ _g115770115802_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g115769115799_ _g115770115802_)))
                              (let ()
                                (declare (not safe))
                                (_g115769115799_ _g115770115802_)))))
                      (let ()
                        (declare (not safe))
                        (_g115769115799_ _g115770115802_)))
                  (let ()
                    (declare (not safe))
                    (_g115769115799_ _g115770115802_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g115769115799_
                                                     _g115770115802_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g115769115799_
                                             _g115770115802_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g115769115799_ _g115770115802_)))))
                          (let ()
                            (declare (not safe))
                            (_g115769115799_ _g115770115802_)))))
                  (let ()
                    (declare (not safe))
                    (_g115769115799_ _g115770115802_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g115768115894_ _L115754_))))
                                         (___kont125240125241_
                                          (lambda (_L115478_ _L115479_)
                                            (let* ((_g115493115546_
                                                    (lambda (_g115494115543_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g115494115543_))))
                                                   (_g115492115722_
                                                    (lambda (_g115494115549_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g115494115549_))
                                                          (let ((_e115500115551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g115494115549_))))
                    (let ((_hd115501115554_
                           (let ()
                             (declare (not safe))
                             (##car _e115500115551_)))
                          (_tl115502115556_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115500115551_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl115502115556_))
                          (let ((_e115503115559_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl115502115556_))))
                            (let ((_hd115504115562_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e115503115559_)))
                                  (_tl115505115564_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e115503115559_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd115504115562_))
                                  (let ((_e115506115567_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd115504115562_))))
                                    (let ((_hd115507115570_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115506115567_)))
                                          (_tl115508115572_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115506115567_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd115507115570_))
                                          (let ((_e115509115575_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd115507115570_))))
                                            (let ((_hd115510115578_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e115509115575_)))
                                                  (_tl115511115580_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e115509115575_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd115510115578_))
                                                  (let ((_e115512115583_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd115510115578_))))
                                                    (let ((_hd115513115586_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115512115583_)))
                                                          (_tl115514115588_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115512115583_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl115514115588_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl115511115580_))
                      (let ((_e115515115591_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl115511115580_))))
                        (let ((_hd115516115594_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115515115591_)))
                              (_tl115517115596_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115515115591_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd115516115594_))
                              (let ((_e115518115599_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd115516115594_))))
                                (let ((_hd115519115602_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115518115599_)))
                                      (_tl115520115604_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115518115599_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115520115604_))
                                      (let ((_e115521115607_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115520115604_))))
                                        (let ((_hd115522115610_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115521115607_)))
                                              (_tl115523115612_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115521115607_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd115522115610_))
                                              (let ((_e115524115615_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd115522115610_))))
                                                (let ((_hd115525115618_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e115524115615_)))
                                                      (_tl115526115620_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e115524115615_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd115525115618_))
                                                      (let ((_e115527115623_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd115525115618_))))
                (let ((_hd115528115626_
                       (let () (declare (not safe)) (##car _e115527115623_)))
                      (_tl115529115628_
                       (let () (declare (not safe)) (##cdr _e115527115623_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd115528115626_))
                      (let ((_e115530115631_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd115528115626_))))
                        (let ((_hd115531115634_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115530115631_)))
                              (_tl115532115636_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115530115631_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl115532115636_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl115529115628_))
                                  (let ((_e115533115639_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl115529115628_))))
                                    (let ((_hd115534115642_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115533115639_)))
                                          (_tl115535115644_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115533115639_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl115535115644_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115526115620_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl115523115612_))
                                                  (let ((_e115536115647_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl115523115612_))))
                                                    (let ((_hd115537115650_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115536115647_)))
                                                          (_tl115538115652_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115536115647_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl115538115652_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl115517115596_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl115508115572_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115505115564_))
                              (let ((_e115539115655_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115505115564_))))
                                (let ((_hd115540115658_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115539115655_)))
                                      (_tl115541115660_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115539115655_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115541115660_))
                                      ((lambda (_L115663_
                                                _L115664_
                                                _L115665_
                                                _L115666_
                                                _L115667_)
                                         (let* ((_get-kws-id115707_
                                                 (let ((__tmp125746
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L115479_)))
                                                       (__tmp125745
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp125746
                                                    __tmp125745)))
                                                (_get-kws-id115709_
                                                 (let ((__tmp125747
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx115192_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id115707_
                                                    __tmp125747)))
                                                (_main-id115711_
                                                 (let ((__tmp125749
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L115479_)))
                                                       (__tmp125748
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp125749
                                                    __tmp125748)))
                                                (_main-id115713_
                                                 (let ((__tmp125750
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx115192_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id115711_
                                                    __tmp125750)))
                                                (_g125751_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id115709_)))
                                                (_g125752_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id115713_)))
                                                (_new-kw-dispatch115717_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L115663_
                                                    _L115667_
                                                    _get-kws-id115709_)))
                                                (_new-get-kws115719_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L115664_
                                                    _L115666_
                                                    _main-id115713_))))
                                           (let ((__tmp125755
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L115479_)))
                                                 (__tmp125754
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id115709_)))
                                                 (__tmp125753
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id115713_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp125755
                                              '" => "
                                              __tmp125754
                                              '" => "
                                              __tmp125753))
                                           (let ((__tmp125756
                                                  (let ((__tmp125761
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__123307123308_
                                                            _main-id115713_
                                                            _L115665_
                                                            '#f)))
                                                        (__tmp125757
                                                         (let ((__tmp125760
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__123307123308_
                           _get-kws-id115709_
                           _new-get-kws115719_
                           '#f)))
                       (__tmp125758
                        (let ((__tmp125759
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__123307123308_
                                  _L115479_
                                  _new-kw-dispatch115717_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp125759 _rest115355_))))
                   (declare (not safe))
                   (cons __tmp125760 __tmp125758))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp125761
                                                          __tmp125757))))
                                             (declare (not safe))
                                             (_lp115332_
                                              __tmp125756
                                              _bind115335_))))
                                       _hd115540115658_
                                       _hd115537115650_
                                       _hd115534115642_
                                       _hd115531115634_
                                       _hd115513115586_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115493115546_ _g115494115549_)))))
                              (let ()
                                (declare (not safe))
                                (_g115493115546_ _g115494115549_)))
                          (let ()
                            (declare (not safe))
                            (_g115493115546_ _g115494115549_)))
                      (let ()
                        (declare (not safe))
                        (_g115493115546_ _g115494115549_)))
                  (let ()
                    (declare (not safe))
                    (_g115493115546_ _g115494115549_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g115493115546_
                                                     _g115494115549_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g115493115546_
                                                 _g115494115549_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g115493115546_
                                             _g115494115549_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g115493115546_ _g115494115549_)))
                              (let ()
                                (declare (not safe))
                                (_g115493115546_ _g115494115549_)))))
                      (let ()
                        (declare (not safe))
                        (_g115493115546_ _g115494115549_)))))
              (let ()
                (declare (not safe))
                (_g115493115546_ _g115494115549_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g115493115546_
                                                 _g115494115549_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115493115546_ _g115494115549_)))))
                              (let ()
                                (declare (not safe))
                                (_g115493115546_ _g115494115549_)))))
                      (let ()
                        (declare (not safe))
                        (_g115493115546_ _g115494115549_)))
                  (let ()
                    (declare (not safe))
                    (_g115493115546_ _g115494115549_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g115493115546_
                                                     _g115494115549_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g115493115546_
                                             _g115494115549_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g115493115546_ _g115494115549_)))))
                          (let ()
                            (declare (not safe))
                            (_g115493115546_ _g115494115549_)))))
                  (let ()
                    (declare (not safe))
                    (_g115493115546_ _g115494115549_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g115492115722_ _L115478_))))
                                         (___kont125242125243_
                                          (lambda (_L115429_ _L115430_)
                                            (let ((__tmp125762
                                                   (let ((__tmp125763
                                                          (let ((__tmp125764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp125765
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L115429_))))
                           (declare (not safe))
                           (cons __tmp125765 '()))))
                    (declare (not safe))
                    (cons _L115430_ __tmp125764))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp125763
                                                           _bind115335_))))
                                              (declare (not safe))
                                              (_lp115332_
                                               _rest115355_
                                               __tmp125762)))))
                                     (let* ((___match125309125310_
                                             (lambda (_e115387115454_
                                                      _hd115388115457_
                                                      _tl115389115459_
                                                      _e115390115462_
                                                      _hd115391115465_
                                                      _tl115392115467_
                                                      _e115393115470_
                                                      _hd115394115473_
                                                      _tl115395115475_)
                                               (let ((_L115478_
                                                      _hd115394115473_)
                                                     (_L115479_
                                                      _hd115391115465_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L115479_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L115478_)))
                                                     (___kont125240125241_
                                                      _L115478_
                                                      _L115479_)
                                                     (___kont125242125243_
                                                      _hd115394115473_
                                                      _hd115388115457_)))))
                                            (___match125287125288_
                                             (lambda (_e115376115730_
                                                      _hd115377115733_
                                                      _tl115378115735_
                                                      _e115379115738_
                                                      _hd115380115741_
                                                      _tl115381115743_
                                                      _e115382115746_
                                                      _hd115383115749_
                                                      _tl115384115751_)
                                               (let ((_L115754_
                                                      _hd115383115749_)
                                                     (_L115755_
                                                      _hd115380115741_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L115755_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L115754_)))
                                                     (___kont125238125239_
                                                      _L115754_
                                                      _L115755_)
                                                     (___match125309125310_
                                                      _e115376115730_
                                                      _hd115377115733_
                                                      _tl115378115735_
                                                      _e115379115738_
                                                      _hd115380115741_
                                                      _tl115381115743_
                                                      _e115382115746_
                                                      _hd115383115749_
                                                      _tl115384115751_)))))
                                            (___match125265125266_
                                             (lambda (_e115365115902_
                                                      _hd115366115905_
                                                      _tl115367115907_
                                                      _e115368115910_
                                                      _hd115369115913_
                                                      _tl115370115915_
                                                      _e115371115918_
                                                      _hd115372115921_
                                                      _tl115373115923_)
                                               (let ((_L115926_
                                                      _hd115372115921_)
                                                     (_L115927_
                                                      _hd115369115913_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L115927_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L115926_)))
                                                     (___kont125236125237_
                                                      _L115926_
                                                      _L115927_)
                                                     (___match125287125288_
                                                      _e115365115902_
                                                      _hd115366115905_
                                                      _tl115367115907_
                                                      _e115368115910_
                                                      _hd115369115913_
                                                      _tl115370115915_
                                                      _e115371115918_
                                                      _hd115372115921_
                                                      _tl115373115923_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx125234125235_))
                                           (let ((_e115365115902_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx125234125235_))))
                                             (let ((_tl115367115907_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e115365115902_)))
                                                   (_hd115366115905_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e115365115902_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd115366115905_))
                                                   (let ((_e115368115910_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd115366115905_))))
                                                     (let ((_tl115370115915_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e115368115910_)))
                                                           (_hd115369115913_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e115368115910_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl115370115915_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl115367115907_))
                       (let ((_e115371115918_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl115367115907_))))
                         (let ((_tl115373115923_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e115371115918_)))
                               (_hd115372115921_
                                (let ()
                                  (declare (not safe))
                                  (##car _e115371115918_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl115373115923_))
                               (___match125265125266_
                                _e115365115902_
                                _hd115366115905_
                                _tl115367115907_
                                _e115368115910_
                                _hd115369115913_
                                _tl115370115915_
                                _e115371115918_
                                _hd115372115921_
                                _tl115373115923_)
                               (let ()
                                 (declare (not safe))
                                 (_g115361115408_)))))
                       (let () (declare (not safe)) (_g115361115408_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl115367115907_))
                       (let ((_e115401115421_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl115367115907_))))
                         (let ((_tl115403115426_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e115401115421_)))
                               (_hd115402115424_
                                (let ()
                                  (declare (not safe))
                                  (##car _e115401115421_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl115403115426_))
                               (___kont125242125243_
                                _hd115402115424_
                                _hd115366115905_)
                               (let ()
                                 (declare (not safe))
                                 (_g115361115408_)))))
                       (let () (declare (not safe)) (_g115361115408_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl115367115907_))
                                                       (let ((_e115401115421_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl115367115907_))))
                 (let ((_tl115403115426_
                        (let () (declare (not safe)) (##cdr _e115401115421_)))
                       (_hd115402115424_
                        (let () (declare (not safe)) (##car _e115401115421_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl115403115426_))
                       (___kont125242125243_ _hd115402115424_ _hd115366115905_)
                       (let () (declare (not safe)) (_g115361115408_)))))
               (let () (declare (not safe)) (_g115361115408_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g115361115408_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest115336115344_))
                             (let ((_hd115341116022_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest115336115344_)))
                                   (_tl115342116024_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest115336115344_))))
                               (let* ((_hd116027_ _hd115341116022_)
                                      (_rest116029_ _tl115342116024_))
                                 (declare (not safe))
                                 (_K115340116019_ _rest116029_ _hd116027_)))
                             (let ()
                               (declare (not safe))
                               (_else115338115352_))))))))
          (let* ((___stx125326125327_ _stx115192_)
                 (_g115198115225_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx125326125327_)))))
            (let ((___kont125328125329_
                   (lambda (_L115285_ _L115286_ _L115287_)
                     (let ((__tmp125767
                            (lambda ()
                              (let ((_hd115324_
                                     (let ((__tmp125768
                                            (let ((__tmp125769
                                                   (lambda (_g115316115319_
                                                            _g115317115321_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g115316115319_
                                                             _g115317115321_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp125769
                                                      '()
                                                      _L115286_))))
                                       (declare (not safe))
                                       (_compile-bindings115195_ __tmp125768)))
                                    (_body115325_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L115285_))))
                                (let ((__tmp125770
                                       (let ((__tmp125771
                                              (let ((__tmp125772
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body115325_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd115324_
                                                      __tmp125772))))
                                         (declare (not safe))
                                         (cons _L115287_ __tmp125771))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp125770
                                   _stx115192_)))))
                           (__tmp125766
                            (let ((__obj125391
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj125391)
                              __obj125391)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp125767
                        gx#current-expander-context
                        __tmp125766))))
                  (___kont125332125333_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx115192_)))))
              (let ((___match125353125354_
                     (lambda (_e115203115237_
                              _hd115204115240_
                              _tl115205115242_
                              _e115206115245_
                              _hd115207115248_
                              _tl115208115250_
                              ___splice125330125331_
                              _target115209115253_
                              _tl115211115255_)
                       (letrec ((_loop115212115258_
                                 (lambda (_hd115210115261_ _bind115216115263_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd115210115261_))
                                       (let ((_e115213115266_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd115210115261_))))
                                         (let ((_lp-tl115215115271_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e115213115266_)))
                                               (_lp-hd115214115269_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e115213115266_))))
                                           (let ((__tmp125773
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd115214115269_
                                                          _bind115216115263_))))
                                             (declare (not safe))
                                             (_loop115212115258_
                                              _lp-tl115215115271_
                                              __tmp125773))))
                                       (let ((_bind115217115274_
                                              (reverse _bind115216115263_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl115208115250_))
                                             (let ((_e115218115277_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl115208115250_))))
                                               (let ((_tl115220115282_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e115218115277_)))
                                                     (_hd115219115280_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e115218115277_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl115220115282_))
                                                     (let ((_L115285_
                                                            _hd115219115280_)
                                                           (_L115286_
                                                            _bind115217115274_)
                                                           (_L115287_
                                                            _hd115204115240_))
                                                       (if (let ((__tmp125774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp125775
                                 (lambda (_g115308115311_ _g115309115313_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g115308115311_ _g115309115313_)))))
                            (declare (not safe))
                            (foldr1 __tmp125775 '() _L115286_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp125774))
                   (___kont125328125329_ _L115285_ _L115286_ _L115287_)
                   (___kont125332125333_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont125332125333_))))
                                             (___kont125332125333_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop115212115258_ _target115209115253_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx125326125327_))
                    (let ((_e115203115237_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx125326125327_))))
                      (let ((_tl115205115242_
                             (let ()
                               (declare (not safe))
                               (##cdr _e115203115237_)))
                            (_hd115204115240_
                             (let ()
                               (declare (not safe))
                               (##car _e115203115237_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl115205115242_))
                            (let ((_e115206115245_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl115205115242_))))
                              (let ((_tl115208115250_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e115206115245_)))
                                    (_hd115207115248_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e115206115245_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd115207115248_))
                                    (let ((___splice125330125331_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd115207115248_
                                              '0))))
                                      (let ((_tl115211115255_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice125330125331_
                                                '1)))
                                            (_target115209115253_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice125330125331_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl115211115255_))
                                            (___match125353125354_
                                             _e115203115237_
                                             _hd115204115240_
                                             _tl115205115242_
                                             _e115206115245_
                                             _hd115207115248_
                                             _tl115208115250_
                                             ___splice125330125331_
                                             _target115209115253_
                                             _tl115211115255_)
                                            (___kont125332125333_))))
                                    (___kont125332125333_))))
                            (___kont125332125333_))))
                    (___kont125332125333_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind115110_)
        (let* ((___stx125356125357_ _bind115110_)
               (_g115113115130_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125356125357_)))))
          (let ((___kont125358125359_
                 (lambda (_L115166_ _L115167_)
                   (if (let () (declare (not safe)) (gx#identifier? _L115167_))
                       (let ((_$e115183_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L115166_))))
                         (if _$e115183_
                             _$e115183_
                             (let ((_$e115186_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L115166_))))
                               (if _$e115186_
                                   _$e115186_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L115166_))))))
                       '#f)))
                (___kont125360125361_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx125356125357_))
                (let ((_e115117115142_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx125356125357_))))
                  (let ((_tl115119115147_
                         (let () (declare (not safe)) (##cdr _e115117115142_)))
                        (_hd115118115145_
                         (let ()
                           (declare (not safe))
                           (##car _e115117115142_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd115118115145_))
                        (let ((_e115120115150_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd115118115145_))))
                          (let ((_tl115122115155_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115120115150_)))
                                (_hd115121115153_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115120115150_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl115122115155_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl115119115147_))
                                    (let ((_e115123115158_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl115119115147_))))
                                      (let ((_tl115125115163_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e115123115158_)))
                                            (_hd115124115161_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e115123115158_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl115125115163_))
                                            (___kont125358125359_
                                             _hd115124115161_
                                             _hd115121115153_)
                                            (___kont125360125361_))))
                                    (___kont125360125361_))
                                (___kont125360125361_))))
                        (___kont125360125361_))))
                (___kont125360125361_))))))))
