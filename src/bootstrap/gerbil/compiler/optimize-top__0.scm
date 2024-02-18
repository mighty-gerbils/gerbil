(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1708280336)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl243418_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp249578 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl243418_ __tmp249578))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243418_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243418_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243418_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243418_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl243418_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx243401_ . _args243403_)
        (let ((__tmp249580
               (lambda ()
                 (declare (not safe))
                 (if (null? _args243403_)
                     (gxc#compile-e__0 _stx243401_)
                     (let ((_arg1243408_ (car _args243403_))
                           (_rest243410_ (cdr _args243403_)))
                       (if (null? _rest243410_)
                           (gxc#compile-e__1 _stx243401_ _arg1243408_)
                           (let ((_arg2243413_ (car _rest243410_))
                                 (_rest243415_ (cdr _rest243410_)))
                             (if (null? _rest243415_)
                                 (gxc#compile-e__2
                                  _stx243401_
                                  _arg1243408_
                                  _arg2243413_)
                                 (apply gxc#compile-e
                                        _stx243401_
                                        _arg1243408_
                                        _arg2243413_
                                        _rest243415_))))))))
              (__tmp249579 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp249580
           gxc#current-compile-methods
           __tmp249579))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl243398_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp249581 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl243398_ __tmp249581))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243398_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243398_ '%#call gxc#basic-expression-type-call%))
           _tbl243398_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx243381_ . _args243383_)
        (let ((__tmp249583
               (lambda ()
                 (declare (not safe))
                 (if (null? _args243383_)
                     (gxc#compile-e__0 _stx243381_)
                     (let ((_arg1243388_ (car _args243383_))
                           (_rest243390_ (cdr _args243383_)))
                       (if (null? _rest243390_)
                           (gxc#compile-e__1 _stx243381_ _arg1243388_)
                           (let ((_arg2243393_ (car _rest243390_))
                                 (_rest243395_ (cdr _rest243390_)))
                             (if (null? _rest243395_)
                                 (gxc#compile-e__2
                                  _stx243381_
                                  _arg1243388_
                                  _arg2243393_)
                                 (apply gxc#compile-e
                                        _stx243381_
                                        _arg1243388_
                                        _arg2243393_
                                        _rest243395_))))))))
              (__tmp249582 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp249583
           gxc#current-compile-methods
           __tmp249582))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl243378_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp249584 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl243378_ __tmp249584))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243378_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243378_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243378_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243378_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243378_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243378_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243378_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243378_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243378_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243378_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243378_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243378_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243378_ '%#set! gxc#collect-body-setq%))
           _tbl243378_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx243361_ . _args243363_)
        (let ((__tmp249586
               (lambda ()
                 (declare (not safe))
                 (if (null? _args243363_)
                     (gxc#compile-e__0 _stx243361_)
                     (let ((_arg1243368_ (car _args243363_))
                           (_rest243370_ (cdr _args243363_)))
                       (if (null? _rest243370_)
                           (gxc#compile-e__1 _stx243361_ _arg1243368_)
                           (let ((_arg2243373_ (car _rest243370_))
                                 (_rest243375_ (cdr _rest243370_)))
                             (if (null? _rest243375_)
                                 (gxc#compile-e__2
                                  _stx243361_
                                  _arg1243368_
                                  _arg2243373_)
                                 (apply gxc#compile-e
                                        _stx243361_
                                        _arg1243368_
                                        _arg2243373_
                                        _rest243375_))))))))
              (__tmp249585 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp249586
           gxc#current-compile-methods
           __tmp249585))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl243358_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp249587 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl243358_ __tmp249587))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243358_ '%#begin gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243358_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243358_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243358_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243358_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243358_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243358_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243358_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl243358_ '%#ref gxc#basic-expression-type-ref%))
           _tbl243358_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx243341_ . _args243343_)
        (let ((__tmp249589
               (lambda ()
                 (declare (not safe))
                 (if (null? _args243343_)
                     (gxc#compile-e__0 _stx243341_)
                     (let ((_arg1243348_ (car _args243343_))
                           (_rest243350_ (cdr _args243343_)))
                       (if (null? _rest243350_)
                           (gxc#compile-e__1 _stx243341_ _arg1243348_)
                           (let ((_arg2243353_ (car _rest243350_))
                                 (_rest243355_ (cdr _rest243350_)))
                             (if (null? _rest243355_)
                                 (gxc#compile-e__2
                                  _stx243341_
                                  _arg1243348_
                                  _arg2243353_)
                                 (apply gxc#compile-e
                                        _stx243341_
                                        _arg1243348_
                                        _arg2243353_
                                        _rest243355_))))))))
              (__tmp249588 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp249589
           gxc#current-compile-methods
           __tmp249588))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl243338_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp249590 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl243338_ __tmp249590))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243338_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243338_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243338_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl243338_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl243338_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx243321_ . _args243323_)
        (let ((__tmp249592
               (lambda ()
                 (declare (not safe))
                 (if (null? _args243323_)
                     (gxc#compile-e__0 _stx243321_)
                     (let ((_arg1243328_ (car _args243323_))
                           (_rest243330_ (cdr _args243323_)))
                       (if (null? _rest243330_)
                           (gxc#compile-e__1 _stx243321_ _arg1243328_)
                           (let ((_arg2243333_ (car _rest243330_))
                                 (_rest243335_ (cdr _rest243330_)))
                             (if (null? _rest243335_)
                                 (gxc#compile-e__2
                                  _stx243321_
                                  _arg1243328_
                                  _arg2243333_)
                                 (apply gxc#compile-e
                                        _stx243321_
                                        _arg1243328_
                                        _arg2243333_
                                        _rest243335_))))))))
              (__tmp249591 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp249592
           gxc#current-compile-methods
           __tmp249591))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx243224_)
        (let* ((___stx247498247499_ _stx243224_)
               (_g243227243247_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx247498247499_)))))
          (let ((___kont247500247501_
                 (lambda (_L243291_ _L243292_)
                   (let ((_sym243310_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L243292_))))
                     (if (let ((__tmp249593 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp249593 _sym243310_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym243310_))
                         (let ((_type243311243313_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L243291_))))
                           (if _type243311243313_
                               (let ((_type243316_ _type243311243313_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym243310_
                                  _type243316_))
                               '#f))))))
                (___kont247502247503_ (lambda () '#!void)))
            (let ((___match247531247532_
                   (lambda (_e243233243259_
                            _hd243232243262_
                            _tl243231243264_
                            _e243236243267_
                            _hd243235243270_
                            _tl243234243272_
                            _e243239243275_
                            _hd243238243278_
                            _tl243237243280_
                            _e243242243283_
                            _hd243241243286_
                            _tl243240243288_)
                     (let ((_L243291_ _hd243241243286_)
                           (_L243292_ _hd243238243278_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L243292_))
                           (___kont247500247501_ _L243291_ _L243292_)
                           (___kont247502247503_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx247498247499_))
                  (let ((_e243233243259_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx247498247499_))))
                    (let ((_tl243231243264_
                           (let ()
                             (declare (not safe))
                             (##cdr _e243233243259_)))
                          (_hd243232243262_
                           (let ()
                             (declare (not safe))
                             (##car _e243233243259_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl243231243264_))
                          (let ((_e243236243267_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl243231243264_))))
                            (let ((_tl243234243272_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e243236243267_)))
                                  (_hd243235243270_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e243236243267_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd243235243270_))
                                  (let ((_e243239243275_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd243235243270_))))
                                    (let ((_tl243237243280_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e243239243275_)))
                                          (_hd243238243278_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e243239243275_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl243237243280_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl243234243272_))
                                              (let ((_e243242243283_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl243234243272_))))
                                                (let ((_tl243240243288_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e243242243283_)))
                                                      (_hd243241243286_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e243242243283_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243240243288_))
                                                      (___match247531247532_
                                                       _e243233243259_
                                                       _hd243232243262_
                                                       _tl243231243264_
                                                       _e243236243267_
                                                       _hd243235243270_
                                                       _tl243234243272_
                                                       _e243239243275_
                                                       _hd243238243278_
                                                       _tl243237243280_
                                                       _e243242243283_
                                                       _hd243241243286_
                                                       _tl243240243288_)
                                                      (___kont247502247503_))))
                                              (___kont247502247503_))
                                          (___kont247502247503_))))
                                  (___kont247502247503_))))
                          (___kont247502247503_))))
                  (___kont247502247503_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx243080_)
        (let* ((___stx247534247535_ _stx243080_)
               (_g243083243114_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx247534247535_)))))
          (let ((___kont247536247537_
                 (lambda (_L243196_ _L243197_)
                   (let ((_sym243213_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L243197_))))
                     (if (let ((__tmp249594 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp249594 _sym243213_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym243213_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym243213_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym243213_))
                             (let ((_type243214243216_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L243196_))))
                               (if _type243214243216_
                                   (let ((_type243219_ _type243214243216_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym243213_
                                      _type243219_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L243196_)))))
                (___kont247538247539_
                 (lambda (_L243143_ _L243144_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L243143_)))))
            (let ((___match247567247568_
                   (lambda (_e243089243164_
                            _hd243088243167_
                            _tl243087243169_
                            _e243092243172_
                            _hd243091243175_
                            _tl243090243177_
                            _e243095243180_
                            _hd243094243183_
                            _tl243093243185_
                            _e243098243188_
                            _hd243097243191_
                            _tl243096243193_)
                     (let ((_L243196_ _hd243097243191_)
                           (_L243197_ _hd243094243183_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L243197_))
                           (___kont247536247537_ _L243196_ _L243197_)
                           (___kont247538247539_
                            _hd243097243191_
                            _hd243091243175_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx247534247535_))
                  (let ((_e243089243164_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx247534247535_))))
                    (let ((_tl243087243169_
                           (let ()
                             (declare (not safe))
                             (##cdr _e243089243164_)))
                          (_hd243088243167_
                           (let ()
                             (declare (not safe))
                             (##car _e243089243164_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl243087243169_))
                          (let ((_e243092243172_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl243087243169_))))
                            (let ((_tl243090243177_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e243092243172_)))
                                  (_hd243091243175_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e243092243172_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd243091243175_))
                                  (let ((_e243095243180_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd243091243175_))))
                                    (let ((_tl243093243185_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e243095243180_)))
                                          (_hd243094243183_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e243095243180_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl243093243185_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl243090243177_))
                                              (let ((_e243098243188_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl243090243177_))))
                                                (let ((_tl243096243193_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e243098243188_)))
                                                      (_hd243097243191_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e243098243188_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243096243193_))
                                                      (___match247567247568_
                                                       _e243089243164_
                                                       _hd243088243167_
                                                       _tl243087243169_
                                                       _e243092243172_
                                                       _hd243091243175_
                                                       _tl243090243177_
                                                       _e243095243180_
                                                       _hd243094243183_
                                                       _tl243093243185_
                                                       _e243098243188_
                                                       _hd243097243191_
                                                       _tl243096243193_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g243083243114_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g243083243114_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl243090243177_))
                                              (let ((_e243109243135_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl243090243177_))))
                                                (let ((_tl243107243140_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e243109243135_)))
                                                      (_hd243108243138_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e243109243135_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243107243140_))
                                                      (___kont247538247539_
                                                       _hd243108243138_
                                                       _hd243091243175_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g243083243114_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g243083243114_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243090243177_))
                                      (let ((_e243109243135_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243090243177_))))
                                        (let ((_tl243107243140_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243109243135_)))
                                              (_hd243108243138_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243109243135_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243107243140_))
                                              (___kont247538247539_
                                               _hd243108243138_
                                               _hd243091243175_)
                                              (let ()
                                                (declare (not safe))
                                                (_g243083243114_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243083243114_))))))
                          (let () (declare (not safe)) (_g243083243114_)))))
                  (let () (declare (not safe)) (_g243083243114_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx242865_)
        (letrec ((_collect-e242867_
                  (lambda (_hd243024_ _expr243025_)
                    (let* ((___stx247590247591_ _hd243024_)
                           (_g243028243038_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx247590247591_)))))
                      (let ((___kont247592247593_
                             (lambda (_L243058_)
                               (let ((_sym243069_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L243058_))))
                                 (if (let ((__tmp249595
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp249595 _sym243069_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym243069_))
                                     (let ((_type243070243072_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr243025_))))
                                       (if _type243070243072_
                                           (let ((_type243075_
                                                  _type243070243072_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym243069_
                                              _type243075_
                                              '#t))
                                           '#f))))))
                            (___kont247594247595_ (lambda () '#!void)))
                        (let ((___match247603247604_
                               (lambda (_e243033243050_
                                        _hd243032243053_
                                        _tl243031243055_)
                                 (let ((_L243058_ _hd243032243053_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L243058_))
                                       (___kont247592247593_ _L243058_)
                                       (___kont247594247595_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx247590247591_))
                              (let ((_e243033243050_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx247590247591_))))
                                (let ((_tl243031243055_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243033243050_)))
                                      (_hd243032243053_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243033243050_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl243031243055_))
                                      (___match247603247604_
                                       _e243033243050_
                                       _hd243032243053_
                                       _tl243031243055_)
                                      (___kont247594247595_))))
                              (___kont247594247595_))))))))
          (let* ((_g242869242904_
                  (lambda (_g242870242901_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g242870242901_))))
                 (_g242868243021_
                  (lambda (_g242870242907_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g242870242907_))
                        (let ((_e242876242909_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g242870242907_))))
                          (let ((_hd242875242912_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e242876242909_)))
                                (_tl242874242914_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e242876242909_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl242874242914_))
                                (let ((_e242879242917_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl242874242914_))))
                                  (let ((_hd242878242920_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e242879242917_)))
                                        (_tl242877242922_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e242879242917_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd242878242920_))
                                        (let ((_g249596_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd242878242920_
                                                  '0))))
                                          (begin
                                            (let ((_g249597_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g249596_)
                                                         (##vector-length
                                                          _g249596_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g249597_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g249597_)))
                                            (let ((_target242880242925_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g249596_
                                                      0)))
                                                  (_tl242882242927_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g249596_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242882242927_))
                                                  (letrec ((_loop242883242930_
                                                            (lambda (_hd242881242933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr242887242935_
                             _hd242888242937_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242881242933_))
                          (let ((_e242884242940_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242881242933_))))
                            (let ((_lp-hd242885242943_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242884242940_)))
                                  (_lp-tl242886242945_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242884242940_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd242885242943_))
                                  (let ((_e242893242948_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd242885242943_))))
                                    (let ((_hd242892242951_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242893242948_)))
                                          (_tl242891242953_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242893242948_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242891242953_))
                                          (let ((_e242896242956_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242891242953_))))
                                            (let ((_hd242895242959_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242896242956_)))
                                                  (_tl242894242961_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242896242956_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242894242961_))
                                                  (let ((__tmp249602
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd242895242959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr242887242935_)))
                (__tmp249601
                 (let ()
                   (declare (not safe))
                   (cons _hd242892242951_ _hd242888242937_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop242883242930_
                                                     _lp-tl242886242945_
                                                     __tmp249602
                                                     __tmp249601))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g242869242904_
                                                     _g242870242907_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g242869242904_
                                             _g242870242907_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g242869242904_ _g242870242907_)))))
                          (let ((_expr242889242964_
                                 (reverse _expr242887242935_))
                                (_hd242890242966_ (reverse _hd242888242937_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl242877242922_))
                                (let ((_e242899242969_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl242877242922_))))
                                  (let ((_hd242898242972_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e242899242969_)))
                                        (_tl242897242974_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e242899242969_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl242897242974_))
                                        ((lambda (_L242977_
                                                  _L242978_
                                                  _L242979_)
                                           (for-each
                                            _collect-e242867_
                                            (let ((__tmp249598
                                                   (lambda (_g242999243002_
                                                            _g243000243004_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g242999243002_
                                                             _g243000243004_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp249598
                                                      '()
                                                      _L242979_))
                                            (let ((__tmp249599
                                                   (lambda (_g243006243009_
                                                            _g243007243011_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g243006243009_
                                                             _g243007243011_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp249599
                                                      '()
                                                      _L242978_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp249600
                                                   (lambda (_g243013243016_
                                                            _g243014243018_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g243013243016_
                                                             _g243014243018_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp249600
                                                      '()
                                                      _L242978_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L242977_)))
                                         _hd242898242972_
                                         _expr242889242964_
                                         _hd242890242966_)
                                        (let ()
                                          (declare (not safe))
                                          (_g242869242904_ _g242870242907_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g242869242904_ _g242870242907_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop242883242930_
                                                       _target242880242925_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g242869242904_
                                                     _g242870242907_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g242869242904_ _g242870242907_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g242869242904_ _g242870242907_)))))
                        (let ()
                          (declare (not safe))
                          (_g242869242904_ _g242870242907_))))))
            (declare (not safe))
            (_g242868243021_ _stx242865_)))))
    (define gxc#collect-type-call%
      (lambda (_stx242357_)
        (let* ((___stx247606247607_ _stx242357_)
               (_g242361242476_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx247606247607_)))))
          (let ((___kont247608247609_
                 (lambda (_L242815_ _L242816_ _L242817_ _L242818_ _L242819_)
                   (let ((__tmp249606
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L242818_)))
                         (__tmp249605
                          (let () (declare (not safe)) (gx#stx-e _L242817_)))
                         (__tmp249604
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L242816_)))
                         (__tmp249603
                          (let () (declare (not safe)) (gx#stx-e _L242815_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp249606
                      __tmp249605
                      __tmp249604
                      __tmp249603))))
                (___kont247610247611_
                 (lambda (_L242643_ _L242644_ _L242645_ _L242646_)
                   (let ((__tmp249609
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L242645_)))
                         (__tmp249608
                          (let () (declare (not safe)) (gx#stx-e _L242644_)))
                         (__tmp249607
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L242643_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp249609
                      __tmp249608
                      __tmp249607
                      '#f))))
                (___kont247612247613_
                 (lambda (_L242513_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp249610
                           (lambda (_g242526242529_ _g242527242531_)
                             (let ()
                               (declare (not safe))
                               (cons _g242526242529_ _g242527242531_)))))
                      (declare (not safe))
                      (foldr1 __tmp249610 '() _L242513_))))))
            (let* ((___match247863247864_
                    (lambda (_e242462242481_
                             _hd242461242484_
                             _tl242460242486_
                             ___splice247614247615_
                             _target242463242489_
                             _tl242465242491_)
                      (letrec ((_loop242466242494_
                                (lambda (_hd242464242497_ _expr242470242499_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd242464242497_))
                                      (let ((_e242467242502_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd242464242497_))))
                                        (let ((_lp-tl242469242507_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242467242502_)))
                                              (_lp-hd242468242505_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242467242502_))))
                                          (let ((__tmp249611
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd242468242505_
                                                         _expr242470242499_))))
                                            (declare (not safe))
                                            (_loop242466242494_
                                             _lp-tl242469242507_
                                             __tmp249611))))
                                      (let ((_expr242471242510_
                                             (reverse _expr242470242499_)))
                                        (___kont247612247613_
                                         _expr242471242510_))))))
                        (let ()
                          (declare (not safe))
                          (_loop242466242494_ _target242463242489_ '())))))
                   (___match247743247744_
                    (lambda (_e242370242687_
                             _hd242369242690_
                             _tl242368242692_
                             _e242373242695_
                             _hd242372242698_
                             _tl242371242700_
                             _e242376242703_
                             _hd242375242706_
                             _tl242374242708_
                             _e242379242711_
                             _hd242378242714_
                             _tl242377242716_
                             _e242382242719_
                             _hd242381242722_
                             _tl242380242724_
                             _e242385242727_
                             _hd242384242730_
                             _tl242383242732_
                             _e242388242735_
                             _hd242387242738_
                             _tl242386242740_
                             _e242391242743_
                             _hd242390242746_
                             _tl242389242748_
                             _e242394242751_
                             _hd242393242754_
                             _tl242392242756_
                             _e242397242759_
                             _hd242396242762_
                             _tl242395242764_
                             _e242400242767_
                             _hd242399242770_
                             _tl242398242772_
                             _e242403242775_
                             _hd242402242778_
                             _tl242401242780_
                             _e242406242783_
                             _hd242405242786_
                             _tl242404242788_
                             _e242409242791_
                             _hd242408242794_
                             _tl242407242796_
                             _e242412242799_
                             _hd242411242802_
                             _tl242410242804_
                             _e242415242807_
                             _hd242414242810_
                             _tl242413242812_)
                      (let ((_L242815_ _hd242414242810_)
                            (_L242816_ _hd242405242786_)
                            (_L242817_ _hd242396242762_)
                            (_L242818_ _hd242387242738_)
                            (_L242819_ _hd242378242714_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L242819_
                               'bind-method!))
                            (___kont247608247609_
                             _L242815_
                             _L242816_
                             _L242817_
                             _L242818_
                             _L242819_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl242368242692_))
                                (let ((___splice247614247615_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl242368242692_
                                          '0))))
                                  (let ((_tl242465242491_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice247614247615_
                                            '1)))
                                        (_target242463242489_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice247614247615_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl242465242491_))
                                        (___match247863247864_
                                         _e242370242687_
                                         _hd242369242690_
                                         _tl242368242692_
                                         ___splice247614247615_
                                         _target242463242489_
                                         _tl242465242491_)
                                        (let ()
                                          (declare (not safe))
                                          (_g242361242476_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g242361242476_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx247606247607_))
                  (let ((_e242370242687_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx247606247607_))))
                    (let ((_tl242368242692_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242370242687_)))
                          (_hd242369242690_
                           (let ()
                             (declare (not safe))
                             (##car _e242370242687_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242368242692_))
                          (let ((_e242373242695_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242368242692_))))
                            (let ((_tl242371242700_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242373242695_)))
                                  (_hd242372242698_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242373242695_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd242372242698_))
                                  (let ((_e242376242703_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd242372242698_))))
                                    (let ((_tl242374242708_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242376242703_)))
                                          (_hd242375242706_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242376242703_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd242375242706_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd242375242706_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242374242708_))
                                                  (let ((_e242379242711_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242374242708_))))
                                                    (let ((_tl242377242716_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242379242711_)))
                                                          (_hd242378242714_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242379242711_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl242377242716_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl242371242700_))
                      (let ((_e242382242719_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl242371242700_))))
                        (let ((_tl242380242724_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242382242719_)))
                              (_hd242381242722_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242382242719_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd242381242722_))
                              (let ((_e242385242727_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd242381242722_))))
                                (let ((_tl242383242732_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242385242727_)))
                                      (_hd242384242730_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242385242727_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd242384242730_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd242384242730_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242383242732_))
                                              (let ((_e242388242735_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242383242732_))))
                                                (let ((_tl242386242740_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242388242735_)))
                                                      (_hd242387242738_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242388242735_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242386242740_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242380242724_))
                                                          (let ((_e242391242743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242380242724_))))
                    (let ((_tl242389242748_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242391242743_)))
                          (_hd242390242746_
                           (let ()
                             (declare (not safe))
                             (##car _e242391242743_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242390242746_))
                          (let ((_e242394242751_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242390242746_))))
                            (let ((_tl242392242756_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242394242751_)))
                                  (_hd242393242754_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242394242751_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242393242754_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd242393242754_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242392242756_))
                                          (let ((_e242397242759_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242392242756_))))
                                            (let ((_tl242395242764_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242397242759_)))
                                                  (_hd242396242762_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242397242759_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242395242764_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl242389242748_))
                                                      (let ((_e242400242767_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl242389242748_))))
                (let ((_tl242398242772_
                       (let () (declare (not safe)) (##cdr _e242400242767_)))
                      (_hd242399242770_
                       (let () (declare (not safe)) (##car _e242400242767_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd242399242770_))
                      (let ((_e242403242775_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd242399242770_))))
                        (let ((_tl242401242780_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242403242775_)))
                              (_hd242402242778_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242403242775_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd242402242778_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd242402242778_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242401242780_))
                                      (let ((_e242406242783_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242401242780_))))
                                        (let ((_tl242404242788_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242406242783_)))
                                              (_hd242405242786_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242406242783_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242404242788_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242398242772_))
                                                  (let ((_e242409242791_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242398242772_))))
                                                    (let ((_tl242407242796_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242409242791_)))
                                                          (_hd242408242794_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242409242791_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd242408242794_))
                                                          (let ((_e242412242799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd242408242794_))))
                    (let ((_tl242410242804_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242412242799_)))
                          (_hd242411242802_
                           (let ()
                             (declare (not safe))
                             (##car _e242412242799_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd242411242802_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd242411242802_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl242410242804_))
                                  (let ((_e242415242807_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl242410242804_))))
                                    (let ((_tl242413242812_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242415242807_)))
                                          (_hd242414242810_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242415242807_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242413242812_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242407242796_))
                                              (___match247743247744_
                                               _e242370242687_
                                               _hd242369242690_
                                               _tl242368242692_
                                               _e242373242695_
                                               _hd242372242698_
                                               _tl242371242700_
                                               _e242376242703_
                                               _hd242375242706_
                                               _tl242374242708_
                                               _e242379242711_
                                               _hd242378242714_
                                               _tl242377242716_
                                               _e242382242719_
                                               _hd242381242722_
                                               _tl242380242724_
                                               _e242385242727_
                                               _hd242384242730_
                                               _tl242383242732_
                                               _e242388242735_
                                               _hd242387242738_
                                               _tl242386242740_
                                               _e242391242743_
                                               _hd242390242746_
                                               _tl242389242748_
                                               _e242394242751_
                                               _hd242393242754_
                                               _tl242392242756_
                                               _e242397242759_
                                               _hd242396242762_
                                               _tl242395242764_
                                               _e242400242767_
                                               _hd242399242770_
                                               _tl242398242772_
                                               _e242403242775_
                                               _hd242402242778_
                                               _tl242401242780_
                                               _e242406242783_
                                               _hd242405242786_
                                               _tl242404242788_
                                               _e242409242791_
                                               _hd242408242794_
                                               _tl242407242796_
                                               _e242412242799_
                                               _hd242411242802_
                                               _tl242410242804_
                                               _e242415242807_
                                               _hd242414242810_
                                               _tl242413242812_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl242368242692_))
                                                  (let ((___splice247614247615_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl242368242692_
                                                            '0))))
                                                    (let ((_tl242465242491_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice247614247615_
                                                              '1)))
                                                          (_target242463242489_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice247614247615_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl242465242491_))
                                                          (___match247863247864_
                                                           _e242370242687_
                                                           _hd242369242690_
                                                           _tl242368242692_
                                                           ___splice247614247615_
                                                           _target242463242489_
                                                           _tl242465242491_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g242361242476_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g242361242476_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl242368242692_))
                                              (let ((___splice247614247615_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl242368242692_
                                                        '0))))
                                                (let ((_tl242465242491_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice247614247615_
                                                          '1)))
                                                      (_target242463242489_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice247614247615_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242465242491_))
                                                      (___match247863247864_
                                                       _e242370242687_
                                                       _hd242369242690_
                                                       _tl242368242692_
                                                       ___splice247614247615_
                                                       _target242463242489_
                                                       _tl242465242491_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g242361242476_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g242361242476_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl242368242692_))
                                      (let ((___splice247614247615_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl242368242692_
                                                '0))))
                                        (let ((_tl242465242491_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice247614247615_
                                                  '1)))
                                              (_target242463242489_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice247614247615_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242465242491_))
                                              (___match247863247864_
                                               _e242370242687_
                                               _hd242369242690_
                                               _tl242368242692_
                                               ___splice247614247615_
                                               _target242463242489_
                                               _tl242465242491_)
                                              (let ()
                                                (declare (not safe))
                                                (_g242361242476_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g242361242476_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl242368242692_))
                                  (let ((___splice247614247615_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl242368242692_
                                            '0))))
                                    (let ((_tl242465242491_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice247614247615_
                                              '1)))
                                          (_target242463242489_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice247614247615_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242465242491_))
                                          (___match247863247864_
                                           _e242370242687_
                                           _hd242369242690_
                                           _tl242368242692_
                                           ___splice247614247615_
                                           _target242463242489_
                                           _tl242465242491_)
                                          (let ()
                                            (declare (not safe))
                                            (_g242361242476_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g242361242476_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl242368242692_))
                              (let ((___splice247614247615_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl242368242692_
                                        '0))))
                                (let ((_tl242465242491_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice247614247615_
                                          '1)))
                                      (_target242463242489_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice247614247615_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242465242491_))
                                      (___match247863247864_
                                       _e242370242687_
                                       _hd242369242690_
                                       _tl242368242692_
                                       ___splice247614247615_
                                       _target242463242489_
                                       _tl242465242491_)
                                      (let ()
                                        (declare (not safe))
                                        (_g242361242476_)))))
                              (let ()
                                (declare (not safe))
                                (_g242361242476_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl242368242692_))
                      (let ((___splice247614247615_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl242368242692_ '0))))
                        (let ((_tl242465242491_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice247614247615_ '1)))
                              (_target242463242489_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice247614247615_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl242465242491_))
                              (___match247863247864_
                               _e242370242687_
                               _hd242369242690_
                               _tl242368242692_
                               ___splice247614247615_
                               _target242463242489_
                               _tl242465242491_)
                              (let ()
                                (declare (not safe))
                                (_g242361242476_)))))
                      (let () (declare (not safe)) (_g242361242476_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242398242772_))
                                                      (if (let ((__tmp249612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp249612 'bind-method!))
                  (let ((_L242643_ _hd242405242786_)
                        (_L242644_ _hd242396242762_)
                        (_L242645_ _hd242387242738_)
                        (_L242646_ _hd242378242714_))
                    (___kont247610247611_
                     _L242643_
                     _L242644_
                     _L242645_
                     _L242646_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl242368242692_))
                      (let ((___splice247614247615_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl242368242692_ '0))))
                        (let ((_tl242465242491_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice247614247615_ '1)))
                              (_target242463242489_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice247614247615_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl242465242491_))
                              (___match247863247864_
                               _e242370242687_
                               _hd242369242690_
                               _tl242368242692_
                               ___splice247614247615_
                               _target242463242489_
                               _tl242465242491_)
                              (let ()
                                (declare (not safe))
                                (_g242361242476_)))))
                      (let () (declare (not safe)) (_g242361242476_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl242368242692_))
                  (let ((___splice247614247615_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl242368242692_ '0))))
                    (let ((_tl242465242491_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice247614247615_ '1)))
                          (_target242463242489_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice247614247615_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242465242491_))
                          (___match247863247864_
                           _e242370242687_
                           _hd242369242690_
                           _tl242368242692_
                           ___splice247614247615_
                           _target242463242489_
                           _tl242465242491_)
                          (let () (declare (not safe)) (_g242361242476_)))))
                  (let () (declare (not safe)) (_g242361242476_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl242368242692_))
                                                  (let ((___splice247614247615_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl242368242692_
                                                            '0))))
                                                    (let ((_tl242465242491_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice247614247615_
                                                              '1)))
                                                          (_target242463242489_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice247614247615_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl242465242491_))
                                                          (___match247863247864_
                                                           _e242370242687_
                                                           _hd242369242690_
                                                           _tl242368242692_
                                                           ___splice247614247615_
                                                           _target242463242489_
                                                           _tl242465242491_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g242361242476_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g242361242476_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl242368242692_))
                                          (let ((___splice247614247615_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl242368242692_
                                                    '0))))
                                            (let ((_tl242465242491_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice247614247615_
                                                      '1)))
                                                  (_target242463242489_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice247614247615_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242465242491_))
                                                  (___match247863247864_
                                                   _e242370242687_
                                                   _hd242369242690_
                                                   _tl242368242692_
                                                   ___splice247614247615_
                                                   _target242463242489_
                                                   _tl242465242491_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g242361242476_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g242361242476_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl242368242692_))
                                      (let ((___splice247614247615_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl242368242692_
                                                '0))))
                                        (let ((_tl242465242491_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice247614247615_
                                                  '1)))
                                              (_target242463242489_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice247614247615_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242465242491_))
                                              (___match247863247864_
                                               _e242370242687_
                                               _hd242369242690_
                                               _tl242368242692_
                                               ___splice247614247615_
                                               _target242463242489_
                                               _tl242465242491_)
                                              (let ()
                                                (declare (not safe))
                                                (_g242361242476_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g242361242476_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl242368242692_))
                                  (let ((___splice247614247615_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl242368242692_
                                            '0))))
                                    (let ((_tl242465242491_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice247614247615_
                                              '1)))
                                          (_target242463242489_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice247614247615_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242465242491_))
                                          (___match247863247864_
                                           _e242370242687_
                                           _hd242369242690_
                                           _tl242368242692_
                                           ___splice247614247615_
                                           _target242463242489_
                                           _tl242465242491_)
                                          (let ()
                                            (declare (not safe))
                                            (_g242361242476_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g242361242476_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl242368242692_))
                          (let ((___splice247614247615_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl242368242692_
                                    '0))))
                            (let ((_tl242465242491_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice247614247615_ '1)))
                                  (_target242463242489_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice247614247615_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242465242491_))
                                  (___match247863247864_
                                   _e242370242687_
                                   _hd242369242690_
                                   _tl242368242692_
                                   ___splice247614247615_
                                   _target242463242489_
                                   _tl242465242491_)
                                  (let ()
                                    (declare (not safe))
                                    (_g242361242476_)))))
                          (let () (declare (not safe)) (_g242361242476_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl242368242692_))
                  (let ((___splice247614247615_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl242368242692_ '0))))
                    (let ((_tl242465242491_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice247614247615_ '1)))
                          (_target242463242489_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice247614247615_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242465242491_))
                          (___match247863247864_
                           _e242370242687_
                           _hd242369242690_
                           _tl242368242692_
                           ___splice247614247615_
                           _target242463242489_
                           _tl242465242491_)
                          (let () (declare (not safe)) (_g242361242476_)))))
                  (let () (declare (not safe)) (_g242361242476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl242368242692_))
                                                      (let ((___splice247614247615_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl242368242692_ '0))))
                (let ((_tl242465242491_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice247614247615_ '1)))
                      (_target242463242489_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice247614247615_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl242465242491_))
                      (___match247863247864_
                       _e242370242687_
                       _hd242369242690_
                       _tl242368242692_
                       ___splice247614247615_
                       _target242463242489_
                       _tl242465242491_)
                      (let () (declare (not safe)) (_g242361242476_)))))
              (let () (declare (not safe)) (_g242361242476_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl242368242692_))
                                              (let ((___splice247614247615_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl242368242692_
                                                        '0))))
                                                (let ((_tl242465242491_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice247614247615_
                                                          '1)))
                                                      (_target242463242489_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice247614247615_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242465242491_))
                                                      (___match247863247864_
                                                       _e242370242687_
                                                       _hd242369242690_
                                                       _tl242368242692_
                                                       ___splice247614247615_
                                                       _target242463242489_
                                                       _tl242465242491_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g242361242476_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g242361242476_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl242368242692_))
                                          (let ((___splice247614247615_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl242368242692_
                                                    '0))))
                                            (let ((_tl242465242491_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice247614247615_
                                                      '1)))
                                                  (_target242463242489_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice247614247615_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242465242491_))
                                                  (___match247863247864_
                                                   _e242370242687_
                                                   _hd242369242690_
                                                   _tl242368242692_
                                                   ___splice247614247615_
                                                   _target242463242489_
                                                   _tl242465242491_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g242361242476_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g242361242476_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl242368242692_))
                                      (let ((___splice247614247615_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl242368242692_
                                                '0))))
                                        (let ((_tl242465242491_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice247614247615_
                                                  '1)))
                                              (_target242463242489_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice247614247615_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242465242491_))
                                              (___match247863247864_
                                               _e242370242687_
                                               _hd242369242690_
                                               _tl242368242692_
                                               ___splice247614247615_
                                               _target242463242489_
                                               _tl242465242491_)
                                              (let ()
                                                (declare (not safe))
                                                (_g242361242476_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g242361242476_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl242368242692_))
                              (let ((___splice247614247615_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl242368242692_
                                        '0))))
                                (let ((_tl242465242491_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice247614247615_
                                          '1)))
                                      (_target242463242489_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice247614247615_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242465242491_))
                                      (___match247863247864_
                                       _e242370242687_
                                       _hd242369242690_
                                       _tl242368242692_
                                       ___splice247614247615_
                                       _target242463242489_
                                       _tl242465242491_)
                                      (let ()
                                        (declare (not safe))
                                        (_g242361242476_)))))
                              (let ()
                                (declare (not safe))
                                (_g242361242476_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl242368242692_))
                      (let ((___splice247614247615_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl242368242692_ '0))))
                        (let ((_tl242465242491_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice247614247615_ '1)))
                              (_target242463242489_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice247614247615_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl242465242491_))
                              (___match247863247864_
                               _e242370242687_
                               _hd242369242690_
                               _tl242368242692_
                               ___splice247614247615_
                               _target242463242489_
                               _tl242465242491_)
                              (let ()
                                (declare (not safe))
                                (_g242361242476_)))))
                      (let () (declare (not safe)) (_g242361242476_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl242368242692_))
                  (let ((___splice247614247615_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl242368242692_ '0))))
                    (let ((_tl242465242491_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice247614247615_ '1)))
                          (_target242463242489_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice247614247615_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242465242491_))
                          (___match247863247864_
                           _e242370242687_
                           _hd242369242690_
                           _tl242368242692_
                           ___splice247614247615_
                           _target242463242489_
                           _tl242465242491_)
                          (let () (declare (not safe)) (_g242361242476_)))))
                  (let () (declare (not safe)) (_g242361242476_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl242368242692_))
                                                  (let ((___splice247614247615_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl242368242692_
                                                            '0))))
                                                    (let ((_tl242465242491_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice247614247615_
                                                              '1)))
                                                          (_target242463242489_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice247614247615_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl242465242491_))
                                                          (___match247863247864_
                                                           _e242370242687_
                                                           _hd242369242690_
                                                           _tl242368242692_
                                                           ___splice247614247615_
                                                           _target242463242489_
                                                           _tl242465242491_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g242361242476_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g242361242476_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl242368242692_))
                                              (let ((___splice247614247615_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl242368242692_
                                                        '0))))
                                                (let ((_tl242465242491_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice247614247615_
                                                          '1)))
                                                      (_target242463242489_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice247614247615_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242465242491_))
                                                      (___match247863247864_
                                                       _e242370242687_
                                                       _hd242369242690_
                                                       _tl242368242692_
                                                       ___splice247614247615_
                                                       _target242463242489_
                                                       _tl242465242491_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g242361242476_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g242361242476_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl242368242692_))
                                          (let ((___splice247614247615_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl242368242692_
                                                    '0))))
                                            (let ((_tl242465242491_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice247614247615_
                                                      '1)))
                                                  (_target242463242489_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice247614247615_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242465242491_))
                                                  (___match247863247864_
                                                   _e242370242687_
                                                   _hd242369242690_
                                                   _tl242368242692_
                                                   ___splice247614247615_
                                                   _target242463242489_
                                                   _tl242465242491_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g242361242476_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g242361242476_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl242368242692_))
                                  (let ((___splice247614247615_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl242368242692_
                                            '0))))
                                    (let ((_tl242465242491_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice247614247615_
                                              '1)))
                                          (_target242463242489_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice247614247615_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242465242491_))
                                          (___match247863247864_
                                           _e242370242687_
                                           _hd242369242690_
                                           _tl242368242692_
                                           ___splice247614247615_
                                           _target242463242489_
                                           _tl242465242491_)
                                          (let ()
                                            (declare (not safe))
                                            (_g242361242476_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g242361242476_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl242368242692_))
                          (let ((___splice247614247615_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl242368242692_
                                    '0))))
                            (let ((_tl242465242491_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice247614247615_ '1)))
                                  (_target242463242489_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice247614247615_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242465242491_))
                                  (___match247863247864_
                                   _e242370242687_
                                   _hd242369242690_
                                   _tl242368242692_
                                   ___splice247614247615_
                                   _target242463242489_
                                   _tl242465242491_)
                                  (let ()
                                    (declare (not safe))
                                    (_g242361242476_)))))
                          (let () (declare (not safe)) (_g242361242476_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl242368242692_))
                      (let ((___splice247614247615_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl242368242692_ '0))))
                        (let ((_tl242465242491_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice247614247615_ '1)))
                              (_target242463242489_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice247614247615_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl242465242491_))
                              (___match247863247864_
                               _e242370242687_
                               _hd242369242690_
                               _tl242368242692_
                               ___splice247614247615_
                               _target242463242489_
                               _tl242465242491_)
                              (let ()
                                (declare (not safe))
                                (_g242361242476_)))))
                      (let () (declare (not safe)) (_g242361242476_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl242368242692_))
                                                      (let ((___splice247614247615_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl242368242692_ '0))))
                (let ((_tl242465242491_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice247614247615_ '1)))
                      (_target242463242489_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice247614247615_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl242465242491_))
                      (___match247863247864_
                       _e242370242687_
                       _hd242369242690_
                       _tl242368242692_
                       ___splice247614247615_
                       _target242463242489_
                       _tl242465242491_)
                      (let () (declare (not safe)) (_g242361242476_)))))
              (let () (declare (not safe)) (_g242361242476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl242368242692_))
                                                  (let ((___splice247614247615_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl242368242692_
                                                            '0))))
                                                    (let ((_tl242465242491_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice247614247615_
                                                              '1)))
                                                          (_target242463242489_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice247614247615_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl242465242491_))
                                                          (___match247863247864_
                                                           _e242370242687_
                                                           _hd242369242690_
                                                           _tl242368242692_
                                                           ___splice247614247615_
                                                           _target242463242489_
                                                           _tl242465242491_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g242361242476_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g242361242476_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl242368242692_))
                                              (let ((___splice247614247615_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl242368242692_
                                                        '0))))
                                                (let ((_tl242465242491_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice247614247615_
                                                          '1)))
                                                      (_target242463242489_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice247614247615_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242465242491_))
                                                      (___match247863247864_
                                                       _e242370242687_
                                                       _hd242369242690_
                                                       _tl242368242692_
                                                       ___splice247614247615_
                                                       _target242463242489_
                                                       _tl242465242491_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g242361242476_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g242361242476_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl242368242692_))
                                      (let ((___splice247614247615_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl242368242692_
                                                '0))))
                                        (let ((_tl242465242491_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice247614247615_
                                                  '1)))
                                              (_target242463242489_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice247614247615_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242465242491_))
                                              (___match247863247864_
                                               _e242370242687_
                                               _hd242369242690_
                                               _tl242368242692_
                                               ___splice247614247615_
                                               _target242463242489_
                                               _tl242465242491_)
                                              (let ()
                                                (declare (not safe))
                                                (_g242361242476_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g242361242476_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl242368242692_))
                              (let ((___splice247614247615_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl242368242692_
                                        '0))))
                                (let ((_tl242465242491_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice247614247615_
                                          '1)))
                                      (_target242463242489_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice247614247615_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242465242491_))
                                      (___match247863247864_
                                       _e242370242687_
                                       _hd242369242690_
                                       _tl242368242692_
                                       ___splice247614247615_
                                       _target242463242489_
                                       _tl242465242491_)
                                      (let ()
                                        (declare (not safe))
                                        (_g242361242476_)))))
                              (let ()
                                (declare (not safe))
                                (_g242361242476_))))))
                  (let () (declare (not safe)) (_g242361242476_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx242297_)
        (let* ((___stx247866247867_ _stx242297_)
               (_g242300242313_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx247866247867_)))))
          (let ((___kont247868247869_
                 (lambda (_L242341_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L242341_))))
                (___kont247870247871_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx247866247867_))
                (let ((_e242305242325_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx247866247867_))))
                  (let ((_tl242303242330_
                         (let () (declare (not safe)) (##cdr _e242305242325_)))
                        (_hd242304242328_
                         (let ()
                           (declare (not safe))
                           (##car _e242305242325_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl242303242330_))
                        (let ((_e242308242333_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl242303242330_))))
                          (let ((_tl242306242338_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e242308242333_)))
                                (_hd242307242336_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e242308242333_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl242306242338_))
                                (___kont247868247869_ _hd242307242336_)
                                (___kont247870247871_))))
                        (___kont247870247871_))))
                (___kont247870247871_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx242177_)
        (let* ((_g242179242196_
                (lambda (_g242180242193_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g242180242193_))))
               (_g242178242294_
                (lambda (_g242180242199_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g242180242199_))
                      (let ((_e242185242201_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g242180242199_))))
                        (let ((_hd242184242204_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242185242201_)))
                              (_tl242183242206_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242185242201_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242183242206_))
                              (let ((_e242188242209_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242183242206_))))
                                (let ((_hd242187242212_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242188242209_)))
                                      (_tl242186242214_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242188242209_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242186242214_))
                                      (let ((_e242191242217_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242186242214_))))
                                        (let ((_hd242190242220_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242191242217_)))
                                              (_tl242189242222_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242191242217_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242189242222_))
                                              ((lambda (_L242225_ _L242226_)
                                                 (let* ((___stx247888247889_
                                                         _L242226_)
                                                        (_g242242242253_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx247888247889_)))))
                                                   (let ((___kont247890247891_
                                                          (lambda (_L242273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L242274_)
                    (let ((_$e242286_
                           (let ((__tmp249613
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L242274_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp249613))))
                      (if _$e242286_
                          ((lambda (_type-e242289_)
                             (_type-e242289_ _stx242177_ _L242226_))
                           _$e242286_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L242225_))))))
                 (___kont247892247893_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L242225_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match247899247900_
                                                            (lambda (_e242248242265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd242247242268_
                             _tl242246242270_)
                      (let ((_L242273_ _tl242246242270_)
                            (_L242274_ _hd242247242268_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L242274_))
                            (___kont247890247891_ _L242273_ _L242274_)
                            (___kont247892247893_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx247888247889_))
                   (let ((_e242248242265_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx247888247889_))))
                     (let ((_tl242246242270_
                            (let ()
                              (declare (not safe))
                              (##cdr _e242248242265_)))
                           (_hd242247242268_
                            (let ()
                              (declare (not safe))
                              (##car _e242248242265_))))
                       (___match247899247900_
                        _e242248242265_
                        _hd242247242268_
                        _tl242246242270_)))
                   (___kont247892247893_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd242190242220_
                                               _hd242187242212_)
                                              (let ()
                                                (declare (not safe))
                                                (_g242179242196_
                                                 _g242180242199_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g242179242196_ _g242180242199_)))))
                              (let ()
                                (declare (not safe))
                                (_g242179242196_ _g242180242199_)))))
                      (let ()
                        (declare (not safe))
                        (_g242179242196_ _g242180242199_))))))
          (declare (not safe))
          (_g242178242294_ _stx242177_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx242021_ _ann242022_)
        (let* ((_g242024242061_
                (lambda (_g242025242058_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g242025242058_))))
               (_g242023242174_
                (lambda (_g242025242064_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g242025242064_))
                      (let ((_e242035242066_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g242025242064_))))
                        (let ((_hd242034242069_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242035242066_)))
                              (_tl242033242071_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242035242066_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242033242071_))
                              (let ((_e242038242074_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242033242071_))))
                                (let ((_hd242037242077_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242038242074_)))
                                      (_tl242036242079_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242038242074_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242036242079_))
                                      (let ((_e242041242082_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242036242079_))))
                                        (let ((_hd242040242085_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242041242082_)))
                                              (_tl242039242087_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242041242082_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242039242087_))
                                              (let ((_e242044242090_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242039242087_))))
                                                (let ((_hd242043242093_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242044242090_)))
                                                      (_tl242042242095_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242044242090_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl242042242095_))
                                                      (let ((_e242047242098_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl242042242095_))))
                (let ((_hd242046242101_
                       (let () (declare (not safe)) (##car _e242047242098_)))
                      (_tl242045242103_
                       (let () (declare (not safe)) (##cdr _e242047242098_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl242045242103_))
                      (let ((_e242050242106_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl242045242103_))))
                        (let ((_hd242049242109_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242050242106_)))
                              (_tl242048242111_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242050242106_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242048242111_))
                              (let ((_e242053242114_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242048242111_))))
                                (let ((_hd242052242117_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242053242114_)))
                                      (_tl242051242119_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242053242114_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242051242119_))
                                      (let ((_e242056242122_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242051242119_))))
                                        (let ((_hd242055242125_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242056242122_)))
                                              (_tl242054242127_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242056242122_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242054242127_))
                                              ((lambda (_L242130_
                                                        _L242131_
                                                        _L242132_
                                                        _L242133_
                                                        _L242134_
                                                        _L242135_
                                                        _L242136_)
                                                 (let ((_type-id242166_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L242136_)))
                                                       (_super242167_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L242135_)))
                                                       (_slots242168_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L242134_)))
                                                       (_ctor-method242169_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L242133_)))
                                                       (_struct?242170_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L242132_)))
                                                       (_final?242171_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L242131_)))
                                                       (_metaclass242172_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L242130_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L242130_))
                                                            '#f)))
                                                   (let ((__obj249571
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
                                                      __obj249571
                                                      _type-id242166_
                                                      _super242167_
                                                      _slots242168_
                                                      _ctor-method242169_
                                                      _struct?242170_
                                                      _final?242171_
                                                      _metaclass242172_)
                                                     __obj249571)))
                                               _hd242055242125_
                                               _hd242052242117_
                                               _hd242049242109_
                                               _hd242046242101_
                                               _hd242043242093_
                                               _hd242040242085_
                                               _hd242037242077_)
                                              (let ()
                                                (declare (not safe))
                                                (_g242024242061_
                                                 _g242025242064_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g242024242061_ _g242025242064_)))))
                              (let ()
                                (declare (not safe))
                                (_g242024242061_ _g242025242064_)))))
                      (let ()
                        (declare (not safe))
                        (_g242024242061_ _g242025242064_)))))
              (let ()
                (declare (not safe))
                (_g242024242061_ _g242025242064_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g242024242061_
                                                 _g242025242064_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g242024242061_ _g242025242064_)))))
                              (let ()
                                (declare (not safe))
                                (_g242024242061_ _g242025242064_)))))
                      (let ()
                        (declare (not safe))
                        (_g242024242061_ _g242025242064_))))))
          (declare (not safe))
          (_g242023242174_ _ann242022_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx241969_ _ann241970_)
        (let* ((_g241972241985_
                (lambda (_g241973241982_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g241973241982_))))
               (_g241971242018_
                (lambda (_g241973241988_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g241973241988_))
                      (let ((_e241977241990_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g241973241988_))))
                        (let ((_hd241976241993_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241977241990_)))
                              (_tl241975241995_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241977241990_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl241975241995_))
                              (let ((_e241980241998_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl241975241995_))))
                                (let ((_hd241979242001_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241980241998_)))
                                      (_tl241978242003_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241980241998_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl241978242003_))
                                      ((lambda (_L242006_)
                                         (let ((__tmp249614
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L242006_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp249614)))
                                       _hd241979242001_)
                                      (let ()
                                        (declare (not safe))
                                        (_g241972241985_ _g241973241988_)))))
                              (let ()
                                (declare (not safe))
                                (_g241972241985_ _g241973241988_)))))
                      (let ()
                        (declare (not safe))
                        (_g241972241985_ _g241973241988_))))))
          (declare (not safe))
          (_g241971242018_ _ann241970_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx241917_ _ann241918_)
        (let* ((_g241920241933_
                (lambda (_g241921241930_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g241921241930_))))
               (_g241919241966_
                (lambda (_g241921241936_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g241921241936_))
                      (let ((_e241925241938_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g241921241936_))))
                        (let ((_hd241924241941_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241925241938_)))
                              (_tl241923241943_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241925241938_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl241923241943_))
                              (let ((_e241928241946_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl241923241943_))))
                                (let ((_hd241927241949_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241928241946_)))
                                      (_tl241926241951_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241928241946_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl241926241951_))
                                      ((lambda (_L241954_)
                                         (let ((__tmp249615
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L241954_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp249615)))
                                       _hd241927241949_)
                                      (let ()
                                        (declare (not safe))
                                        (_g241920241933_ _g241921241936_)))))
                              (let ()
                                (declare (not safe))
                                (_g241920241933_ _g241921241936_)))))
                      (let ()
                        (declare (not safe))
                        (_g241920241933_ _g241921241936_))))))
          (declare (not safe))
          (_g241919241966_ _ann241918_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx241833_ _ann241834_)
        (let* ((_g241836241857_
                (lambda (_g241837241854_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g241837241854_))))
               (_g241835241914_
                (lambda (_g241837241860_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g241837241860_))
                      (let ((_e241843241862_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g241837241860_))))
                        (let ((_hd241842241865_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241843241862_)))
                              (_tl241841241867_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241843241862_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl241841241867_))
                              (let ((_e241846241870_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl241841241867_))))
                                (let ((_hd241845241873_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241846241870_)))
                                      (_tl241844241875_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241846241870_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl241844241875_))
                                      (let ((_e241849241878_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl241844241875_))))
                                        (let ((_hd241848241881_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241849241878_)))
                                              (_tl241847241883_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241849241878_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl241847241883_))
                                              (let ((_e241852241886_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl241847241883_))))
                                                (let ((_hd241851241889_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e241852241886_)))
                                                      (_tl241850241891_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e241852241886_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl241850241891_))
                                                      ((lambda (_L241894_
                                                                _L241895_
                                                                _L241896_)
                                                         (let ((__tmp249618
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L241896_)))
                       (__tmp249617
                        (let () (declare (not safe)) (gx#stx-e _L241895_)))
                       (__tmp249616
                        (let () (declare (not safe)) (gx#stx-e _L241894_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp249618
                    __tmp249617
                    __tmp249616)))
               _hd241851241889_
               _hd241848241881_
               _hd241845241873_)
              (let ()
                (declare (not safe))
                (_g241836241857_ _g241837241860_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g241836241857_
                                                 _g241837241860_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g241836241857_ _g241837241860_)))))
                              (let ()
                                (declare (not safe))
                                (_g241836241857_ _g241837241860_)))))
                      (let ()
                        (declare (not safe))
                        (_g241836241857_ _g241837241860_))))))
          (declare (not safe))
          (_g241835241914_ _ann241834_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx241749_ _ann241750_)
        (let* ((_g241752241773_
                (lambda (_g241753241770_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g241753241770_))))
               (_g241751241830_
                (lambda (_g241753241776_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g241753241776_))
                      (let ((_e241759241778_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g241753241776_))))
                        (let ((_hd241758241781_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241759241778_)))
                              (_tl241757241783_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241759241778_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl241757241783_))
                              (let ((_e241762241786_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl241757241783_))))
                                (let ((_hd241761241789_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241762241786_)))
                                      (_tl241760241791_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241762241786_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl241760241791_))
                                      (let ((_e241765241794_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl241760241791_))))
                                        (let ((_hd241764241797_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241765241794_)))
                                              (_tl241763241799_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241765241794_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl241763241799_))
                                              (let ((_e241768241802_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl241763241799_))))
                                                (let ((_hd241767241805_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e241768241802_)))
                                                      (_tl241766241807_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e241768241802_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl241766241807_))
                                                      ((lambda (_L241810_
                                                                _L241811_
                                                                _L241812_)
                                                         (let ((__tmp249621
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L241812_)))
                       (__tmp249620
                        (let () (declare (not safe)) (gx#stx-e _L241811_)))
                       (__tmp249619
                        (let () (declare (not safe)) (gx#stx-e _L241810_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp249621
                    __tmp249620
                    __tmp249619)))
               _hd241767241805_
               _hd241764241797_
               _hd241761241789_)
              (let ()
                (declare (not safe))
                (_g241752241773_ _g241753241776_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g241752241773_
                                                 _g241753241776_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g241752241773_ _g241753241776_)))))
                              (let ()
                                (declare (not safe))
                                (_g241752241773_ _g241753241776_)))))
                      (let ()
                        (declare (not safe))
                        (_g241752241773_ _g241753241776_))))))
          (declare (not safe))
          (_g241751241830_ _ann241750_))))
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
      (lambda (_stx240869_)
        (let* ((___stx247902247903_ _stx240869_)
               (_g240875241071_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx247902247903_)))))
          (let ((___kont247904247905_
                 (lambda (_L241737_)
                   (let ((__obj249572
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj249572
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L241737_))
                      '#f)
                     __obj249572)))
                (___kont247906247907_
                 (lambda (_L241664_
                          _L241665_
                          _L241666_
                          _L241667_
                          _L241668_
                          _L241669_)
                   (let* ((_tab241719_
                           (let () (declare (not safe)) (gx#stx-e _L241666_)))
                          (_keys241721_
                           (if _tab241719_
                               (let ((__tmp249622 (vector->list _tab241719_)))
                                 (declare (not safe))
                                 (filter values __tmp249622))
                               '#f)))
                     (let ((__tmp249623
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L241665_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys241721_
                        __tmp249623)))))
                (___kont247908247909_
                 (lambda (_L241397_
                          _L241398_
                          _L241399_
                          _L241400_
                          _L241401_
                          _L241402_
                          _L241403_
                          _L241404_
                          _L241405_
                          _L241406_)
                   (let ((__tmp249625
                          (map gx#stx-e
                               (let ((__tmp249626
                                      (lambda (_g241499241502_ _g241500241504_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g241499241502_
                                                _g241500241504_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp249626 '() _L241399_))))
                         (__tmp249624
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L241403_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp249625
                      __tmp249624))))
                (___kont247912247913_
                 (lambda (_L241107_)
                   (let ((__obj249573
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj249573
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L241107_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L241107_)))
                     __obj249573)))
                (___kont247914247915_
                 (lambda (_L241084_)
                   (let ((__obj249574
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj249574
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L241084_))
                      '#f)
                     __obj249574))))
            (let* ((___match248221248222_
                    (lambda (_e241062241099_ _hd241061241102_ _tl241060241104_)
                      (let ((_L241107_ _tl241060241104_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L241107_))
                            (___kont247912247913_ _L241107_)
                            (___kont247914247915_ _tl241060241104_)))))
                   (___match248215248216_
                    (lambda (_e240956241121_
                             _hd240955241124_
                             _tl240954241126_
                             _e240959241129_
                             _hd240958241132_
                             _tl240957241134_
                             _e240962241137_
                             _hd240961241140_
                             _tl240960241142_
                             _e240965241145_
                             _hd240964241148_
                             _tl240963241150_
                             _e240968241153_
                             _hd240967241156_
                             _tl240966241158_
                             _e240971241161_
                             _hd240970241164_
                             _tl240969241166_
                             _e240974241169_
                             _hd240973241172_
                             _tl240972241174_
                             _e240977241177_
                             _hd240976241180_
                             _tl240975241182_
                             _e240980241185_
                             _hd240979241188_
                             _tl240978241190_
                             _e240983241193_
                             _hd240982241196_
                             _tl240981241198_
                             _e240986241201_
                             _hd240985241204_
                             _tl240984241206_
                             _e240989241209_
                             _hd240988241212_
                             _tl240987241214_
                             _e240992241217_
                             _hd240991241220_
                             _tl240990241222_
                             _e240995241225_
                             _hd240994241228_
                             _tl240993241230_
                             ___splice247910247911_
                             _target240996241233_
                             _tl240998241235_
                             _e241013241238_
                             _hd241012241241_
                             _tl241011241243_
                             _e241016241246_
                             _hd241015241249_
                             _tl241014241251_
                             _e241019241254_
                             _hd241018241257_
                             _tl241017241259_)
                      (letrec ((_loop240999241262_
                                (lambda (_hd240997241265_
                                         _-absent-value241003241267_
                                         _key241004241269_
                                         _-xkwvar241005241271_
                                         _-hash-ref241006241273_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd240997241265_))
                                      (let ((_e241000241276_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd240997241265_))))
                                        (let ((_lp-tl241002241281_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241000241276_)))
                                              (_lp-hd241001241279_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241000241276_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd241001241279_))
                                              (let ((_e241022241284_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd241001241279_))))
                                                (let ((_tl241020241289_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e241022241284_)))
                                                      (_hd241021241287_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e241022241284_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd241021241287_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd241021241287_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl241020241289_))
                      (let ((_e241025241292_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl241020241289_))))
                        (let ((_tl241023241297_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241025241292_)))
                              (_hd241024241295_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241025241292_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd241024241295_))
                              (let ((_e241028241300_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd241024241295_))))
                                (let ((_tl241026241305_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241028241300_)))
                                      (_hd241027241303_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241028241300_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd241027241303_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd241027241303_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl241026241305_))
                                              (let ((_e241031241308_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl241026241305_))))
                                                (let ((_tl241029241313_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e241031241308_)))
                                                      (_hd241030241311_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e241031241308_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl241029241313_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl241023241297_))
                                                          (let ((_e241034241316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl241023241297_))))
                    (let ((_tl241032241321_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241034241316_)))
                          (_hd241033241319_
                           (let ()
                             (declare (not safe))
                             (##car _e241034241316_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd241033241319_))
                          (let ((_e241037241324_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd241033241319_))))
                            (let ((_tl241035241329_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e241037241324_)))
                                  (_hd241036241327_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e241037241324_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd241036241327_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd241036241327_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl241035241329_))
                                          (let ((_e241040241332_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl241035241329_))))
                                            (let ((_tl241038241337_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e241040241332_)))
                                                  (_hd241039241335_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e241040241332_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl241038241337_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl241032241321_))
                                                      (let ((_e241043241340_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl241032241321_))))
                (let ((_tl241041241345_
                       (let () (declare (not safe)) (##cdr _e241043241340_)))
                      (_hd241042241343_
                       (let () (declare (not safe)) (##car _e241043241340_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd241042241343_))
                      (let ((_e241046241348_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd241042241343_))))
                        (let ((_tl241044241353_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241046241348_)))
                              (_hd241045241351_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241046241348_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd241045241351_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd241045241351_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl241044241353_))
                                      (let ((_e241049241356_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl241044241353_))))
                                        (let ((_tl241047241361_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241049241356_)))
                                              (_hd241048241359_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241049241356_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241047241361_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl241041241345_))
                                                  (let ((_e241052241364_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl241041241345_))))
                                                    (let ((_tl241050241369_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e241052241364_)))
                                                          (_hd241051241367_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e241052241364_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd241051241367_))
                                                          (let ((_e241055241372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd241051241367_))))
                    (let ((_tl241053241377_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241055241372_)))
                          (_hd241054241375_
                           (let ()
                             (declare (not safe))
                             (##car _e241055241372_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd241054241375_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd241054241375_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl241053241377_))
                                  (let ((_e241058241380_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl241053241377_))))
                                    (let ((_tl241056241385_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e241058241380_)))
                                          (_hd241057241383_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e241058241380_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl241056241385_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241050241369_))
                                              (let ((__tmp249641
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd241057241383_
                                                             _-absent-value241003241267_)))
                                                    (__tmp249640
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd241048241359_
                                                             _key241004241269_)))
                                                    (__tmp249639
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd241039241335_
                                                             _-xkwvar241005241271_)))
                                                    (__tmp249638
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd241030241311_
                                                             _-hash-ref241006241273_))))
                                                (declare (not safe))
                                                (_loop240999241262_
                                                 _lp-tl241002241281_
                                                 __tmp249641
                                                 __tmp249640
                                                 __tmp249639
                                                 __tmp249638))
                                              (___match248221248222_
                                               _e240956241121_
                                               _hd240955241124_
                                               _tl240954241126_))
                                          (___match248221248222_
                                           _e240956241121_
                                           _hd240955241124_
                                           _tl240954241126_))))
                                  (___match248221248222_
                                   _e240956241121_
                                   _hd240955241124_
                                   _tl240954241126_))
                              (___match248221248222_
                               _e240956241121_
                               _hd240955241124_
                               _tl240954241126_))
                          (___match248221248222_
                           _e240956241121_
                           _hd240955241124_
                           _tl240954241126_))))
                  (___match248221248222_
                   _e240956241121_
                   _hd240955241124_
                   _tl240954241126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match248221248222_
                                                   _e240956241121_
                                                   _hd240955241124_
                                                   _tl240954241126_))
                                              (___match248221248222_
                                               _e240956241121_
                                               _hd240955241124_
                                               _tl240954241126_))))
                                      (___match248221248222_
                                       _e240956241121_
                                       _hd240955241124_
                                       _tl240954241126_))
                                  (___match248221248222_
                                   _e240956241121_
                                   _hd240955241124_
                                   _tl240954241126_))
                              (___match248221248222_
                               _e240956241121_
                               _hd240955241124_
                               _tl240954241126_))))
                      (___match248221248222_
                       _e240956241121_
                       _hd240955241124_
                       _tl240954241126_))))
              (___match248221248222_
               _e240956241121_
               _hd240955241124_
               _tl240954241126_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match248221248222_
                                                   _e240956241121_
                                                   _hd240955241124_
                                                   _tl240954241126_))))
                                          (___match248221248222_
                                           _e240956241121_
                                           _hd240955241124_
                                           _tl240954241126_))
                                      (___match248221248222_
                                       _e240956241121_
                                       _hd240955241124_
                                       _tl240954241126_))
                                  (___match248221248222_
                                   _e240956241121_
                                   _hd240955241124_
                                   _tl240954241126_))))
                          (___match248221248222_
                           _e240956241121_
                           _hd240955241124_
                           _tl240954241126_))))
                  (___match248221248222_
                   _e240956241121_
                   _hd240955241124_
                   _tl240954241126_))
              (___match248221248222_
               _e240956241121_
               _hd240955241124_
               _tl240954241126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match248221248222_
                                               _e240956241121_
                                               _hd240955241124_
                                               _tl240954241126_))
                                          (___match248221248222_
                                           _e240956241121_
                                           _hd240955241124_
                                           _tl240954241126_))
                                      (___match248221248222_
                                       _e240956241121_
                                       _hd240955241124_
                                       _tl240954241126_))))
                              (___match248221248222_
                               _e240956241121_
                               _hd240955241124_
                               _tl240954241126_))))
                      (___match248221248222_
                       _e240956241121_
                       _hd240955241124_
                       _tl240954241126_))
                  (___match248221248222_
                   _e240956241121_
                   _hd240955241124_
                   _tl240954241126_))
              (___match248221248222_
               _e240956241121_
               _hd240955241124_
               _tl240954241126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match248221248222_
                                               _e240956241121_
                                               _hd240955241124_
                                               _tl240954241126_))))
                                      (let ((_-hash-ref241010241394_
                                             (reverse _-hash-ref241006241273_))
                                            (_-xkwvar241009241392_
                                             (reverse _-xkwvar241005241271_))
                                            (_key241008241390_
                                             (reverse _key241004241269_))
                                            (_-absent-value241007241388_
                                             (reverse _-absent-value241003241267_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl240963241150_))
                                            (let ((_L241397_ _hd241018241257_)
                                                  (_L241398_
                                                   _-absent-value241007241388_)
                                                  (_L241399_ _key241008241390_)
                                                  (_L241400_
                                                   _-xkwvar241009241392_)
                                                  (_L241401_
                                                   _-hash-ref241010241394_)
                                                  (_L241402_ _hd240994241228_)
                                                  (_L241403_ _hd240985241204_)
                                                  (_L241404_ _hd240976241180_)
                                                  (_L241405_ _tl240960241142_)
                                                  (_L241406_ _hd240961241140_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L241406_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L241405_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L241404_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L241406_
                                                          _L241402_))
                                                       (let ((__tmp249636
                                                              (let ((__tmp249637
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g241459241462_ _g241460241464_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g241459241462_ _g241460241464_)))))
                        (declare (not safe))
                        (foldr1 __tmp249637 '() _L241399_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp249636))
               (let ((__tmp249635
                      (lambda (_g241466241468_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g241466241468_
                           'hash-ref))))
                     (__tmp249633
                      (let ((__tmp249634
                             (lambda (_g241470241473_ _g241471241475_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g241470241473_ _g241471241475_)))))
                        (declare (not safe))
                        (foldr1 __tmp249634 '() _L241401_))))
                 (declare (not safe))
                 (andmap1 __tmp249635 __tmp249633))
               (let ((__tmp249632
                      (lambda (_g241477241479_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g241477241479_
                           'absent-value))))
                     (__tmp249630
                      (let ((__tmp249631
                             (lambda (_g241481241484_ _g241482241486_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g241481241484_ _g241482241486_)))))
                        (declare (not safe))
                        (foldr1 __tmp249631 '() _L241398_))))
                 (declare (not safe))
                 (andmap1 __tmp249632 __tmp249630))
               (let ((__tmp249629
                      (lambda (_g241488241490_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g241488241490_ _L241406_))))
                     (__tmp249627
                      (let ((__tmp249628
                             (lambda (_g241492241495_ _g241493241497_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g241492241495_ _g241493241497_)))))
                        (declare (not safe))
                        (foldr1 __tmp249628 '() _L241400_))))
                 (declare (not safe))
                 (andmap1 __tmp249629 __tmp249627)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont247908247909_
                                                   _L241397_
                                                   _L241398_
                                                   _L241399_
                                                   _L241400_
                                                   _L241401_
                                                   _L241402_
                                                   _L241403_
                                                   _L241404_
                                                   _L241405_
                                                   _L241406_)
                                                  (___match248221248222_
                                                   _e240956241121_
                                                   _hd240955241124_
                                                   _tl240954241126_)))
                                            (___match248221248222_
                                             _e240956241121_
                                             _hd240955241124_
                                             _tl240954241126_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop240999241262_
                           _target240996241233_
                           '()
                           '()
                           '()
                           '())))))
                   (___match248087248088_
                    (lambda (_e240956241121_
                             _hd240955241124_
                             _tl240954241126_
                             _e240959241129_
                             _hd240958241132_
                             _tl240957241134_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd240958241132_))
                          (let ((_e240962241137_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd240958241132_))))
                            (let ((_tl240960241142_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e240962241137_)))
                                  (_hd240961241140_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e240962241137_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl240957241134_))
                                  (let ((_e240965241145_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl240957241134_))))
                                    (let ((_tl240963241150_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e240965241145_)))
                                          (_hd240964241148_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e240965241145_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd240964241148_))
                                          (let ((_e240968241153_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd240964241148_))))
                                            (let ((_tl240966241158_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e240968241153_)))
                                                  (_hd240967241156_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e240968241153_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd240967241156_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd240967241156_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl240966241158_))
                                                          (let ((_e240971241161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl240966241158_))))
                    (let ((_tl240969241166_
                           (let ()
                             (declare (not safe))
                             (##cdr _e240971241161_)))
                          (_hd240970241164_
                           (let ()
                             (declare (not safe))
                             (##car _e240971241161_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd240970241164_))
                          (let ((_e240974241169_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd240970241164_))))
                            (let ((_tl240972241174_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e240974241169_)))
                                  (_hd240973241172_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e240974241169_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd240973241172_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd240973241172_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl240972241174_))
                                          (let ((_e240977241177_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl240972241174_))))
                                            (let ((_tl240975241182_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e240977241177_)))
                                                  (_hd240976241180_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e240977241177_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl240975241182_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl240969241166_))
                                                      (let ((_e240980241185_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl240969241166_))))
                (let ((_tl240978241190_
                       (let () (declare (not safe)) (##cdr _e240980241185_)))
                      (_hd240979241188_
                       (let () (declare (not safe)) (##car _e240980241185_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd240979241188_))
                      (let ((_e240983241193_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd240979241188_))))
                        (let ((_tl240981241198_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e240983241193_)))
                              (_hd240982241196_
                               (let ()
                                 (declare (not safe))
                                 (##car _e240983241193_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd240982241196_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd240982241196_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl240981241198_))
                                      (let ((_e240986241201_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl240981241198_))))
                                        (let ((_tl240984241206_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240986241201_)))
                                              (_hd240985241204_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240986241201_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl240984241206_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl240978241190_))
                                                  (let ((_e240989241209_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl240978241190_))))
                                                    (let ((_tl240987241214_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e240989241209_)))
                                                          (_hd240988241212_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e240989241209_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd240988241212_))
                                                          (let ((_e240992241217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd240988241212_))))
                    (let ((_tl240990241222_
                           (let ()
                             (declare (not safe))
                             (##cdr _e240992241217_)))
                          (_hd240991241220_
                           (let ()
                             (declare (not safe))
                             (##car _e240992241217_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd240991241220_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd240991241220_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl240990241222_))
                                  (let ((_e240995241225_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl240990241222_))))
                                    (let ((_tl240993241230_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e240995241225_)))
                                          (_hd240994241228_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e240995241225_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl240993241230_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl240987241214_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl240987241214_))
                                                        '1)
                                                  (let ((___splice247910247911_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl240987241214_
                                                            '1))))
                                                    (let ((_tl240998241235_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice247910247911_
                                                              '1)))
                                                          (_target240996241233_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice247910247911_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl240998241235_))
                                                          (let ((_e241013241238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl240998241235_))))
                    (let ((_tl241011241243_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241013241238_)))
                          (_hd241012241241_
                           (let ()
                             (declare (not safe))
                             (##car _e241013241238_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd241012241241_))
                          (let ((_e241016241246_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd241012241241_))))
                            (let ((_tl241014241251_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e241016241246_)))
                                  (_hd241015241249_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e241016241246_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd241015241249_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd241015241249_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl241014241251_))
                                          (let ((_e241019241254_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl241014241251_))))
                                            (let ((_tl241017241259_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e241019241254_)))
                                                  (_hd241018241257_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e241019241254_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl241017241259_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl241011241243_))
                                                      (___match248215248216_
                                                       _e240956241121_
                                                       _hd240955241124_
                                                       _tl240954241126_
                                                       _e240959241129_
                                                       _hd240958241132_
                                                       _tl240957241134_
                                                       _e240962241137_
                                                       _hd240961241140_
                                                       _tl240960241142_
                                                       _e240965241145_
                                                       _hd240964241148_
                                                       _tl240963241150_
                                                       _e240968241153_
                                                       _hd240967241156_
                                                       _tl240966241158_
                                                       _e240971241161_
                                                       _hd240970241164_
                                                       _tl240969241166_
                                                       _e240974241169_
                                                       _hd240973241172_
                                                       _tl240972241174_
                                                       _e240977241177_
                                                       _hd240976241180_
                                                       _tl240975241182_
                                                       _e240980241185_
                                                       _hd240979241188_
                                                       _tl240978241190_
                                                       _e240983241193_
                                                       _hd240982241196_
                                                       _tl240981241198_
                                                       _e240986241201_
                                                       _hd240985241204_
                                                       _tl240984241206_
                                                       _e240989241209_
                                                       _hd240988241212_
                                                       _tl240987241214_
                                                       _e240992241217_
                                                       _hd240991241220_
                                                       _tl240990241222_
                                                       _e240995241225_
                                                       _hd240994241228_
                                                       _tl240993241230_
                                                       ___splice247910247911_
                                                       _target240996241233_
                                                       _tl240998241235_
                                                       _e241013241238_
                                                       _hd241012241241_
                                                       _tl241011241243_
                                                       _e241016241246_
                                                       _hd241015241249_
                                                       _tl241014241251_
                                                       _e241019241254_
                                                       _hd241018241257_
                                                       _tl241017241259_)
                                                      (___match248221248222_
                                                       _e240956241121_
                                                       _hd240955241124_
                                                       _tl240954241126_))
                                                  (___match248221248222_
                                                   _e240956241121_
                                                   _hd240955241124_
                                                   _tl240954241126_))))
                                          (___match248221248222_
                                           _e240956241121_
                                           _hd240955241124_
                                           _tl240954241126_))
                                      (___match248221248222_
                                       _e240956241121_
                                       _hd240955241124_
                                       _tl240954241126_))
                                  (___match248221248222_
                                   _e240956241121_
                                   _hd240955241124_
                                   _tl240954241126_))))
                          (___match248221248222_
                           _e240956241121_
                           _hd240955241124_
                           _tl240954241126_))))
                  (___match248221248222_
                   _e240956241121_
                   _hd240955241124_
                   _tl240954241126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match248221248222_
                                                   _e240956241121_
                                                   _hd240955241124_
                                                   _tl240954241126_))
                                              (___match248221248222_
                                               _e240956241121_
                                               _hd240955241124_
                                               _tl240954241126_))
                                          (___match248221248222_
                                           _e240956241121_
                                           _hd240955241124_
                                           _tl240954241126_))))
                                  (___match248221248222_
                                   _e240956241121_
                                   _hd240955241124_
                                   _tl240954241126_))
                              (___match248221248222_
                               _e240956241121_
                               _hd240955241124_
                               _tl240954241126_))
                          (___match248221248222_
                           _e240956241121_
                           _hd240955241124_
                           _tl240954241126_))))
                  (___match248221248222_
                   _e240956241121_
                   _hd240955241124_
                   _tl240954241126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match248221248222_
                                                   _e240956241121_
                                                   _hd240955241124_
                                                   _tl240954241126_))
                                              (___match248221248222_
                                               _e240956241121_
                                               _hd240955241124_
                                               _tl240954241126_))))
                                      (___match248221248222_
                                       _e240956241121_
                                       _hd240955241124_
                                       _tl240954241126_))
                                  (___match248221248222_
                                   _e240956241121_
                                   _hd240955241124_
                                   _tl240954241126_))
                              (___match248221248222_
                               _e240956241121_
                               _hd240955241124_
                               _tl240954241126_))))
                      (___match248221248222_
                       _e240956241121_
                       _hd240955241124_
                       _tl240954241126_))))
              (___match248221248222_
               _e240956241121_
               _hd240955241124_
               _tl240954241126_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match248221248222_
                                                   _e240956241121_
                                                   _hd240955241124_
                                                   _tl240954241126_))))
                                          (___match248221248222_
                                           _e240956241121_
                                           _hd240955241124_
                                           _tl240954241126_))
                                      (___match248221248222_
                                       _e240956241121_
                                       _hd240955241124_
                                       _tl240954241126_))
                                  (___match248221248222_
                                   _e240956241121_
                                   _hd240955241124_
                                   _tl240954241126_))))
                          (___match248221248222_
                           _e240956241121_
                           _hd240955241124_
                           _tl240954241126_))))
                  (___match248221248222_
                   _e240956241121_
                   _hd240955241124_
                   _tl240954241126_))
              (___match248221248222_
               _e240956241121_
               _hd240955241124_
               _tl240954241126_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match248221248222_
                                                   _e240956241121_
                                                   _hd240955241124_
                                                   _tl240954241126_))))
                                          (___match248221248222_
                                           _e240956241121_
                                           _hd240955241124_
                                           _tl240954241126_))))
                                  (___match248221248222_
                                   _e240956241121_
                                   _hd240955241124_
                                   _tl240954241126_))))
                          (___match248221248222_
                           _e240956241121_
                           _hd240955241124_
                           _tl240954241126_))))
                   (___match248075248076_
                    (lambda (_e240889241512_
                             _hd240888241515_
                             _tl240887241517_
                             _e240892241520_
                             _hd240891241523_
                             _tl240890241525_
                             _e240895241528_
                             _hd240894241531_
                             _tl240893241533_
                             _e240898241536_
                             _hd240897241539_
                             _tl240896241541_
                             _e240901241544_
                             _hd240900241547_
                             _tl240899241549_
                             _e240904241552_
                             _hd240903241555_
                             _tl240902241557_
                             _e240907241560_
                             _hd240906241563_
                             _tl240905241565_
                             _e240910241568_
                             _hd240909241571_
                             _tl240908241573_
                             _e240913241576_
                             _hd240912241579_
                             _tl240911241581_
                             _e240916241584_
                             _hd240915241587_
                             _tl240914241589_
                             _e240919241592_
                             _hd240918241595_
                             _tl240917241597_
                             _e240922241600_
                             _hd240921241603_
                             _tl240920241605_
                             _e240925241608_
                             _hd240924241611_
                             _tl240923241613_
                             _e240928241616_
                             _hd240927241619_
                             _tl240926241621_
                             _e240931241624_
                             _hd240930241627_
                             _tl240929241629_
                             _e240934241632_
                             _hd240933241635_
                             _tl240932241637_
                             _e240937241640_
                             _hd240936241643_
                             _tl240935241645_
                             _e240940241648_
                             _hd240939241651_
                             _tl240938241653_
                             _e240943241656_
                             _hd240942241659_
                             _tl240941241661_)
                      (let ((_L241664_ _hd240942241659_)
                            (_L241665_ _hd240933241635_)
                            (_L241666_ _hd240924241611_)
                            (_L241667_ _hd240915241587_)
                            (_L241668_ _hd240906241563_)
                            (_L241669_ _hd240891241523_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L241669_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L241668_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L241667_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L241669_ _L241664_)))
                            (___kont247906247907_
                             _L241664_
                             _L241665_
                             _L241666_
                             _L241667_
                             _L241668_
                             _L241669_)
                            (___match248087248088_
                             _e240889241512_
                             _hd240888241515_
                             _tl240887241517_
                             _e240892241520_
                             _hd240891241523_
                             _tl240890241525_)))))
                   (___match247929247930_
                    (lambda (_e240889241512_ _hd240888241515_ _tl240887241517_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl240887241517_))
                          (let ((_e240892241520_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl240887241517_))))
                            (let ((_tl240890241525_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e240892241520_)))
                                  (_hd240891241523_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e240892241520_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl240890241525_))
                                  (let ((_e240895241528_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl240890241525_))))
                                    (let ((_tl240893241533_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e240895241528_)))
                                          (_hd240894241531_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e240895241528_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd240894241531_))
                                          (let ((_e240898241536_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd240894241531_))))
                                            (let ((_tl240896241541_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e240898241536_)))
                                                  (_hd240897241539_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e240898241536_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd240897241539_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd240897241539_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl240896241541_))
                                                          (let ((_e240901241544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl240896241541_))))
                    (let ((_tl240899241549_
                           (let ()
                             (declare (not safe))
                             (##cdr _e240901241544_)))
                          (_hd240900241547_
                           (let ()
                             (declare (not safe))
                             (##car _e240901241544_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd240900241547_))
                          (let ((_e240904241552_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd240900241547_))))
                            (let ((_tl240902241557_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e240904241552_)))
                                  (_hd240903241555_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e240904241552_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd240903241555_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd240903241555_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl240902241557_))
                                          (let ((_e240907241560_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl240902241557_))))
                                            (let ((_tl240905241565_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e240907241560_)))
                                                  (_hd240906241563_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e240907241560_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl240905241565_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl240899241549_))
                                                      (let ((_e240910241568_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl240899241549_))))
                (let ((_tl240908241573_
                       (let () (declare (not safe)) (##cdr _e240910241568_)))
                      (_hd240909241571_
                       (let () (declare (not safe)) (##car _e240910241568_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd240909241571_))
                      (let ((_e240913241576_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd240909241571_))))
                        (let ((_tl240911241581_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e240913241576_)))
                              (_hd240912241579_
                               (let ()
                                 (declare (not safe))
                                 (##car _e240913241576_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd240912241579_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd240912241579_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl240911241581_))
                                      (let ((_e240916241584_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl240911241581_))))
                                        (let ((_tl240914241589_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240916241584_)))
                                              (_hd240915241587_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240916241584_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl240914241589_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl240908241573_))
                                                  (let ((_e240919241592_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl240908241573_))))
                                                    (let ((_tl240917241597_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e240919241592_)))
                                                          (_hd240918241595_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e240919241592_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd240918241595_))
                                                          (let ((_e240922241600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd240918241595_))))
                    (let ((_tl240920241605_
                           (let ()
                             (declare (not safe))
                             (##cdr _e240922241600_)))
                          (_hd240921241603_
                           (let ()
                             (declare (not safe))
                             (##car _e240922241600_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd240921241603_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd240921241603_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl240920241605_))
                                  (let ((_e240925241608_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl240920241605_))))
                                    (let ((_tl240923241613_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e240925241608_)))
                                          (_hd240924241611_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e240925241608_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl240923241613_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl240917241597_))
                                              (let ((_e240928241616_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl240917241597_))))
                                                (let ((_tl240926241621_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e240928241616_)))
                                                      (_hd240927241619_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e240928241616_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd240927241619_))
                                                      (let ((_e240931241624_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd240927241619_))))
                (let ((_tl240929241629_
                       (let () (declare (not safe)) (##cdr _e240931241624_)))
                      (_hd240930241627_
                       (let () (declare (not safe)) (##car _e240931241624_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd240930241627_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd240930241627_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl240929241629_))
                              (let ((_e240934241632_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl240929241629_))))
                                (let ((_tl240932241637_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240934241632_)))
                                      (_hd240933241635_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240934241632_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl240932241637_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl240926241621_))
                                          (let ((_e240937241640_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl240926241621_))))
                                            (let ((_tl240935241645_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e240937241640_)))
                                                  (_hd240936241643_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e240937241640_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd240936241643_))
                                                  (let ((_e240940241648_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd240936241643_))))
                                                    (let ((_tl240938241653_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e240940241648_)))
                                                          (_hd240939241651_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e240940241648_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd240939241651_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd240939241651_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl240938241653_))
                          (let ((_e240943241656_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl240938241653_))))
                            (let ((_tl240941241661_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e240943241656_)))
                                  (_hd240942241659_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e240943241656_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl240941241661_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl240935241645_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl240893241533_))
                                          (___match248075248076_
                                           _e240889241512_
                                           _hd240888241515_
                                           _tl240887241517_
                                           _e240892241520_
                                           _hd240891241523_
                                           _tl240890241525_
                                           _e240895241528_
                                           _hd240894241531_
                                           _tl240893241533_
                                           _e240898241536_
                                           _hd240897241539_
                                           _tl240896241541_
                                           _e240901241544_
                                           _hd240900241547_
                                           _tl240899241549_
                                           _e240904241552_
                                           _hd240903241555_
                                           _tl240902241557_
                                           _e240907241560_
                                           _hd240906241563_
                                           _tl240905241565_
                                           _e240910241568_
                                           _hd240909241571_
                                           _tl240908241573_
                                           _e240913241576_
                                           _hd240912241579_
                                           _tl240911241581_
                                           _e240916241584_
                                           _hd240915241587_
                                           _tl240914241589_
                                           _e240919241592_
                                           _hd240918241595_
                                           _tl240917241597_
                                           _e240922241600_
                                           _hd240921241603_
                                           _tl240920241605_
                                           _e240925241608_
                                           _hd240924241611_
                                           _tl240923241613_
                                           _e240928241616_
                                           _hd240927241619_
                                           _tl240926241621_
                                           _e240931241624_
                                           _hd240930241627_
                                           _tl240929241629_
                                           _e240934241632_
                                           _hd240933241635_
                                           _tl240932241637_
                                           _e240937241640_
                                           _hd240936241643_
                                           _tl240935241645_
                                           _e240940241648_
                                           _hd240939241651_
                                           _tl240938241653_
                                           _e240943241656_
                                           _hd240942241659_
                                           _tl240941241661_)
                                          (___match248087248088_
                                           _e240889241512_
                                           _hd240888241515_
                                           _tl240887241517_
                                           _e240892241520_
                                           _hd240891241523_
                                           _tl240890241525_))
                                      (___match248087248088_
                                       _e240889241512_
                                       _hd240888241515_
                                       _tl240887241517_
                                       _e240892241520_
                                       _hd240891241523_
                                       _tl240890241525_))
                                  (___match248087248088_
                                   _e240889241512_
                                   _hd240888241515_
                                   _tl240887241517_
                                   _e240892241520_
                                   _hd240891241523_
                                   _tl240890241525_))))
                          (___match248087248088_
                           _e240889241512_
                           _hd240888241515_
                           _tl240887241517_
                           _e240892241520_
                           _hd240891241523_
                           _tl240890241525_))
                      (___match248087248088_
                       _e240889241512_
                       _hd240888241515_
                       _tl240887241517_
                       _e240892241520_
                       _hd240891241523_
                       _tl240890241525_))
                  (___match248087248088_
                   _e240889241512_
                   _hd240888241515_
                   _tl240887241517_
                   _e240892241520_
                   _hd240891241523_
                   _tl240890241525_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match248087248088_
                                                   _e240889241512_
                                                   _hd240888241515_
                                                   _tl240887241517_
                                                   _e240892241520_
                                                   _hd240891241523_
                                                   _tl240890241525_))))
                                          (___match248087248088_
                                           _e240889241512_
                                           _hd240888241515_
                                           _tl240887241517_
                                           _e240892241520_
                                           _hd240891241523_
                                           _tl240890241525_))
                                      (___match248087248088_
                                       _e240889241512_
                                       _hd240888241515_
                                       _tl240887241517_
                                       _e240892241520_
                                       _hd240891241523_
                                       _tl240890241525_))))
                              (___match248087248088_
                               _e240889241512_
                               _hd240888241515_
                               _tl240887241517_
                               _e240892241520_
                               _hd240891241523_
                               _tl240890241525_))
                          (___match248087248088_
                           _e240889241512_
                           _hd240888241515_
                           _tl240887241517_
                           _e240892241520_
                           _hd240891241523_
                           _tl240890241525_))
                      (___match248087248088_
                       _e240889241512_
                       _hd240888241515_
                       _tl240887241517_
                       _e240892241520_
                       _hd240891241523_
                       _tl240890241525_))))
              (___match248087248088_
               _e240889241512_
               _hd240888241515_
               _tl240887241517_
               _e240892241520_
               _hd240891241523_
               _tl240890241525_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match248087248088_
                                               _e240889241512_
                                               _hd240888241515_
                                               _tl240887241517_
                                               _e240892241520_
                                               _hd240891241523_
                                               _tl240890241525_))
                                          (___match248087248088_
                                           _e240889241512_
                                           _hd240888241515_
                                           _tl240887241517_
                                           _e240892241520_
                                           _hd240891241523_
                                           _tl240890241525_))))
                                  (___match248087248088_
                                   _e240889241512_
                                   _hd240888241515_
                                   _tl240887241517_
                                   _e240892241520_
                                   _hd240891241523_
                                   _tl240890241525_))
                              (___match248087248088_
                               _e240889241512_
                               _hd240888241515_
                               _tl240887241517_
                               _e240892241520_
                               _hd240891241523_
                               _tl240890241525_))
                          (___match248087248088_
                           _e240889241512_
                           _hd240888241515_
                           _tl240887241517_
                           _e240892241520_
                           _hd240891241523_
                           _tl240890241525_))))
                  (___match248087248088_
                   _e240889241512_
                   _hd240888241515_
                   _tl240887241517_
                   _e240892241520_
                   _hd240891241523_
                   _tl240890241525_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match248087248088_
                                                   _e240889241512_
                                                   _hd240888241515_
                                                   _tl240887241517_
                                                   _e240892241520_
                                                   _hd240891241523_
                                                   _tl240890241525_))
                                              (___match248087248088_
                                               _e240889241512_
                                               _hd240888241515_
                                               _tl240887241517_
                                               _e240892241520_
                                               _hd240891241523_
                                               _tl240890241525_))))
                                      (___match248087248088_
                                       _e240889241512_
                                       _hd240888241515_
                                       _tl240887241517_
                                       _e240892241520_
                                       _hd240891241523_
                                       _tl240890241525_))
                                  (___match248087248088_
                                   _e240889241512_
                                   _hd240888241515_
                                   _tl240887241517_
                                   _e240892241520_
                                   _hd240891241523_
                                   _tl240890241525_))
                              (___match248087248088_
                               _e240889241512_
                               _hd240888241515_
                               _tl240887241517_
                               _e240892241520_
                               _hd240891241523_
                               _tl240890241525_))))
                      (___match248087248088_
                       _e240889241512_
                       _hd240888241515_
                       _tl240887241517_
                       _e240892241520_
                       _hd240891241523_
                       _tl240890241525_))))
              (___match248087248088_
               _e240889241512_
               _hd240888241515_
               _tl240887241517_
               _e240892241520_
               _hd240891241523_
               _tl240890241525_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match248087248088_
                                                   _e240889241512_
                                                   _hd240888241515_
                                                   _tl240887241517_
                                                   _e240892241520_
                                                   _hd240891241523_
                                                   _tl240890241525_))))
                                          (___match248087248088_
                                           _e240889241512_
                                           _hd240888241515_
                                           _tl240887241517_
                                           _e240892241520_
                                           _hd240891241523_
                                           _tl240890241525_))
                                      (___match248087248088_
                                       _e240889241512_
                                       _hd240888241515_
                                       _tl240887241517_
                                       _e240892241520_
                                       _hd240891241523_
                                       _tl240890241525_))
                                  (___match248087248088_
                                   _e240889241512_
                                   _hd240888241515_
                                   _tl240887241517_
                                   _e240892241520_
                                   _hd240891241523_
                                   _tl240890241525_))))
                          (___match248087248088_
                           _e240889241512_
                           _hd240888241515_
                           _tl240887241517_
                           _e240892241520_
                           _hd240891241523_
                           _tl240890241525_))))
                  (___match248087248088_
                   _e240889241512_
                   _hd240888241515_
                   _tl240887241517_
                   _e240892241520_
                   _hd240891241523_
                   _tl240890241525_))
              (___match248087248088_
               _e240889241512_
               _hd240888241515_
               _tl240887241517_
               _e240892241520_
               _hd240891241523_
               _tl240890241525_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match248087248088_
                                                   _e240889241512_
                                                   _hd240888241515_
                                                   _tl240887241517_
                                                   _e240892241520_
                                                   _hd240891241523_
                                                   _tl240890241525_))))
                                          (___match248087248088_
                                           _e240889241512_
                                           _hd240888241515_
                                           _tl240887241517_
                                           _e240892241520_
                                           _hd240891241523_
                                           _tl240890241525_))))
                                  (___match248087248088_
                                   _e240889241512_
                                   _hd240888241515_
                                   _tl240887241517_
                                   _e240892241520_
                                   _hd240891241523_
                                   _tl240890241525_))))
                          (___match248221248222_
                           _e240889241512_
                           _hd240888241515_
                           _tl240887241517_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx247902247903_))
                  (let ((_e240880241729_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx247902247903_))))
                    (let ((_tl240878241734_
                           (let ()
                             (declare (not safe))
                             (##cdr _e240880241729_)))
                          (_hd240879241732_
                           (let ()
                             (declare (not safe))
                             (##car _e240880241729_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L241737_ _tl240878241734_))
                            (___kont247904247905_ _L241737_))
                          (___match247929247930_
                           _e240880241729_
                           _hd240879241732_
                           _tl240878241734_))))
                  (let () (declare (not safe)) (_g240875241071_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx240824_)
        (letrec ((_clause-e240826_
                  (lambda (_form240867_)
                    (let ((__obj249575
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
                       __obj249575
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form240867_))
                       (if (let ((__tmp249642
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp249642))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form240867_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form240867_))
                               '#f)
                           '#f))
                      __obj249575))))
          (let* ((_g240828240838_
                  (lambda (_g240829240835_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g240829240835_))))
                 (_g240827240864_
                  (lambda (_g240829240841_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g240829240841_))
                        (let ((_e240833240843_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g240829240841_))))
                          (let ((_hd240832240846_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e240833240843_)))
                                (_tl240831240848_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e240833240843_))))
                            ((lambda (_L240851_)
                               (let ((_clauses240862_
                                      (map _clause-e240826_ _L240851_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses240862_)))
                             _tl240831240848_)))
                        (let ()
                          (declare (not safe))
                          (_g240828240838_ _g240829240841_))))))
            (declare (not safe))
            (_g240827240864_ _stx240824_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx240756_)
        (let* ((_g240758240775_
                (lambda (_g240759240772_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g240759240772_))))
               (_g240757240821_
                (lambda (_g240759240778_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g240759240778_))
                      (let ((_e240764240780_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g240759240778_))))
                        (let ((_hd240763240783_
                               (let ()
                                 (declare (not safe))
                                 (##car _e240764240780_)))
                              (_tl240762240785_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e240764240780_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl240762240785_))
                              (let ((_e240767240788_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl240762240785_))))
                                (let ((_hd240766240791_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240767240788_)))
                                      (_tl240765240793_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240767240788_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl240765240793_))
                                      (let ((_e240770240796_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl240765240793_))))
                                        (let ((_hd240769240799_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240770240796_)))
                                              (_tl240768240801_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240770240796_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl240768240801_))
                                              ((lambda (_L240804_ _L240805_)
                                                 (let ((__tmp249643
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L240804_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp249643
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd240769240799_
                                               _hd240766240791_)
                                              (let ()
                                                (declare (not safe))
                                                (_g240758240775_
                                                 _g240759240778_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g240758240775_ _g240759240778_)))))
                              (let ()
                                (declare (not safe))
                                (_g240758240775_ _g240759240778_)))))
                      (let ()
                        (declare (not safe))
                        (_g240758240775_ _g240759240778_))))))
          (declare (not safe))
          (_g240757240821_ _stx240756_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx240661_)
        (let* ((___stx248230248231_ _stx240661_)
               (_g240664240684_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx248230248231_)))))
          (let ((___kont248232248233_
                 (lambda (_L240728_ _L240729_)
                   (let ((_type-e240746240748_
                          (let ((__tmp249644
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L240729_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp249644))))
                     (if _type-e240746240748_
                         (let ((_type-e240751_ _type-e240746240748_))
                           (_type-e240751_ _stx240661_ _L240728_))
                         '#f))))
                (___kont248234248235_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx248230248231_))
                (let ((_e240670240696_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx248230248231_))))
                  (let ((_tl240668240701_
                         (let () (declare (not safe)) (##cdr _e240670240696_)))
                        (_hd240669240699_
                         (let ()
                           (declare (not safe))
                           (##car _e240670240696_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl240668240701_))
                        (let ((_e240673240704_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl240668240701_))))
                          (let ((_tl240671240709_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e240673240704_)))
                                (_hd240672240707_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e240673240704_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd240672240707_))
                                (let ((_e240676240712_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd240672240707_))))
                                  (let ((_tl240674240717_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e240676240712_)))
                                        (_hd240675240715_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e240676240712_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd240675240715_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd240675240715_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl240674240717_))
                                                (let ((_e240679240720_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl240674240717_))))
                                                  (let ((_tl240677240725_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e240679240720_)))
                                                        (_hd240678240723_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e240679240720_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl240677240725_))
                                                        (___kont248232248233_
                                                         _tl240671240709_
                                                         _hd240678240723_)
                                                        (___kont248234248235_))))
                                                (___kont248234248235_))
                                            (___kont248234248235_))
                                        (___kont248234248235_))))
                                (___kont248234248235_))))
                        (___kont248234248235_))))
                (___kont248234248235_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx240610_)
        (let* ((_g240612240625_
                (lambda (_g240613240622_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g240613240622_))))
               (_g240611240658_
                (lambda (_g240613240628_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g240613240628_))
                      (let ((_e240617240630_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g240613240628_))))
                        (let ((_hd240616240633_
                               (let ()
                                 (declare (not safe))
                                 (##car _e240617240630_)))
                              (_tl240615240635_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e240617240630_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl240615240635_))
                              (let ((_e240620240638_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl240615240635_))))
                                (let ((_hd240619240641_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240620240638_)))
                                      (_tl240618240643_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240620240638_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl240618240643_))
                                      ((lambda (_L240646_)
                                         (let ((__tmp249645
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L240646_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp249645)))
                                       _hd240619240641_)
                                      (let ()
                                        (declare (not safe))
                                        (_g240612240625_ _g240613240628_)))))
                              (let ()
                                (declare (not safe))
                                (_g240612240625_ _g240613240628_)))))
                      (let ()
                        (declare (not safe))
                        (_g240612240625_ _g240613240628_))))))
          (declare (not safe))
          (_g240611240658_ _stx240610_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form239844_)
        (let* ((___stx248268248269_ _form239844_)
               (_g239849240006_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx248268248269_)))))
          (let ((___kont248270248271_
                 (lambda (_L240530_ _L240531_ _L240532_) '#t))
                (___kont248276248277_
                 (lambda (_L240318_
                          _L240319_
                          _L240320_
                          _L240321_
                          _L240322_
                          _L240323_)
                   '#t))
                (___kont248282248283_
                 (lambda (_L240114_ _L240115_ _L240116_ _L240117_) '#t))
                (___kont248284248285_ (lambda () '#f)))
            (let* ((___match248409248410_
                    (lambda (_e239968240018_
                             _hd239967240021_
                             _tl239966240023_
                             _e239971240026_
                             _hd239970240029_
                             _tl239969240031_
                             _e239974240034_
                             _hd239973240037_
                             _tl239972240039_
                             _e239977240042_
                             _hd239976240045_
                             _tl239975240047_
                             _e239980240050_
                             _hd239979240053_
                             _tl239978240055_
                             _e239983240058_
                             _hd239982240061_
                             _tl239981240063_
                             _e239986240066_
                             _hd239985240069_
                             _tl239984240071_
                             _e239989240074_
                             _hd239988240077_
                             _tl239987240079_
                             _e239992240082_
                             _hd239991240085_
                             _tl239990240087_
                             _e239995240090_
                             _hd239994240093_
                             _tl239993240095_
                             _e239998240098_
                             _hd239997240101_
                             _tl239996240103_
                             _e240001240106_
                             _hd240000240109_
                             _tl239999240111_)
                      (let ((_L240114_ _hd240000240109_)
                            (_L240115_ _hd239991240085_)
                            (_L240116_ _hd239982240061_)
                            (_L240117_ _hd239967240021_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L240117_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L240116_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L240117_ _L240114_))
                                 (let ((__tmp249646
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L240115_
                                           _L240117_))))
                                   (declare (not safe))
                                   (not __tmp249646)))
                            (___kont248282248283_
                             _L240114_
                             _L240115_
                             _L240116_
                             _L240117_)
                            (___kont248284248285_)))))
                   (___match248381248382_
                    (lambda (_e239968240018_
                             _hd239967240021_
                             _tl239966240023_
                             _e239971240026_
                             _hd239970240029_
                             _tl239969240031_
                             _e239974240034_
                             _hd239973240037_
                             _tl239972240039_
                             _e239977240042_
                             _hd239976240045_
                             _tl239975240047_
                             _e239980240050_
                             _hd239979240053_
                             _tl239978240055_
                             _e239983240058_
                             _hd239982240061_
                             _tl239981240063_
                             _e239986240066_
                             _hd239985240069_
                             _tl239984240071_
                             _e239989240074_
                             _hd239988240077_
                             _tl239987240079_
                             _e239992240082_
                             _hd239991240085_
                             _tl239990240087_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl239984240071_))
                          (let ((_e239995240090_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl239984240071_))))
                            (let ((_tl239993240095_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e239995240090_)))
                                  (_hd239994240093_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e239995240090_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd239994240093_))
                                  (let ((_e239998240098_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd239994240093_))))
                                    (let ((_tl239996240103_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e239998240098_)))
                                          (_hd239997240101_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e239998240098_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd239997240101_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd239997240101_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl239996240103_))
                                                  (let ((_e240001240106_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl239996240103_))))
                                                    (let ((_tl239999240111_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e240001240106_)))
                                                          (_hd240000240109_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e240001240106_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl239999240111_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl239993240095_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl239969240031_))
                          (___match248409248410_
                           _e239968240018_
                           _hd239967240021_
                           _tl239966240023_
                           _e239971240026_
                           _hd239970240029_
                           _tl239969240031_
                           _e239974240034_
                           _hd239973240037_
                           _tl239972240039_
                           _e239977240042_
                           _hd239976240045_
                           _tl239975240047_
                           _e239980240050_
                           _hd239979240053_
                           _tl239978240055_
                           _e239983240058_
                           _hd239982240061_
                           _tl239981240063_
                           _e239986240066_
                           _hd239985240069_
                           _tl239984240071_
                           _e239989240074_
                           _hd239988240077_
                           _tl239987240079_
                           _e239992240082_
                           _hd239991240085_
                           _tl239990240087_
                           _e239995240090_
                           _hd239994240093_
                           _tl239993240095_
                           _e239998240098_
                           _hd239997240101_
                           _tl239996240103_
                           _e240001240106_
                           _hd240000240109_
                           _tl239999240111_)
                          (___kont248284248285_))
                      (___kont248284248285_))
                  (___kont248284248285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont248284248285_))
                                              (___kont248284248285_))
                                          (___kont248284248285_))))
                                  (___kont248284248285_))))
                          (___kont248284248285_))))
                   (___match248311248312_
                    (lambda (_e239904240158_
                             _hd239903240161_
                             _tl239902240163_
                             ___splice248278248279_
                             _target239905240166_
                             _tl239907240168_)
                      (letrec ((_loop239908240171_
                                (lambda (_hd239906240174_ _arg239912240176_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd239906240174_))
                                      (let ((_e239909240179_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd239906240174_))))
                                        (let ((_lp-tl239911240184_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e239909240179_)))
                                              (_lp-hd239910240182_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e239909240179_))))
                                          (let ((__tmp249661
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd239910240182_
                                                         _arg239912240176_))))
                                            (declare (not safe))
                                            (_loop239908240171_
                                             _lp-tl239911240184_
                                             __tmp249661))))
                                      (let ((_arg239913240187_
                                             (reverse _arg239912240176_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl239902240163_))
                                            (let ((_e239916240190_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl239902240163_))))
                                              (let ((_tl239914240195_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e239916240190_)))
                                                    (_hd239915240193_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e239916240190_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd239915240193_))
                                                    (let ((_e239919240198_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd239915240193_))))
                                                      (let ((_tl239917240203_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239919240198_)))
                    (_hd239918240201_
                     (let () (declare (not safe)) (##car _e239919240198_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd239918240201_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd239918240201_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239917240203_))
                            (let ((_e239922240206_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239917240203_))))
                              (let ((_tl239920240211_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239922240206_)))
                                    (_hd239921240209_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239922240206_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd239921240209_))
                                    (let ((_e239925240214_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd239921240209_))))
                                      (let ((_tl239923240219_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239925240214_)))
                                            (_hd239924240217_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239925240214_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd239924240217_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd239924240217_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl239923240219_))
                                                    (let ((_e239928240222_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl239923240219_))))
                                                      (let ((_tl239926240227_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239928240222_)))
                    (_hd239927240225_
                     (let () (declare (not safe)) (##car _e239928240222_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl239926240227_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl239920240211_))
                        (let ((_e239931240230_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl239920240211_))))
                          (let ((_tl239929240235_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e239931240230_)))
                                (_hd239930240233_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e239931240230_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd239930240233_))
                                (let ((_e239934240238_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd239930240233_))))
                                  (let ((_tl239932240243_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239934240238_)))
                                        (_hd239933240241_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239934240238_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd239933240241_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd239933240241_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl239932240243_))
                                                (let ((_e239937240246_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl239932240243_))))
                                                  (let ((_tl239935240251_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239937240246_)))
                                                        (_hd239936240249_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239937240246_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl239935240251_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl239929240235_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl239929240235_))
                              '1)
                        (let ((___splice248280248281_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl239929240235_
                                  '1))))
                          (let ((_tl239940240256_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice248280248281_ '1)))
                                (_target239938240254_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice248280248281_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl239940240256_))
                                (let ((_e239949240259_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl239940240256_))))
                                  (let ((_tl239947240264_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239949240259_)))
                                        (_hd239948240262_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239949240259_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd239948240262_))
                                        (let ((_e239952240267_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd239948240262_))))
                                          (let ((_tl239950240272_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e239952240267_)))
                                                (_hd239951240270_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e239952240267_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd239951240270_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd239951240270_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl239950240272_))
                                                        (let ((_e239955240275_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl239950240272_))))
                  (let ((_tl239953240280_
                         (let () (declare (not safe)) (##cdr _e239955240275_)))
                        (_hd239954240278_
                         (let ()
                           (declare (not safe))
                           (##car _e239955240275_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl239953240280_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl239947240264_))
                            (letrec ((_loop239941240283_
                                      (lambda (_hd239939240286_
                                               _xarg239945240288_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd239939240286_))
                                            (let ((_e239942240291_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd239939240286_))))
                                              (let ((_lp-tl239944240296_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e239942240291_)))
                                                    (_lp-hd239943240294_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e239942240291_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd239943240294_))
                                                    (let ((_e239958240299_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd239943240294_))))
                                                      (let ((_tl239956240304_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239958240299_)))
                    (_hd239957240302_
                     (let () (declare (not safe)) (##car _e239958240299_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd239957240302_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd239957240302_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239956240304_))
                            (let ((_e239961240307_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239956240304_))))
                              (let ((_tl239959240312_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239961240307_)))
                                    (_hd239960240310_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239961240307_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl239959240312_))
                                    (let ((__tmp249660
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd239960240310_
                                                   _xarg239945240288_))))
                                      (declare (not safe))
                                      (_loop239941240283_
                                       _lp-tl239944240296_
                                       __tmp249660))
                                    (___match248381248382_
                                     _e239904240158_
                                     _hd239903240161_
                                     _tl239902240163_
                                     _e239916240190_
                                     _hd239915240193_
                                     _tl239914240195_
                                     _e239919240198_
                                     _hd239918240201_
                                     _tl239917240203_
                                     _e239922240206_
                                     _hd239921240209_
                                     _tl239920240211_
                                     _e239925240214_
                                     _hd239924240217_
                                     _tl239923240219_
                                     _e239928240222_
                                     _hd239927240225_
                                     _tl239926240227_
                                     _e239931240230_
                                     _hd239930240233_
                                     _tl239929240235_
                                     _e239934240238_
                                     _hd239933240241_
                                     _tl239932240243_
                                     _e239937240246_
                                     _hd239936240249_
                                     _tl239935240251_))))
                            (___match248381248382_
                             _e239904240158_
                             _hd239903240161_
                             _tl239902240163_
                             _e239916240190_
                             _hd239915240193_
                             _tl239914240195_
                             _e239919240198_
                             _hd239918240201_
                             _tl239917240203_
                             _e239922240206_
                             _hd239921240209_
                             _tl239920240211_
                             _e239925240214_
                             _hd239924240217_
                             _tl239923240219_
                             _e239928240222_
                             _hd239927240225_
                             _tl239926240227_
                             _e239931240230_
                             _hd239930240233_
                             _tl239929240235_
                             _e239934240238_
                             _hd239933240241_
                             _tl239932240243_
                             _e239937240246_
                             _hd239936240249_
                             _tl239935240251_))
                        (___match248381248382_
                         _e239904240158_
                         _hd239903240161_
                         _tl239902240163_
                         _e239916240190_
                         _hd239915240193_
                         _tl239914240195_
                         _e239919240198_
                         _hd239918240201_
                         _tl239917240203_
                         _e239922240206_
                         _hd239921240209_
                         _tl239920240211_
                         _e239925240214_
                         _hd239924240217_
                         _tl239923240219_
                         _e239928240222_
                         _hd239927240225_
                         _tl239926240227_
                         _e239931240230_
                         _hd239930240233_
                         _tl239929240235_
                         _e239934240238_
                         _hd239933240241_
                         _tl239932240243_
                         _e239937240246_
                         _hd239936240249_
                         _tl239935240251_))
                    (___match248381248382_
                     _e239904240158_
                     _hd239903240161_
                     _tl239902240163_
                     _e239916240190_
                     _hd239915240193_
                     _tl239914240195_
                     _e239919240198_
                     _hd239918240201_
                     _tl239917240203_
                     _e239922240206_
                     _hd239921240209_
                     _tl239920240211_
                     _e239925240214_
                     _hd239924240217_
                     _tl239923240219_
                     _e239928240222_
                     _hd239927240225_
                     _tl239926240227_
                     _e239931240230_
                     _hd239930240233_
                     _tl239929240235_
                     _e239934240238_
                     _hd239933240241_
                     _tl239932240243_
                     _e239937240246_
                     _hd239936240249_
                     _tl239935240251_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match248381248382_
                                                     _e239904240158_
                                                     _hd239903240161_
                                                     _tl239902240163_
                                                     _e239916240190_
                                                     _hd239915240193_
                                                     _tl239914240195_
                                                     _e239919240198_
                                                     _hd239918240201_
                                                     _tl239917240203_
                                                     _e239922240206_
                                                     _hd239921240209_
                                                     _tl239920240211_
                                                     _e239925240214_
                                                     _hd239924240217_
                                                     _tl239923240219_
                                                     _e239928240222_
                                                     _hd239927240225_
                                                     _tl239926240227_
                                                     _e239931240230_
                                                     _hd239930240233_
                                                     _tl239929240235_
                                                     _e239934240238_
                                                     _hd239933240241_
                                                     _tl239932240243_
                                                     _e239937240246_
                                                     _hd239936240249_
                                                     _tl239935240251_))))
                                            (let ((_xarg239946240315_
                                                   (reverse _xarg239945240288_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl239914240195_))
                                                  (let ((_L240318_
                                                         _hd239954240278_)
                                                        (_L240319_
                                                         _xarg239946240315_)
                                                        (_L240320_
                                                         _hd239936240249_)
                                                        (_L240321_
                                                         _hd239927240225_)
                                                        (_L240322_
                                                         _tl239907240168_)
                                                        (_L240323_
                                                         _arg239913240187_))
                                                    (if (and (let ((__tmp249658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp249659
                                   (lambda (_g240366240369_ _g240367240371_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g240366240369_
                                             _g240367240371_)))))
                              (declare (not safe))
                              (foldr1 __tmp249659 '() _L240323_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp249658))
                     (let () (declare (not safe)) (gx#identifier? _L240322_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L240321_ 'apply))
                     (fx= (length (let ((__tmp249656
                                         (lambda (_g240373240376_
                                                  _g240374240378_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g240373240376_
                                                   _g240374240378_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp249656 '() _L240323_)))
                          (length (let ((__tmp249657
                                         (lambda (_g240380240383_
                                                  _g240381240385_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g240380240383_
                                                   _g240381240385_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp249657 '() _L240319_))))
                     (let ((__tmp249654
                            (let ((__tmp249655
                                   (lambda (_g240387240390_ _g240388240392_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g240387240390_
                                             _g240388240392_)))))
                              (declare (not safe))
                              (foldr1 __tmp249655 '() _L240323_)))
                           (__tmp249652
                            (let ((__tmp249653
                                   (lambda (_g240394240397_ _g240395240399_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g240394240397_
                                             _g240395240399_)))))
                              (declare (not safe))
                              (foldr1 __tmp249653 '() _L240319_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp249654 __tmp249652))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L240322_ _L240318_))
                     (let ((__tmp249647
                            (let ((__tmp249651
                                   (lambda (_g240401240403_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g240401240403_
                                        _L240320_))))
                                  (__tmp249648
                                   (let ((__tmp249650
                                          (lambda (_g240405240408_
                                                   _g240406240410_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g240405240408_
                                                    _g240406240410_))))
                                         (__tmp249649
                                          (let ()
                                            (declare (not safe))
                                            (cons _L240322_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp249650
                                             __tmp249649
                                             _L240323_))))
                              (declare (not safe))
                              (find __tmp249651 __tmp249648))))
                       (declare (not safe))
                       (not __tmp249647)))
                (___kont248276248277_
                 _L240318_
                 _L240319_
                 _L240320_
                 _L240321_
                 _L240322_
                 _L240323_)
                (___match248381248382_
                 _e239904240158_
                 _hd239903240161_
                 _tl239902240163_
                 _e239916240190_
                 _hd239915240193_
                 _tl239914240195_
                 _e239919240198_
                 _hd239918240201_
                 _tl239917240203_
                 _e239922240206_
                 _hd239921240209_
                 _tl239920240211_
                 _e239925240214_
                 _hd239924240217_
                 _tl239923240219_
                 _e239928240222_
                 _hd239927240225_
                 _tl239926240227_
                 _e239931240230_
                 _hd239930240233_
                 _tl239929240235_
                 _e239934240238_
                 _hd239933240241_
                 _tl239932240243_
                 _e239937240246_
                 _hd239936240249_
                 _tl239935240251_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match248381248382_
                                                   _e239904240158_
                                                   _hd239903240161_
                                                   _tl239902240163_
                                                   _e239916240190_
                                                   _hd239915240193_
                                                   _tl239914240195_
                                                   _e239919240198_
                                                   _hd239918240201_
                                                   _tl239917240203_
                                                   _e239922240206_
                                                   _hd239921240209_
                                                   _tl239920240211_
                                                   _e239925240214_
                                                   _hd239924240217_
                                                   _tl239923240219_
                                                   _e239928240222_
                                                   _hd239927240225_
                                                   _tl239926240227_
                                                   _e239931240230_
                                                   _hd239930240233_
                                                   _tl239929240235_
                                                   _e239934240238_
                                                   _hd239933240241_
                                                   _tl239932240243_
                                                   _e239937240246_
                                                   _hd239936240249_
                                                   _tl239935240251_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop239941240283_ _target239938240254_ '())))
                            (___match248381248382_
                             _e239904240158_
                             _hd239903240161_
                             _tl239902240163_
                             _e239916240190_
                             _hd239915240193_
                             _tl239914240195_
                             _e239919240198_
                             _hd239918240201_
                             _tl239917240203_
                             _e239922240206_
                             _hd239921240209_
                             _tl239920240211_
                             _e239925240214_
                             _hd239924240217_
                             _tl239923240219_
                             _e239928240222_
                             _hd239927240225_
                             _tl239926240227_
                             _e239931240230_
                             _hd239930240233_
                             _tl239929240235_
                             _e239934240238_
                             _hd239933240241_
                             _tl239932240243_
                             _e239937240246_
                             _hd239936240249_
                             _tl239935240251_))
                        (___match248381248382_
                         _e239904240158_
                         _hd239903240161_
                         _tl239902240163_
                         _e239916240190_
                         _hd239915240193_
                         _tl239914240195_
                         _e239919240198_
                         _hd239918240201_
                         _tl239917240203_
                         _e239922240206_
                         _hd239921240209_
                         _tl239920240211_
                         _e239925240214_
                         _hd239924240217_
                         _tl239923240219_
                         _e239928240222_
                         _hd239927240225_
                         _tl239926240227_
                         _e239931240230_
                         _hd239930240233_
                         _tl239929240235_
                         _e239934240238_
                         _hd239933240241_
                         _tl239932240243_
                         _e239937240246_
                         _hd239936240249_
                         _tl239935240251_))))
                (___match248381248382_
                 _e239904240158_
                 _hd239903240161_
                 _tl239902240163_
                 _e239916240190_
                 _hd239915240193_
                 _tl239914240195_
                 _e239919240198_
                 _hd239918240201_
                 _tl239917240203_
                 _e239922240206_
                 _hd239921240209_
                 _tl239920240211_
                 _e239925240214_
                 _hd239924240217_
                 _tl239923240219_
                 _e239928240222_
                 _hd239927240225_
                 _tl239926240227_
                 _e239931240230_
                 _hd239930240233_
                 _tl239929240235_
                 _e239934240238_
                 _hd239933240241_
                 _tl239932240243_
                 _e239937240246_
                 _hd239936240249_
                 _tl239935240251_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match248381248382_
                                                     _e239904240158_
                                                     _hd239903240161_
                                                     _tl239902240163_
                                                     _e239916240190_
                                                     _hd239915240193_
                                                     _tl239914240195_
                                                     _e239919240198_
                                                     _hd239918240201_
                                                     _tl239917240203_
                                                     _e239922240206_
                                                     _hd239921240209_
                                                     _tl239920240211_
                                                     _e239925240214_
                                                     _hd239924240217_
                                                     _tl239923240219_
                                                     _e239928240222_
                                                     _hd239927240225_
                                                     _tl239926240227_
                                                     _e239931240230_
                                                     _hd239930240233_
                                                     _tl239929240235_
                                                     _e239934240238_
                                                     _hd239933240241_
                                                     _tl239932240243_
                                                     _e239937240246_
                                                     _hd239936240249_
                                                     _tl239935240251_))
                                                (___match248381248382_
                                                 _e239904240158_
                                                 _hd239903240161_
                                                 _tl239902240163_
                                                 _e239916240190_
                                                 _hd239915240193_
                                                 _tl239914240195_
                                                 _e239919240198_
                                                 _hd239918240201_
                                                 _tl239917240203_
                                                 _e239922240206_
                                                 _hd239921240209_
                                                 _tl239920240211_
                                                 _e239925240214_
                                                 _hd239924240217_
                                                 _tl239923240219_
                                                 _e239928240222_
                                                 _hd239927240225_
                                                 _tl239926240227_
                                                 _e239931240230_
                                                 _hd239930240233_
                                                 _tl239929240235_
                                                 _e239934240238_
                                                 _hd239933240241_
                                                 _tl239932240243_
                                                 _e239937240246_
                                                 _hd239936240249_
                                                 _tl239935240251_))))
                                        (___match248381248382_
                                         _e239904240158_
                                         _hd239903240161_
                                         _tl239902240163_
                                         _e239916240190_
                                         _hd239915240193_
                                         _tl239914240195_
                                         _e239919240198_
                                         _hd239918240201_
                                         _tl239917240203_
                                         _e239922240206_
                                         _hd239921240209_
                                         _tl239920240211_
                                         _e239925240214_
                                         _hd239924240217_
                                         _tl239923240219_
                                         _e239928240222_
                                         _hd239927240225_
                                         _tl239926240227_
                                         _e239931240230_
                                         _hd239930240233_
                                         _tl239929240235_
                                         _e239934240238_
                                         _hd239933240241_
                                         _tl239932240243_
                                         _e239937240246_
                                         _hd239936240249_
                                         _tl239935240251_))))
                                (___match248381248382_
                                 _e239904240158_
                                 _hd239903240161_
                                 _tl239902240163_
                                 _e239916240190_
                                 _hd239915240193_
                                 _tl239914240195_
                                 _e239919240198_
                                 _hd239918240201_
                                 _tl239917240203_
                                 _e239922240206_
                                 _hd239921240209_
                                 _tl239920240211_
                                 _e239925240214_
                                 _hd239924240217_
                                 _tl239923240219_
                                 _e239928240222_
                                 _hd239927240225_
                                 _tl239926240227_
                                 _e239931240230_
                                 _hd239930240233_
                                 _tl239929240235_
                                 _e239934240238_
                                 _hd239933240241_
                                 _tl239932240243_
                                 _e239937240246_
                                 _hd239936240249_
                                 _tl239935240251_))))
                        (___match248381248382_
                         _e239904240158_
                         _hd239903240161_
                         _tl239902240163_
                         _e239916240190_
                         _hd239915240193_
                         _tl239914240195_
                         _e239919240198_
                         _hd239918240201_
                         _tl239917240203_
                         _e239922240206_
                         _hd239921240209_
                         _tl239920240211_
                         _e239925240214_
                         _hd239924240217_
                         _tl239923240219_
                         _e239928240222_
                         _hd239927240225_
                         _tl239926240227_
                         _e239931240230_
                         _hd239930240233_
                         _tl239929240235_
                         _e239934240238_
                         _hd239933240241_
                         _tl239932240243_
                         _e239937240246_
                         _hd239936240249_
                         _tl239935240251_))
                    (___match248381248382_
                     _e239904240158_
                     _hd239903240161_
                     _tl239902240163_
                     _e239916240190_
                     _hd239915240193_
                     _tl239914240195_
                     _e239919240198_
                     _hd239918240201_
                     _tl239917240203_
                     _e239922240206_
                     _hd239921240209_
                     _tl239920240211_
                     _e239925240214_
                     _hd239924240217_
                     _tl239923240219_
                     _e239928240222_
                     _hd239927240225_
                     _tl239926240227_
                     _e239931240230_
                     _hd239930240233_
                     _tl239929240235_
                     _e239934240238_
                     _hd239933240241_
                     _tl239932240243_
                     _e239937240246_
                     _hd239936240249_
                     _tl239935240251_))
                (___kont248284248285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont248284248285_))
                                            (___kont248284248285_))
                                        (___kont248284248285_))))
                                (___kont248284248285_))))
                        (___kont248284248285_))
                    (___kont248284248285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont248284248285_))
                                                (___kont248284248285_))
                                            (___kont248284248285_))))
                                    (___kont248284248285_))))
                            (___kont248284248285_))
                        (___kont248284248285_))
                    (___kont248284248285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont248284248285_))))
                                            (___kont248284248285_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop239908240171_ _target239905240166_ '())))))
                   (___match248299248300_
                    (lambda (_e239856240418_
                             _hd239855240421_
                             _tl239854240423_
                             ___splice248272248273_
                             _target239857240426_
                             _tl239859240428_)
                      (letrec ((_loop239860240431_
                                (lambda (_hd239858240434_ _arg239864240436_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd239858240434_))
                                      (let ((_e239861240439_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd239858240434_))))
                                        (let ((_lp-tl239863240444_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e239861240439_)))
                                              (_lp-hd239862240442_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e239861240439_))))
                                          (let ((__tmp249675
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd239862240442_
                                                         _arg239864240436_))))
                                            (declare (not safe))
                                            (_loop239860240431_
                                             _lp-tl239863240444_
                                             __tmp249675))))
                                      (let ((_arg239865240447_
                                             (reverse _arg239864240436_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl239854240423_))
                                            (let ((_e239868240450_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl239854240423_))))
                                              (let ((_tl239866240455_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e239868240450_)))
                                                    (_hd239867240453_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e239868240450_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd239867240453_))
                                                    (let ((_e239871240458_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd239867240453_))))
                                                      (let ((_tl239869240463_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239871240458_)))
                    (_hd239870240461_
                     (let () (declare (not safe)) (##car _e239871240458_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd239870240461_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd239870240461_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239869240463_))
                            (let ((_e239874240466_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239869240463_))))
                              (let ((_tl239872240471_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239874240466_)))
                                    (_hd239873240469_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239874240466_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd239873240469_))
                                    (let ((_e239877240474_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd239873240469_))))
                                      (let ((_tl239875240479_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239877240474_)))
                                            (_hd239876240477_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239877240474_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd239876240477_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd239876240477_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl239875240479_))
                                                    (let ((_e239880240482_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl239875240479_))))
                                                      (let ((_tl239878240487_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239880240482_)))
                    (_hd239879240485_
                     (let () (declare (not safe)) (##car _e239880240482_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl239878240487_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl239872240471_))
                        (let ((___splice248274248275_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl239872240471_
                                  '0))))
                          (let ((_tl239883240492_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice248274248275_ '1)))
                                (_target239881240490_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice248274248275_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl239883240492_))
                                (letrec ((_loop239884240495_
                                          (lambda (_hd239882240498_
                                                   _xarg239888240500_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd239882240498_))
                                                (let ((_e239885240503_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd239882240498_))))
                                                  (let ((_lp-tl239887240508_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239885240503_)))
                                                        (_lp-hd239886240506_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239885240503_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd239886240506_))
                                                        (let ((_e239892240511_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd239886240506_))))
                  (let ((_tl239890240516_
                         (let () (declare (not safe)) (##cdr _e239892240511_)))
                        (_hd239891240514_
                         (let ()
                           (declare (not safe))
                           (##car _e239892240511_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd239891240514_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd239891240514_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl239890240516_))
                                (let ((_e239895240519_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl239890240516_))))
                                  (let ((_tl239893240524_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239895240519_)))
                                        (_hd239894240522_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239895240519_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl239893240524_))
                                        (let ((__tmp249674
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd239894240522_
                                                       _xarg239888240500_))))
                                          (declare (not safe))
                                          (_loop239884240495_
                                           _lp-tl239887240508_
                                           __tmp249674))
                                        (___match248311248312_
                                         _e239856240418_
                                         _hd239855240421_
                                         _tl239854240423_
                                         ___splice248272248273_
                                         _target239857240426_
                                         _tl239859240428_))))
                                (___match248311248312_
                                 _e239856240418_
                                 _hd239855240421_
                                 _tl239854240423_
                                 ___splice248272248273_
                                 _target239857240426_
                                 _tl239859240428_))
                            (___match248311248312_
                             _e239856240418_
                             _hd239855240421_
                             _tl239854240423_
                             ___splice248272248273_
                             _target239857240426_
                             _tl239859240428_))
                        (___match248311248312_
                         _e239856240418_
                         _hd239855240421_
                         _tl239854240423_
                         ___splice248272248273_
                         _target239857240426_
                         _tl239859240428_))))
                (___match248311248312_
                 _e239856240418_
                 _hd239855240421_
                 _tl239854240423_
                 ___splice248272248273_
                 _target239857240426_
                 _tl239859240428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg239889240527_
                                                       (reverse _xarg239888240500_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl239866240455_))
                                                      (let ((_L240530_
                                                             _xarg239889240527_)
                                                            (_L240531_
                                                             _hd239879240485_)
                                                            (_L240532_
                                                             _arg239865240447_))
                                                        (if (and (let ((__tmp249672
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp249673
                                       (lambda (_g240560240563_
                                                _g240561240565_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g240560240563_
                                                 _g240561240565_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp249673 '() _L240532_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp249672))
                         (fx= (length (let ((__tmp249670
                                             (lambda (_g240567240570_
                                                      _g240568240572_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g240567240570_
                                                       _g240568240572_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp249670 '() _L240532_)))
                              (length (let ((__tmp249671
                                             (lambda (_g240574240577_
                                                      _g240575240579_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g240574240577_
                                                       _g240575240579_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp249671 '() _L240530_))))
                         (let ((__tmp249668
                                (let ((__tmp249669
                                       (lambda (_g240581240584_
                                                _g240582240586_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g240581240584_
                                                 _g240582240586_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp249669 '() _L240532_)))
                               (__tmp249666
                                (let ((__tmp249667
                                       (lambda (_g240588240591_
                                                _g240589240593_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g240588240591_
                                                 _g240589240593_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp249667 '() _L240530_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp249668
                                    __tmp249666))
                         (let ((__tmp249662
                                (let ((__tmp249665
                                       (lambda (_g240595240597_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g240595240597_
                                            _L240531_))))
                                      (__tmp249663
                                       (let ((__tmp249664
                                              (lambda (_g240599240602_
                                                       _g240600240604_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g240599240602_
                                                        _g240600240604_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp249664 '() _L240532_))))
                                  (declare (not safe))
                                  (find __tmp249665 __tmp249663))))
                           (declare (not safe))
                           (not __tmp249662)))
                    (___kont248270248271_ _L240530_ _L240531_ _L240532_)
                    (___match248311248312_
                     _e239856240418_
                     _hd239855240421_
                     _tl239854240423_
                     ___splice248272248273_
                     _target239857240426_
                     _tl239859240428_)))
              (___match248311248312_
               _e239856240418_
               _hd239855240421_
               _tl239854240423_
               ___splice248272248273_
               _target239857240426_
               _tl239859240428_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop239884240495_
                                     _target239881240490_
                                     '())))
                                (___match248311248312_
                                 _e239856240418_
                                 _hd239855240421_
                                 _tl239854240423_
                                 ___splice248272248273_
                                 _target239857240426_
                                 _tl239859240428_))))
                        (___match248311248312_
                         _e239856240418_
                         _hd239855240421_
                         _tl239854240423_
                         ___splice248272248273_
                         _target239857240426_
                         _tl239859240428_))
                    (___match248311248312_
                     _e239856240418_
                     _hd239855240421_
                     _tl239854240423_
                     ___splice248272248273_
                     _target239857240426_
                     _tl239859240428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match248311248312_
                                                     _e239856240418_
                                                     _hd239855240421_
                                                     _tl239854240423_
                                                     ___splice248272248273_
                                                     _target239857240426_
                                                     _tl239859240428_))
                                                (___match248311248312_
                                                 _e239856240418_
                                                 _hd239855240421_
                                                 _tl239854240423_
                                                 ___splice248272248273_
                                                 _target239857240426_
                                                 _tl239859240428_))
                                            (___match248311248312_
                                             _e239856240418_
                                             _hd239855240421_
                                             _tl239854240423_
                                             ___splice248272248273_
                                             _target239857240426_
                                             _tl239859240428_))))
                                    (___match248311248312_
                                     _e239856240418_
                                     _hd239855240421_
                                     _tl239854240423_
                                     ___splice248272248273_
                                     _target239857240426_
                                     _tl239859240428_))))
                            (___match248311248312_
                             _e239856240418_
                             _hd239855240421_
                             _tl239854240423_
                             ___splice248272248273_
                             _target239857240426_
                             _tl239859240428_))
                        (___match248311248312_
                         _e239856240418_
                         _hd239855240421_
                         _tl239854240423_
                         ___splice248272248273_
                         _target239857240426_
                         _tl239859240428_))
                    (___match248311248312_
                     _e239856240418_
                     _hd239855240421_
                     _tl239854240423_
                     ___splice248272248273_
                     _target239857240426_
                     _tl239859240428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match248311248312_
                                                     _e239856240418_
                                                     _hd239855240421_
                                                     _tl239854240423_
                                                     ___splice248272248273_
                                                     _target239857240426_
                                                     _tl239859240428_))))
                                            (___match248311248312_
                                             _e239856240418_
                                             _hd239855240421_
                                             _tl239854240423_
                                             ___splice248272248273_
                                             _target239857240426_
                                             _tl239859240428_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop239860240431_ _target239857240426_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx248268248269_))
                  (let ((_e239856240418_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx248268248269_))))
                    (let ((_tl239854240423_
                           (let ()
                             (declare (not safe))
                             (##cdr _e239856240418_)))
                          (_hd239855240421_
                           (let ()
                             (declare (not safe))
                             (##car _e239856240418_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd239855240421_))
                          (let ((___splice248272248273_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd239855240421_
                                    '0))))
                            (let ((_tl239859240428_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice248272248273_ '1)))
                                  (_target239857240426_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice248272248273_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl239859240428_))
                                  (___match248299248300_
                                   _e239856240418_
                                   _hd239855240421_
                                   _tl239854240423_
                                   ___splice248272248273_
                                   _target239857240426_
                                   _tl239859240428_)
                                  (___match248311248312_
                                   _e239856240418_
                                   _hd239855240421_
                                   _tl239854240423_
                                   ___splice248272248273_
                                   _target239857240426_
                                   _tl239859240428_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl239854240423_))
                              (let ((_e239971240026_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl239854240423_))))
                                (let ((_tl239969240031_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e239971240026_)))
                                      (_hd239970240029_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e239971240026_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd239970240029_))
                                      (let ((_e239974240034_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd239970240029_))))
                                        (let ((_tl239972240039_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e239974240034_)))
                                              (_hd239973240037_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e239974240034_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd239973240037_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd239973240037_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl239972240039_))
                                                      (let ((_e239977240042_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl239972240039_))))
                (let ((_tl239975240047_
                       (let () (declare (not safe)) (##cdr _e239977240042_)))
                      (_hd239976240045_
                       (let () (declare (not safe)) (##car _e239977240042_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd239976240045_))
                      (let ((_e239980240050_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd239976240045_))))
                        (let ((_tl239978240055_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e239980240050_)))
                              (_hd239979240053_
                               (let ()
                                 (declare (not safe))
                                 (##car _e239980240050_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd239979240053_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd239979240053_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl239978240055_))
                                      (let ((_e239983240058_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl239978240055_))))
                                        (let ((_tl239981240063_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e239983240058_)))
                                              (_hd239982240061_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e239983240058_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl239981240063_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl239975240047_))
                                                  (let ((_e239986240066_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl239975240047_))))
                                                    (let ((_tl239984240071_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e239986240066_)))
                                                          (_hd239985240069_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e239986240066_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd239985240069_))
                                                          (let ((_e239989240074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd239985240069_))))
                    (let ((_tl239987240079_
                           (let ()
                             (declare (not safe))
                             (##cdr _e239989240074_)))
                          (_hd239988240077_
                           (let ()
                             (declare (not safe))
                             (##car _e239989240074_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd239988240077_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd239988240077_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl239987240079_))
                                  (let ((_e239992240082_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl239987240079_))))
                                    (let ((_tl239990240087_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e239992240082_)))
                                          (_hd239991240085_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e239992240082_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl239990240087_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl239984240071_))
                                              (let ((_e239995240090_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl239984240071_))))
                                                (let ((_tl239993240095_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e239995240090_)))
                                                      (_hd239994240093_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e239995240090_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd239994240093_))
                                                      (let ((_e239998240098_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd239994240093_))))
                (let ((_tl239996240103_
                       (let () (declare (not safe)) (##cdr _e239998240098_)))
                      (_hd239997240101_
                       (let () (declare (not safe)) (##car _e239998240098_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd239997240101_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd239997240101_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl239996240103_))
                              (let ((_e240001240106_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl239996240103_))))
                                (let ((_tl239999240111_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240001240106_)))
                                      (_hd240000240109_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240001240106_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl239999240111_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl239993240095_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl239969240031_))
                                              (___match248409248410_
                                               _e239856240418_
                                               _hd239855240421_
                                               _tl239854240423_
                                               _e239971240026_
                                               _hd239970240029_
                                               _tl239969240031_
                                               _e239974240034_
                                               _hd239973240037_
                                               _tl239972240039_
                                               _e239977240042_
                                               _hd239976240045_
                                               _tl239975240047_
                                               _e239980240050_
                                               _hd239979240053_
                                               _tl239978240055_
                                               _e239983240058_
                                               _hd239982240061_
                                               _tl239981240063_
                                               _e239986240066_
                                               _hd239985240069_
                                               _tl239984240071_
                                               _e239989240074_
                                               _hd239988240077_
                                               _tl239987240079_
                                               _e239992240082_
                                               _hd239991240085_
                                               _tl239990240087_
                                               _e239995240090_
                                               _hd239994240093_
                                               _tl239993240095_
                                               _e239998240098_
                                               _hd239997240101_
                                               _tl239996240103_
                                               _e240001240106_
                                               _hd240000240109_
                                               _tl239999240111_)
                                              (___kont248284248285_))
                                          (___kont248284248285_))
                                      (___kont248284248285_))))
                              (___kont248284248285_))
                          (___kont248284248285_))
                      (___kont248284248285_))))
              (___kont248284248285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont248284248285_))
                                          (___kont248284248285_))))
                                  (___kont248284248285_))
                              (___kont248284248285_))
                          (___kont248284248285_))))
                  (___kont248284248285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont248284248285_))
                                              (___kont248284248285_))))
                                      (___kont248284248285_))
                                  (___kont248284248285_))
                              (___kont248284248285_))))
                      (___kont248284248285_))))
              (___kont248284248285_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont248284248285_))
                                              (___kont248284248285_))))
                                      (___kont248284248285_))))
                              (___kont248284248285_)))))
                  (___kont248284248285_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form239312_)
        (let* ((___stx248412248413_ _form239312_)
               (_g239316239440_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx248412248413_)))))
          (let ((___kont248414248415_
                 (lambda (_L239810_ _L239811_ _L239812_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L239811_))))
                (___kont248420248421_
                 (lambda (_L239658_ _L239659_ _L239660_ _L239661_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L239658_))))
                (___kont248424248425_
                 (lambda (_L239525_ _L239526_ _L239527_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L239525_)))))
            (let* ((___match248521248522_
                    (lambda (_e239408239445_
                             _hd239407239448_
                             _tl239406239450_
                             _e239411239453_
                             _hd239410239456_
                             _tl239409239458_
                             _e239414239461_
                             _hd239413239464_
                             _tl239412239466_
                             _e239417239469_
                             _hd239416239472_
                             _tl239415239474_
                             _e239420239477_
                             _hd239419239480_
                             _tl239418239482_
                             _e239423239485_
                             _hd239422239488_
                             _tl239421239490_
                             _e239426239493_
                             _hd239425239496_
                             _tl239424239498_
                             _e239429239501_
                             _hd239428239504_
                             _tl239427239506_
                             _e239432239509_
                             _hd239431239512_
                             _tl239430239514_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl239424239498_))
                          (let ((_e239435239517_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl239424239498_))))
                            (let ((_tl239433239522_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e239435239517_)))
                                  (_hd239434239520_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e239435239517_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl239433239522_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl239409239458_))
                                      (___kont248424248425_
                                       _hd239431239512_
                                       _hd239422239488_
                                       _hd239407239448_)
                                      (let ()
                                        (declare (not safe))
                                        (_g239316239440_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g239316239440_)))))
                          (let () (declare (not safe)) (_g239316239440_)))))
                   (___match248451248452_
                    (lambda (_e239369239562_
                             _hd239368239565_
                             _tl239367239567_
                             ___splice248422248423_
                             _target239370239570_
                             _tl239372239572_)
                      (letrec ((_loop239373239575_
                                (lambda (_hd239371239578_ _arg239377239580_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd239371239578_))
                                      (let ((_e239374239583_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd239371239578_))))
                                        (let ((_lp-tl239376239588_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e239374239583_)))
                                              (_lp-hd239375239586_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e239374239583_))))
                                          (let ((__tmp249676
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd239375239586_
                                                         _arg239377239580_))))
                                            (declare (not safe))
                                            (_loop239373239575_
                                             _lp-tl239376239588_
                                             __tmp249676))))
                                      (let ((_arg239378239591_
                                             (reverse _arg239377239580_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl239367239567_))
                                            (let ((_e239381239594_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl239367239567_))))
                                              (let ((_tl239379239599_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e239381239594_)))
                                                    (_hd239380239597_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e239381239594_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd239380239597_))
                                                    (let ((_e239384239602_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd239380239597_))))
                                                      (let ((_tl239382239607_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239384239602_)))
                    (_hd239383239605_
                     (let () (declare (not safe)) (##car _e239384239602_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd239383239605_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd239383239605_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239382239607_))
                            (let ((_e239387239610_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239382239607_))))
                              (let ((_tl239385239615_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239387239610_)))
                                    (_hd239386239613_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239387239610_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd239386239613_))
                                    (let ((_e239390239618_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd239386239613_))))
                                      (let ((_tl239388239623_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239390239618_)))
                                            (_hd239389239621_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239390239618_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd239389239621_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd239389239621_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl239388239623_))
                                                    (let ((_e239393239626_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl239388239623_))))
                                                      (let ((_tl239391239631_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239393239626_)))
                    (_hd239392239629_
                     (let () (declare (not safe)) (##car _e239393239626_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl239391239631_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl239385239615_))
                        (let ((_e239396239634_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl239385239615_))))
                          (let ((_tl239394239639_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e239396239634_)))
                                (_hd239395239637_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e239396239634_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd239395239637_))
                                (let ((_e239399239642_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd239395239637_))))
                                  (let ((_tl239397239647_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239399239642_)))
                                        (_hd239398239645_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239399239642_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd239398239645_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd239398239645_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl239397239647_))
                                                (let ((_e239402239650_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl239397239647_))))
                                                  (let ((_tl239400239655_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239402239650_)))
                                                        (_hd239401239653_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239402239650_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl239400239655_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl239379239599_))
                                                            (___kont248420248421_
                                                             _hd239401239653_
                                                             _hd239392239629_
                                                             _tl239372239572_
                                                             _arg239378239591_)
                                                            (___match248521248522_
                                                             _e239369239562_
                                                             _hd239368239565_
                                                             _tl239367239567_
                                                             _e239381239594_
                                                             _hd239380239597_
                                                             _tl239379239599_
                                                             _e239384239602_
                                                             _hd239383239605_
                                                             _tl239382239607_
                                                             _e239387239610_
                                                             _hd239386239613_
                                                             _tl239385239615_
                                                             _e239390239618_
                                                             _hd239389239621_
                                                             _tl239388239623_
                                                             _e239393239626_
                                                             _hd239392239629_
                                                             _tl239391239631_
                                                             _e239396239634_
                                                             _hd239395239637_
                                                             _tl239394239639_
                                                             _e239399239642_
                                                             _hd239398239645_
                                                             _tl239397239647_
                                                             _e239402239650_
                                                             _hd239401239653_
                                                             _tl239400239655_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g239316239440_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g239316239440_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g239316239440_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g239316239440_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g239316239440_)))))
                        (let () (declare (not safe)) (_g239316239440_)))
                    (let () (declare (not safe)) (_g239316239440_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g239316239440_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g239316239440_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g239316239440_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g239316239440_)))))
                            (let () (declare (not safe)) (_g239316239440_)))
                        (let () (declare (not safe)) (_g239316239440_)))
                    (let () (declare (not safe)) (_g239316239440_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g239316239440_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g239316239440_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop239373239575_ _target239370239570_ '())))))
                   (___match248439248440_
                    (lambda (_e239323239698_
                             _hd239322239701_
                             _tl239321239703_
                             ___splice248416248417_
                             _target239324239706_
                             _tl239326239708_)
                      (letrec ((_loop239327239711_
                                (lambda (_hd239325239714_ _arg239331239716_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd239325239714_))
                                      (let ((_e239328239719_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd239325239714_))))
                                        (let ((_lp-tl239330239724_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e239328239719_)))
                                              (_lp-hd239329239722_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e239328239719_))))
                                          (let ((__tmp249678
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd239329239722_
                                                         _arg239331239716_))))
                                            (declare (not safe))
                                            (_loop239327239711_
                                             _lp-tl239330239724_
                                             __tmp249678))))
                                      (let ((_arg239332239727_
                                             (reverse _arg239331239716_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl239321239703_))
                                            (let ((_e239335239730_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl239321239703_))))
                                              (let ((_tl239333239735_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e239335239730_)))
                                                    (_hd239334239733_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e239335239730_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd239334239733_))
                                                    (let ((_e239338239738_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd239334239733_))))
                                                      (let ((_tl239336239743_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239338239738_)))
                    (_hd239337239741_
                     (let () (declare (not safe)) (##car _e239338239738_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd239337239741_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd239337239741_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239336239743_))
                            (let ((_e239341239746_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239336239743_))))
                              (let ((_tl239339239751_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239341239746_)))
                                    (_hd239340239749_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239341239746_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd239340239749_))
                                    (let ((_e239344239754_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd239340239749_))))
                                      (let ((_tl239342239759_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239344239754_)))
                                            (_hd239343239757_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239344239754_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd239343239757_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd239343239757_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl239342239759_))
                                                    (let ((_e239347239762_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl239342239759_))))
                                                      (let ((_tl239345239767_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239347239762_)))
                    (_hd239346239765_
                     (let () (declare (not safe)) (##car _e239347239762_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl239345239767_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl239339239751_))
                        (let ((___splice248418248419_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl239339239751_
                                  '0))))
                          (let ((_tl239350239772_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice248418248419_ '1)))
                                (_target239348239770_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice248418248419_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl239350239772_))
                                (letrec ((_loop239351239775_
                                          (lambda (_hd239349239778_
                                                   _xarg239355239780_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd239349239778_))
                                                (let ((_e239352239783_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd239349239778_))))
                                                  (let ((_lp-tl239354239788_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239352239783_)))
                                                        (_lp-hd239353239786_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239352239783_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd239353239786_))
                                                        (let ((_e239359239791_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd239353239786_))))
                  (let ((_tl239357239796_
                         (let () (declare (not safe)) (##cdr _e239359239791_)))
                        (_hd239358239794_
                         (let ()
                           (declare (not safe))
                           (##car _e239359239791_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd239358239794_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd239358239794_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl239357239796_))
                                (let ((_e239362239799_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl239357239796_))))
                                  (let ((_tl239360239804_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239362239799_)))
                                        (_hd239361239802_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239362239799_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl239360239804_))
                                        (let ((__tmp249677
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd239361239802_
                                                       _xarg239355239780_))))
                                          (declare (not safe))
                                          (_loop239351239775_
                                           _lp-tl239354239788_
                                           __tmp249677))
                                        (___match248451248452_
                                         _e239323239698_
                                         _hd239322239701_
                                         _tl239321239703_
                                         ___splice248416248417_
                                         _target239324239706_
                                         _tl239326239708_))))
                                (___match248451248452_
                                 _e239323239698_
                                 _hd239322239701_
                                 _tl239321239703_
                                 ___splice248416248417_
                                 _target239324239706_
                                 _tl239326239708_))
                            (___match248451248452_
                             _e239323239698_
                             _hd239322239701_
                             _tl239321239703_
                             ___splice248416248417_
                             _target239324239706_
                             _tl239326239708_))
                        (___match248451248452_
                         _e239323239698_
                         _hd239322239701_
                         _tl239321239703_
                         ___splice248416248417_
                         _target239324239706_
                         _tl239326239708_))))
                (___match248451248452_
                 _e239323239698_
                 _hd239322239701_
                 _tl239321239703_
                 ___splice248416248417_
                 _target239324239706_
                 _tl239326239708_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg239356239807_
                                                       (reverse _xarg239355239780_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl239333239735_))
                                                      (___kont248414248415_
                                                       _xarg239356239807_
                                                       _hd239346239765_
                                                       _arg239332239727_)
                                                      (___match248451248452_
                                                       _e239323239698_
                                                       _hd239322239701_
                                                       _tl239321239703_
                                                       ___splice248416248417_
                                                       _target239324239706_
                                                       _tl239326239708_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop239351239775_
                                     _target239348239770_
                                     '())))
                                (___match248451248452_
                                 _e239323239698_
                                 _hd239322239701_
                                 _tl239321239703_
                                 ___splice248416248417_
                                 _target239324239706_
                                 _tl239326239708_))))
                        (___match248451248452_
                         _e239323239698_
                         _hd239322239701_
                         _tl239321239703_
                         ___splice248416248417_
                         _target239324239706_
                         _tl239326239708_))
                    (___match248451248452_
                     _e239323239698_
                     _hd239322239701_
                     _tl239321239703_
                     ___splice248416248417_
                     _target239324239706_
                     _tl239326239708_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match248451248452_
                                                     _e239323239698_
                                                     _hd239322239701_
                                                     _tl239321239703_
                                                     ___splice248416248417_
                                                     _target239324239706_
                                                     _tl239326239708_))
                                                (___match248451248452_
                                                 _e239323239698_
                                                 _hd239322239701_
                                                 _tl239321239703_
                                                 ___splice248416248417_
                                                 _target239324239706_
                                                 _tl239326239708_))
                                            (___match248451248452_
                                             _e239323239698_
                                             _hd239322239701_
                                             _tl239321239703_
                                             ___splice248416248417_
                                             _target239324239706_
                                             _tl239326239708_))))
                                    (___match248451248452_
                                     _e239323239698_
                                     _hd239322239701_
                                     _tl239321239703_
                                     ___splice248416248417_
                                     _target239324239706_
                                     _tl239326239708_))))
                            (___match248451248452_
                             _e239323239698_
                             _hd239322239701_
                             _tl239321239703_
                             ___splice248416248417_
                             _target239324239706_
                             _tl239326239708_))
                        (___match248451248452_
                         _e239323239698_
                         _hd239322239701_
                         _tl239321239703_
                         ___splice248416248417_
                         _target239324239706_
                         _tl239326239708_))
                    (___match248451248452_
                     _e239323239698_
                     _hd239322239701_
                     _tl239321239703_
                     ___splice248416248417_
                     _target239324239706_
                     _tl239326239708_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match248451248452_
                                                     _e239323239698_
                                                     _hd239322239701_
                                                     _tl239321239703_
                                                     ___splice248416248417_
                                                     _target239324239706_
                                                     _tl239326239708_))))
                                            (___match248451248452_
                                             _e239323239698_
                                             _hd239322239701_
                                             _tl239321239703_
                                             ___splice248416248417_
                                             _target239324239706_
                                             _tl239326239708_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop239327239711_ _target239324239706_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx248412248413_))
                  (let ((_e239323239698_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx248412248413_))))
                    (let ((_tl239321239703_
                           (let ()
                             (declare (not safe))
                             (##cdr _e239323239698_)))
                          (_hd239322239701_
                           (let ()
                             (declare (not safe))
                             (##car _e239323239698_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd239322239701_))
                          (let ((___splice248416248417_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd239322239701_
                                    '0))))
                            (let ((_tl239326239708_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice248416248417_ '1)))
                                  (_target239324239706_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice248416248417_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl239326239708_))
                                  (___match248439248440_
                                   _e239323239698_
                                   _hd239322239701_
                                   _tl239321239703_
                                   ___splice248416248417_
                                   _target239324239706_
                                   _tl239326239708_)
                                  (___match248451248452_
                                   _e239323239698_
                                   _hd239322239701_
                                   _tl239321239703_
                                   ___splice248416248417_
                                   _target239324239706_
                                   _tl239326239708_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl239321239703_))
                              (let ((_e239411239453_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl239321239703_))))
                                (let ((_tl239409239458_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e239411239453_)))
                                      (_hd239410239456_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e239411239453_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd239410239456_))
                                      (let ((_e239414239461_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd239410239456_))))
                                        (let ((_tl239412239466_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e239414239461_)))
                                              (_hd239413239464_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e239414239461_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd239413239464_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd239413239464_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl239412239466_))
                                                      (let ((_e239417239469_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl239412239466_))))
                (let ((_tl239415239474_
                       (let () (declare (not safe)) (##cdr _e239417239469_)))
                      (_hd239416239472_
                       (let () (declare (not safe)) (##car _e239417239469_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd239416239472_))
                      (let ((_e239420239477_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd239416239472_))))
                        (let ((_tl239418239482_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e239420239477_)))
                              (_hd239419239480_
                               (let ()
                                 (declare (not safe))
                                 (##car _e239420239477_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd239419239480_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd239419239480_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl239418239482_))
                                      (let ((_e239423239485_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl239418239482_))))
                                        (let ((_tl239421239490_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e239423239485_)))
                                              (_hd239422239488_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e239423239485_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl239421239490_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl239415239474_))
                                                  (let ((_e239426239493_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl239415239474_))))
                                                    (let ((_tl239424239498_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e239426239493_)))
                                                          (_hd239425239496_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e239426239493_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd239425239496_))
                                                          (let ((_e239429239501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd239425239496_))))
                    (let ((_tl239427239506_
                           (let ()
                             (declare (not safe))
                             (##cdr _e239429239501_)))
                          (_hd239428239504_
                           (let ()
                             (declare (not safe))
                             (##car _e239429239501_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd239428239504_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd239428239504_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl239427239506_))
                                  (let ((_e239432239509_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl239427239506_))))
                                    (let ((_tl239430239514_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e239432239509_)))
                                          (_hd239431239512_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e239432239509_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl239430239514_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl239424239498_))
                                              (let ((_e239435239517_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl239424239498_))))
                                                (let ((_tl239433239522_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e239435239517_)))
                                                      (_hd239434239520_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e239435239517_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl239433239522_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl239409239458_))
                                                          (___kont248424248425_
                                                           _hd239431239512_
                                                           _hd239422239488_
                                                           _hd239322239701_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g239316239440_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g239316239440_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g239316239440_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g239316239440_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g239316239440_)))
                              (let () (declare (not safe)) (_g239316239440_)))
                          (let () (declare (not safe)) (_g239316239440_)))))
                  (let () (declare (not safe)) (_g239316239440_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g239316239440_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g239316239440_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g239316239440_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g239316239440_)))
                              (let ()
                                (declare (not safe))
                                (_g239316239440_)))))
                      (let () (declare (not safe)) (_g239316239440_)))))
              (let () (declare (not safe)) (_g239316239440_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g239316239440_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g239316239440_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g239316239440_)))))
                              (let ()
                                (declare (not safe))
                                (_g239316239440_))))))
                  (let () (declare (not safe)) (_g239316239440_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form239116_)
        (let* ((_g239118239132_
                (lambda (_g239119239129_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g239119239129_))))
               (_g239117239309_
                (lambda (_g239119239135_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g239119239135_))
                      (let ((_e239124239137_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g239119239135_))))
                        (let ((_hd239123239140_
                               (let ()
                                 (declare (not safe))
                                 (##car _e239124239137_)))
                              (_tl239122239142_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e239124239137_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl239122239142_))
                              (let ((_e239127239145_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl239122239142_))))
                                (let ((_hd239126239148_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e239127239145_)))
                                      (_tl239125239150_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e239127239145_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl239125239150_))
                                      ((lambda (_L239153_ _L239154_)
                                         (let* ((___stx248534248535_ _L239154_)
                                                (_g239169239197_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx248534248535_)))))
                                           (let ((___kont248536248537_
                                                  (lambda (_L239288_)
                                                    (length (let ((__tmp249679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g239298239301_ _g239299239303_)
                             (let ()
                               (declare (not safe))
                               (cons _g239298239301_ _g239299239303_)))))
                      (declare (not safe))
                      (foldr1 __tmp249679 '() _L239288_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont248540248541_
                                                  (lambda (_L239239_ _L239240_)
                                                    (let ((__tmp249680
                                                           (length (let ((__tmp249681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g239251239254_ _g239252239256_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g239251239254_
                                            _g239252239256_)))))
                             (declare (not safe))
                             (foldr1 __tmp249681 '() _L239240_)))))
              (declare (not safe))
              (cons __tmp249680 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont248544248545_
                                                  (lambda (_L239202_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match248559248560_
                                                     (lambda (___splice248542248543_
                                                              _target239183239215_
                                                              _tl239185239217_)
                                                       (letrec ((_loop239186239220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd239184239223_ _arg239190239225_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd239184239223_))
                               (let ((_e239187239228_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd239184239223_))))
                                 (let ((_lp-tl239189239233_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e239187239228_)))
                                       (_lp-hd239188239231_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e239187239228_))))
                                   (let ((__tmp249682
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd239188239231_
                                                  _arg239190239225_))))
                                     (declare (not safe))
                                     (_loop239186239220_
                                      _lp-tl239189239233_
                                      __tmp249682))))
                               (let ((_arg239191239236_
                                      (reverse _arg239190239225_)))
                                 (___kont248540248541_
                                  _tl239185239217_
                                  _arg239191239236_))))))
                 (let ()
                   (declare (not safe))
                   (_loop239186239220_ _target239183239215_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match248553248554_
                                                     (lambda (___splice248538248539_
                                                              _target239172239264_
                                                              _tl239174239266_)
                                                       (letrec ((_loop239175239269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd239173239272_ _arg239179239274_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd239173239272_))
                               (let ((_e239176239277_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd239173239272_))))
                                 (let ((_lp-tl239178239282_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e239176239277_)))
                                       (_lp-hd239177239280_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e239176239277_))))
                                   (let ((__tmp249683
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd239177239280_
                                                  _arg239179239274_))))
                                     (declare (not safe))
                                     (_loop239175239269_
                                      _lp-tl239178239282_
                                      __tmp249683))))
                               (let ((_arg239180239285_
                                      (reverse _arg239179239274_)))
                                 (___kont248536248537_ _arg239180239285_))))))
                 (let ()
                   (declare (not safe))
                   (_loop239175239269_ _target239172239264_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx248534248535_))
                                                   (let ((___splice248538248539_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx248534248535_
                                                             '0))))
                                                     (let ((_tl239174239266_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice248538248539_
                                                               '1)))
                                                           (_target239172239264_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice248538248539_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl239174239266_))
                                                           (___match248553248554_
                                                            ___splice248538248539_
                                                            _target239172239264_
                                                            _tl239174239266_)
                                                           (___match248559248560_
                                                            ___splice248538248539_
                                                            _target239172239264_
                                                            _tl239174239266_))))
                                                   (___kont248544248545_
                                                    ___stx248534248535_))))))
                                       _hd239126239148_
                                       _hd239123239140_)
                                      (let ()
                                        (declare (not safe))
                                        (_g239118239132_ _g239119239135_)))))
                              (let ()
                                (declare (not safe))
                                (_g239118239132_ _g239119239135_)))))
                      (let ()
                        (declare (not safe))
                        (_g239118239132_ _g239119239135_))))))
          (declare (not safe))
          (_g239117239309_ _form239116_))))
    (define gxc#lambda-expr?
      (lambda (_expr239069_)
        (let* ((___stx248562248563_ _expr239069_)
               (_g239072239082_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx248562248563_)))))
          (let ((___kont248564248565_ (lambda (_L239102_) '#t))
                (___kont248566248567_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx248562248563_))
                (let ((_e239077239094_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx248562248563_))))
                  (let ((_tl239075239099_
                         (let () (declare (not safe)) (##cdr _e239077239094_)))
                        (_hd239076239097_
                         (let ()
                           (declare (not safe))
                           (##car _e239077239094_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd239076239097_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd239076239097_))
                            (___kont248564248565_ _tl239075239099_)
                            (___kont248566248567_))
                        (___kont248566248567_))))
                (___kont248566248567_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr239022_)
        (let* ((___stx248580248581_ _expr239022_)
               (_g239025239035_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx248580248581_)))))
          (let ((___kont248582248583_ (lambda (_L239055_) '#t))
                (___kont248584248585_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx248580248581_))
                (let ((_e239030239047_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx248580248581_))))
                  (let ((_tl239028239052_
                         (let () (declare (not safe)) (##cdr _e239030239047_)))
                        (_hd239029239050_
                         (let ()
                           (declare (not safe))
                           (##car _e239030239047_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd239029239050_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd239029239050_))
                            (___kont248582248583_ _tl239028239052_)
                            (___kont248584248585_))
                        (___kont248584248585_))))
                (___kont248584248585_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr238891_)
        (let* ((___stx248598248599_ _expr238891_)
               (_g238894238924_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx248598248599_)))))
          (let ((___kont248600248601_
                 (lambda (_L238992_ _L238993_ _L238994_)
                   (if (let () (declare (not safe)) (gx#identifier? _L238994_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L238993_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L238992_))
                           '#f)
                       '#f)))
                (___kont248602248603_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx248598248599_))
                (let ((_e238901238936_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx248598248599_))))
                  (let ((_tl238899238941_
                         (let () (declare (not safe)) (##cdr _e238901238936_)))
                        (_hd238900238939_
                         (let ()
                           (declare (not safe))
                           (##car _e238901238936_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd238900238939_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd238900238939_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl238899238941_))
                                (let ((_e238904238944_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl238899238941_))))
                                  (let ((_tl238902238949_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e238904238944_)))
                                        (_hd238903238947_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e238904238944_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd238903238947_))
                                        (let ((_e238907238952_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd238903238947_))))
                                          (let ((_tl238905238957_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e238907238952_)))
                                                (_hd238906238955_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e238907238952_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd238906238955_))
                                                (let ((_e238910238960_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd238906238955_))))
                                                  (let ((_tl238908238965_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238910238960_)))
                                                        (_hd238909238963_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238910238960_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd238909238963_))
                                                        (let ((_e238913238968_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd238909238963_))))
                  (let ((_tl238911238973_
                         (let () (declare (not safe)) (##cdr _e238913238968_)))
                        (_hd238912238971_
                         (let ()
                           (declare (not safe))
                           (##car _e238913238968_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl238911238973_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl238908238965_))
                            (let ((_e238916238976_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl238908238965_))))
                              (let ((_tl238914238981_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238916238976_)))
                                    (_hd238915238979_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238916238976_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl238914238981_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl238905238957_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl238902238949_))
                                            (let ((_e238919238984_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl238902238949_))))
                                              (let ((_tl238917238989_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e238919238984_)))
                                                    (_hd238918238987_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e238919238984_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl238917238989_))
                                                    (___kont248600248601_
                                                     _hd238918238987_
                                                     _hd238915238979_
                                                     _hd238912238971_)
                                                    (___kont248602248603_))))
                                            (___kont248602248603_))
                                        (___kont248602248603_))
                                    (___kont248602248603_))))
                            (___kont248602248603_))
                        (___kont248602248603_))))
                (___kont248602248603_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont248602248603_))))
                                        (___kont248602248603_))))
                                (___kont248602248603_))
                            (___kont248602248603_))
                        (___kont248602248603_))))
                (___kont248602248603_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr238216_)
        (let* ((___stx248660248661_ _expr238216_)
               (_g238219238377_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx248660248661_)))))
          (let ((___kont248662248663_
                 (lambda (_L238765_
                          _L238766_
                          _L238767_
                          _L238768_
                          _L238769_
                          _L238770_
                          _L238771_
                          _L238772_
                          _L238773_
                          _L238774_
                          _L238775_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L238772_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L238768_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L238767_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L238775_
                                      _L238766_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L238774_
                                          _L238771_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L238769_
                                              _L238765_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L238773_
                                              _L238770_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont248664248665_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx248660248661_))
                (let ((_e238234238389_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx248660248661_))))
                  (let ((_tl238232238394_
                         (let () (declare (not safe)) (##cdr _e238234238389_)))
                        (_hd238233238392_
                         (let ()
                           (declare (not safe))
                           (##car _e238234238389_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd238233238392_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd238233238392_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl238232238394_))
                                (let ((_e238237238397_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl238232238394_))))
                                  (let ((_tl238235238402_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e238237238397_)))
                                        (_hd238236238400_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e238237238397_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd238236238400_))
                                        (let ((_e238240238405_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd238236238400_))))
                                          (let ((_tl238238238410_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e238240238405_)))
                                                (_hd238239238408_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e238240238405_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd238239238408_))
                                                (let ((_e238243238413_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd238239238408_))))
                                                  (let ((_tl238241238418_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238243238413_)))
                                                        (_hd238242238416_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238243238413_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd238242238416_))
                                                        (let ((_e238246238421_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd238242238416_))))
                  (let ((_tl238244238426_
                         (let () (declare (not safe)) (##cdr _e238246238421_)))
                        (_hd238245238424_
                         (let ()
                           (declare (not safe))
                           (##car _e238246238421_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl238244238426_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl238241238418_))
                            (let ((_e238249238429_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl238241238418_))))
                              (let ((_tl238247238434_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238249238429_)))
                                    (_hd238248238432_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238249238429_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd238248238432_))
                                    (let ((_e238252238437_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd238248238432_))))
                                      (let ((_tl238250238442_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e238252238437_)))
                                            (_hd238251238440_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e238252238437_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd238251238440_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd238251238440_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl238250238442_))
                                                    (let ((_e238255238445_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl238250238442_))))
                                                      (let ((_tl238253238450_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e238255238445_)))
                    (_hd238254238448_
                     (let () (declare (not safe)) (##car _e238255238445_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd238254238448_))
                    (let ((_e238258238453_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd238254238448_))))
                      (let ((_tl238256238458_
                             (let ()
                               (declare (not safe))
                               (##cdr _e238258238453_)))
                            (_hd238257238456_
                             (let ()
                               (declare (not safe))
                               (##car _e238258238453_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd238257238456_))
                            (let ((_e238261238461_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd238257238456_))))
                              (let ((_tl238259238466_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238261238461_)))
                                    (_hd238260238464_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238261238461_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd238260238464_))
                                    (let ((_e238264238469_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd238260238464_))))
                                      (let ((_tl238262238474_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e238264238469_)))
                                            (_hd238263238472_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e238264238469_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl238262238474_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl238259238466_))
                                                (let ((_e238267238477_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl238259238466_))))
                                                  (let ((_tl238265238482_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238267238477_)))
                                                        (_hd238266238480_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238267238477_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl238265238482_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl238256238458_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl238253238450_))
                        (let ((_e238270238485_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl238253238450_))))
                          (let ((_tl238268238490_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e238270238485_)))
                                (_hd238269238488_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e238270238485_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd238269238488_))
                                (let ((_e238273238493_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd238269238488_))))
                                  (let ((_tl238271238498_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e238273238493_)))
                                        (_hd238272238496_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e238273238493_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd238272238496_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd238272238496_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl238271238498_))
                                                (let ((_e238276238501_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl238271238498_))))
                                                  (let ((_tl238274238506_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238276238501_)))
                                                        (_hd238275238504_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238276238501_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd238275238504_))
                                                        (let ((_e238279238509_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd238275238504_))))
                  (let ((_tl238277238514_
                         (let () (declare (not safe)) (##cdr _e238279238509_)))
                        (_hd238278238512_
                         (let ()
                           (declare (not safe))
                           (##car _e238279238509_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl238274238506_))
                        (let ((_e238282238517_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl238274238506_))))
                          (let ((_tl238280238522_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e238282238517_)))
                                (_hd238281238520_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e238282238517_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd238281238520_))
                                (let ((_e238285238525_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd238281238520_))))
                                  (let ((_tl238283238530_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e238285238525_)))
                                        (_hd238284238528_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e238285238525_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd238284238528_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd238284238528_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl238283238530_))
                                                (let ((_e238288238533_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl238283238530_))))
                                                  (let ((_tl238286238538_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238288238533_)))
                                                        (_hd238287238536_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238288238533_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd238287238536_))
                                                        (let ((_e238291238541_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd238287238536_))))
                  (let ((_tl238289238546_
                         (let () (declare (not safe)) (##cdr _e238291238541_)))
                        (_hd238290238544_
                         (let ()
                           (declare (not safe))
                           (##car _e238291238541_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd238290238544_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd238290238544_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl238289238546_))
                                (let ((_e238294238549_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl238289238546_))))
                                  (let ((_tl238292238554_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e238294238549_)))
                                        (_hd238293238552_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e238294238549_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl238292238554_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl238286238538_))
                                            (let ((_e238297238557_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl238286238538_))))
                                              (let ((_tl238295238562_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e238297238557_)))
                                                    (_hd238296238560_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e238297238557_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd238296238560_))
                                                    (let ((_e238300238565_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd238296238560_))))
                                                      (let ((_tl238298238570_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e238300238565_)))
                    (_hd238299238568_
                     (let () (declare (not safe)) (##car _e238300238565_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd238299238568_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd238299238568_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl238298238570_))
                            (let ((_e238303238573_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl238298238570_))))
                              (let ((_tl238301238578_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238303238573_)))
                                    (_hd238302238576_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238303238573_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl238301238578_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl238295238562_))
                                        (let ((_e238306238581_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl238295238562_))))
                                          (let ((_tl238304238586_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e238306238581_)))
                                                (_hd238305238584_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e238306238581_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd238305238584_))
                                                (let ((_e238309238589_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd238305238584_))))
                                                  (let ((_tl238307238594_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238309238589_)))
                                                        (_hd238308238592_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238309238589_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd238308238592_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd238308238592_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl238307238594_))
                        (let ((_e238312238597_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl238307238594_))))
                          (let ((_tl238310238602_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e238312238597_)))
                                (_hd238311238600_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e238312238597_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl238310238602_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl238280238522_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl238268238490_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl238247238434_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl238238238410_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl238235238402_))
                                                    (let ((_e238315238605_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl238235238402_))))
                                                      (let ((_tl238313238610_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e238315238605_)))
                    (_hd238314238608_
                     (let () (declare (not safe)) (##car _e238315238605_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd238314238608_))
                    (let ((_e238318238613_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd238314238608_))))
                      (let ((_tl238316238618_
                             (let ()
                               (declare (not safe))
                               (##cdr _e238318238613_)))
                            (_hd238317238616_
                             (let ()
                               (declare (not safe))
                               (##car _e238318238613_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd238317238616_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd238317238616_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl238316238618_))
                                    (let ((_e238321238621_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl238316238618_))))
                                      (let ((_tl238319238626_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e238321238621_)))
                                            (_hd238320238624_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e238321238621_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl238319238626_))
                                            (let ((_e238324238629_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl238319238626_))))
                                              (let ((_tl238322238634_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e238324238629_)))
                                                    (_hd238323238632_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e238324238629_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd238323238632_))
                                                    (let ((_e238327238637_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd238323238632_))))
                                                      (let ((_tl238325238642_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e238327238637_)))
                    (_hd238326238640_
                     (let () (declare (not safe)) (##car _e238327238637_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd238326238640_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd238326238640_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl238325238642_))
                            (let ((_e238330238645_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl238325238642_))))
                              (let ((_tl238328238650_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238330238645_)))
                                    (_hd238329238648_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238330238645_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd238329238648_))
                                    (let ((_e238333238653_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd238329238648_))))
                                      (let ((_tl238331238658_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e238333238653_)))
                                            (_hd238332238656_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e238333238653_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd238332238656_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd238332238656_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl238331238658_))
                                                    (let ((_e238336238661_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl238331238658_))))
                                                      (let ((_tl238334238666_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e238336238661_)))
                    (_hd238335238664_
                     (let () (declare (not safe)) (##car _e238336238661_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl238334238666_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl238328238650_))
                        (let ((_e238339238669_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl238328238650_))))
                          (let ((_tl238337238674_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e238339238669_)))
                                (_hd238338238672_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e238339238669_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd238338238672_))
                                (let ((_e238342238677_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd238338238672_))))
                                  (let ((_tl238340238682_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e238342238677_)))
                                        (_hd238341238680_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e238342238677_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd238341238680_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd238341238680_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl238340238682_))
                                                (let ((_e238345238685_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl238340238682_))))
                                                  (let ((_tl238343238690_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238345238685_)))
                                                        (_hd238344238688_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238345238685_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl238343238690_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl238337238674_))
                                                            (let ((_e238348238693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl238337238674_))))
                      (let ((_tl238346238698_
                             (let ()
                               (declare (not safe))
                               (##cdr _e238348238693_)))
                            (_hd238347238696_
                             (let ()
                               (declare (not safe))
                               (##car _e238348238693_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd238347238696_))
                            (let ((_e238351238701_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd238347238696_))))
                              (let ((_tl238349238706_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238351238701_)))
                                    (_hd238350238704_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238351238701_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd238350238704_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd238350238704_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl238349238706_))
                                            (let ((_e238354238709_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl238349238706_))))
                                              (let ((_tl238352238714_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e238354238709_)))
                                                    (_hd238353238712_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e238354238709_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl238352238714_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl238346238698_))
                                                        (let ((_e238357238717_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl238346238698_))))
                  (let ((_tl238355238722_
                         (let () (declare (not safe)) (##cdr _e238357238717_)))
                        (_hd238356238720_
                         (let ()
                           (declare (not safe))
                           (##car _e238357238717_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd238356238720_))
                        (let ((_e238360238725_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd238356238720_))))
                          (let ((_tl238358238730_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e238360238725_)))
                                (_hd238359238728_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e238360238725_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd238359238728_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd238359238728_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl238358238730_))
                                        (let ((_e238363238733_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl238358238730_))))
                                          (let ((_tl238361238738_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e238363238733_)))
                                                (_hd238362238736_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e238363238733_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl238361238738_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl238355238722_))
                                                    (let ((_e238366238741_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl238355238722_))))
                                                      (let ((_tl238364238746_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e238366238741_)))
                    (_hd238365238744_
                     (let () (declare (not safe)) (##car _e238366238741_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd238365238744_))
                    (let ((_e238369238749_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd238365238744_))))
                      (let ((_tl238367238754_
                             (let ()
                               (declare (not safe))
                               (##cdr _e238369238749_)))
                            (_hd238368238752_
                             (let ()
                               (declare (not safe))
                               (##car _e238369238749_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd238368238752_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd238368238752_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl238367238754_))
                                    (let ((_e238372238757_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl238367238754_))))
                                      (let ((_tl238370238762_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e238372238757_)))
                                            (_hd238371238760_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e238372238757_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl238370238762_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl238364238746_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl238322238634_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl238313238610_))
                                                        (___kont248662248663_
                                                         _hd238371238760_
                                                         _hd238362238736_
                                                         _hd238344238688_
                                                         _hd238335238664_
                                                         _hd238320238624_
                                                         _hd238311238600_
                                                         _hd238302238576_
                                                         _hd238293238552_
                                                         _hd238278238512_
                                                         _hd238263238472_
                                                         _hd238245238424_)
                                                        (___kont248664248665_))
                                                    (___kont248664248665_))
                                                (___kont248664248665_))
                                            (___kont248664248665_))))
                                    (___kont248664248665_))
                                (___kont248664248665_))
                            (___kont248664248665_))))
                    (___kont248664248665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont248664248665_))
                                                (___kont248664248665_))))
                                        (___kont248664248665_))
                                    (___kont248664248665_))
                                (___kont248664248665_))))
                        (___kont248664248665_))))
                (___kont248664248665_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont248664248665_))))
                                            (___kont248664248665_))
                                        (___kont248664248665_))
                                    (___kont248664248665_))))
                            (___kont248664248665_))))
                    (___kont248664248665_))
                (___kont248664248665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont248664248665_))
                                            (___kont248664248665_))
                                        (___kont248664248665_))))
                                (___kont248664248665_))))
                        (___kont248664248665_))
                    (___kont248664248665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont248664248665_))
                                                (___kont248664248665_))
                                            (___kont248664248665_))))
                                    (___kont248664248665_))))
                            (___kont248664248665_))
                        (___kont248664248665_))
                    (___kont248664248665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont248664248665_))))
                                            (___kont248664248665_))))
                                    (___kont248664248665_))
                                (___kont248664248665_))
                            (___kont248664248665_))))
                    (___kont248664248665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont248664248665_))
                                                (___kont248664248665_))
                                            (___kont248664248665_))
                                        (___kont248664248665_))
                                    (___kont248664248665_))
                                (___kont248664248665_))))
                        (___kont248664248665_))
                    (___kont248664248665_))
                (___kont248664248665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont248664248665_))))
                                        (___kont248664248665_))
                                    (___kont248664248665_))))
                            (___kont248664248665_))
                        (___kont248664248665_))
                    (___kont248664248665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont248664248665_))))
                                            (___kont248664248665_))
                                        (___kont248664248665_))))
                                (___kont248664248665_))
                            (___kont248664248665_))
                        (___kont248664248665_))))
                (___kont248664248665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont248664248665_))
                                            (___kont248664248665_))
                                        (___kont248664248665_))))
                                (___kont248664248665_))))
                        (___kont248664248665_))))
                (___kont248664248665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont248664248665_))
                                            (___kont248664248665_))
                                        (___kont248664248665_))))
                                (___kont248664248665_))))
                        (___kont248664248665_))
                    (___kont248664248665_))
                (___kont248664248665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont248664248665_))
                                            (___kont248664248665_))))
                                    (___kont248664248665_))))
                            (___kont248664248665_))))
                    (___kont248664248665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont248664248665_))
                                                (___kont248664248665_))
                                            (___kont248664248665_))))
                                    (___kont248664248665_))))
                            (___kont248664248665_))
                        (___kont248664248665_))))
                (___kont248664248665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont248664248665_))))
                                        (___kont248664248665_))))
                                (___kont248664248665_))
                            (___kont248664248665_))
                        (___kont248664248665_))))
                (___kont248664248665_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx237958_ _id237959_ _clauses237960_ _gensym?237961_)
        (let _lp237963_ ((_rest237965_ _clauses237960_)
                         (_ids237966_ '())
                         (_impls237967_ '())
                         (_clauses237968_ '()))
          (let* ((_rest237969237977_ _rest237965_)
                 (_else237971237985_
                  (lambda ()
                    (values (reverse _ids237966_)
                            (reverse _impls237967_)
                            (reverse _clauses237968_))))
                 (_K237973238190_
                  (lambda (_rest237988_ _clause237989_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause237989_))
                        (let ((__tmp249739
                               (let ()
                                 (declare (not safe))
                                 (cons _clause237989_ _clauses237968_))))
                          (declare (not safe))
                          (_lp237963_
                           _rest237988_
                           _ids237966_
                           _impls237967_
                           __tmp249739))
                        (let* ((_g237991238002_
                                (lambda (_g237992237999_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g237992237999_))))
                               (_g237990238187_
                                (lambda (_g237992238005_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g237992238005_))
                                      (let ((_e237997238007_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g237992238005_))))
                                        (let ((_hd237996238010_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237997238007_)))
                                              (_tl237995238012_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237997238007_))))
                                          ((lambda (_L238015_ _L238016_)
                                             (let* ((_id238033_
                                                     (let ((__tmp249686
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id237959_)))
                                                           (__tmp249685
                                                            (length _clauses237968_))
                                                           (__tmp249684
                                                            (if _gensym?237961_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp249686
                                                        '"__"
                                                        __tmp249685
                                                        __tmp249684)))
                                                    (_id238035_
                                                     (let ((__tmp249687
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx237958_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id238033_
                                                        __tmp249687)))
                                                    (_impl238037_
                                                     (let ((__tmp249688
                                                            (let ((__tmp249690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp249689
                           (let ()
                             (declare (not safe))
                             (cons _L238016_ _L238015_))))
                      (declare (not safe))
                      (cons __tmp249690 __tmp249689))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp249688 _stx237958_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause238184_
                                                     (let* ((___stx249044249045_
                                                             _L238016_)
                                                            (_g238041238069_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx249044249045_)))))
               (let ((___kont249046249047_
                      (lambda (_L238163_)
                        (let ((__tmp249691
                               (let ((__tmp249692
                                      (let ((__tmp249693
                                             (let ((__tmp249694
                                                    (let ((__tmp249700
                                                           (let ((__tmp249701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id238035_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp249701)))
                  (__tmp249695
                   (let ((__tmp249696
                          (lambda (_g238173238176_ _g238174238178_)
                            (let ((__tmp249697
                                   (let ((__tmp249699
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp249698
                                          (let ()
                                            (declare (not safe))
                                            (cons _g238173238176_ '()))))
                                     (declare (not safe))
                                     (cons __tmp249699 __tmp249698))))
                              (declare (not safe))
                              (cons __tmp249697 _g238174238178_)))))
                     (declare (not safe))
                     (foldr1 __tmp249696 '() _L238163_))))
              (declare (not safe))
              (cons __tmp249700 __tmp249695))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp249694))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp249693
                                         _stx237958_))))
                                 (declare (not safe))
                                 (cons __tmp249692 '()))))
                          (declare (not safe))
                          (cons _L238016_ __tmp249691))))
                     (___kont249050249051_
                      (lambda (_L238114_ _L238115_)
                        (let ((__tmp249702
                               (let ((__tmp249703
                                      (let ((__tmp249704
                                             (let ((__tmp249705
                                                    (let ((__tmp249719
                                                           (let ((__tmp249720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp249720)))
                  (__tmp249706
                   (let ((__tmp249717
                          (let ((__tmp249718
                                 (let ()
                                   (declare (not safe))
                                   (cons _id238035_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp249718)))
                         (__tmp249707
                          (let ((__tmp249713
                                 (let ((__tmp249714
                                        (let ((__tmp249716
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp249715
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L238114_ '()))))
                                          (declare (not safe))
                                          (cons __tmp249716 __tmp249715))))
                                   (declare (not safe))
                                   (cons __tmp249714 '())))
                                (__tmp249708
                                 (let ((__tmp249709
                                        (lambda (_g238126238129_
                                                 _g238127238131_)
                                          (let ((__tmp249710
                                                 (let ((__tmp249712
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp249711
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g238126238129_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp249712
                                                         __tmp249711))))
                                            (declare (not safe))
                                            (cons __tmp249710
                                                  _g238127238131_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp249709 '() _L238115_))))
                            (declare (not safe))
                            (foldr1 cons __tmp249713 __tmp249708))))
                     (declare (not safe))
                     (cons __tmp249717 __tmp249707))))
              (declare (not safe))
              (cons __tmp249719 __tmp249706))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp249705))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp249704
                                         _stx237958_))))
                                 (declare (not safe))
                                 (cons __tmp249703 '()))))
                          (declare (not safe))
                          (cons _L238016_ __tmp249702))))
                     (___kont249054249055_
                      (lambda (_L238074_)
                        (let ((__tmp249721
                               (let ((__tmp249722
                                      (let ((__tmp249723
                                             (let ((__tmp249724
                                                    (let ((__tmp249732
                                                           (let ((__tmp249733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp249733)))
                  (__tmp249725
                   (let ((__tmp249730
                          (let ((__tmp249731
                                 (let ()
                                   (declare (not safe))
                                   (cons _id238035_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp249731)))
                         (__tmp249726
                          (let ((__tmp249727
                                 (let ((__tmp249729
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp249728
                                        (let ()
                                          (declare (not safe))
                                          (cons _L238074_ '()))))
                                   (declare (not safe))
                                   (cons __tmp249729 __tmp249728))))
                            (declare (not safe))
                            (cons __tmp249727 '()))))
                     (declare (not safe))
                     (cons __tmp249730 __tmp249726))))
              (declare (not safe))
              (cons __tmp249732 __tmp249725))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp249724))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp249723
                                         _stx237958_))))
                                 (declare (not safe))
                                 (cons __tmp249722 '()))))
                          (declare (not safe))
                          (cons _L238016_ __tmp249721)))))
                 (let* ((___match249069249070_
                         (lambda (___splice249052249053_
                                  _target238055238090_
                                  _tl238057238092_)
                           (letrec ((_loop238058238095_
                                     (lambda (_hd238056238098_
                                              _arg238062238100_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd238056238098_))
                                           (let ((_e238059238103_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd238056238098_))))
                                             (let ((_lp-tl238061238108_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e238059238103_)))
                                                   (_lp-hd238060238106_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e238059238103_))))
                                               (let ((__tmp249734
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd238060238106_
                                                              _arg238062238100_))))
                                                 (declare (not safe))
                                                 (_loop238058238095_
                                                  _lp-tl238061238108_
                                                  __tmp249734))))
                                           (let ((_arg238063238111_
                                                  (reverse _arg238062238100_)))
                                             (___kont249050249051_
                                              _tl238057238092_
                                              _arg238063238111_))))))
                             (let ()
                               (declare (not safe))
                               (_loop238058238095_
                                _target238055238090_
                                '())))))
                        (___match249063249064_
                         (lambda (___splice249048249049_
                                  _target238044238139_
                                  _tl238046238141_)
                           (letrec ((_loop238047238144_
                                     (lambda (_hd238045238147_
                                              _arg238051238149_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd238045238147_))
                                           (let ((_e238048238152_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd238045238147_))))
                                             (let ((_lp-tl238050238157_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e238048238152_)))
                                                   (_lp-hd238049238155_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e238048238152_))))
                                               (let ((__tmp249735
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd238049238155_
                                                              _arg238051238149_))))
                                                 (declare (not safe))
                                                 (_loop238047238144_
                                                  _lp-tl238050238157_
                                                  __tmp249735))))
                                           (let ((_arg238052238160_
                                                  (reverse _arg238051238149_)))
                                             (___kont249046249047_
                                              _arg238052238160_))))))
                             (let ()
                               (declare (not safe))
                               (_loop238047238144_
                                _target238044238139_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx249044249045_))
                       (let ((___splice249048249049_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx249044249045_
                                 '0))))
                         (let ((_tl238046238141_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice249048249049_ '1)))
                               (_target238044238139_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice249048249049_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl238046238141_))
                               (___match249063249064_
                                ___splice249048249049_
                                _target238044238139_
                                _tl238046238141_)
                               (___match249069249070_
                                ___splice249048249049_
                                _target238044238139_
                                _tl238046238141_))))
                       (___kont249054249055_ ___stx249044249045_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp249738
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id238035_
                                                              _ids237966_)))
                                                     (__tmp249737
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl238037_
                                                              _impls237967_)))
                                                     (__tmp249736
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause238184_
                                                              _clauses237968_))))
                                                 (declare (not safe))
                                                 (_lp237963_
                                                  _rest237988_
                                                  __tmp249738
                                                  __tmp249737
                                                  __tmp249736))))
                                           _tl237995238012_
                                           _hd237996238010_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g237991238002_ _g237992238005_))))))
                          (declare (not safe))
                          (_g237990238187_ _clause237989_))))))
            (if (let () (declare (not safe)) (##pair? _rest237969237977_))
                (let ((_hd237974238193_
                       (let ()
                         (declare (not safe))
                         (##car _rest237969237977_)))
                      (_tl237975238195_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest237969237977_))))
                  (let* ((_clause238198_ _hd237974238193_)
                         (_rest238200_ _tl237975238195_))
                    (declare (not safe))
                    (_K237973238190_ _rest238200_ _clause238198_)))
                (let () (declare (not safe)) (_else237971237985_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx238205_ _id238206_ _clauses238207_)
        (let ((_gensym?238209_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx238205_
           _id238206_
           _clauses238207_
           _gensym?238209_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g249741_
        (let ((_g249740_ (let () (declare (not safe)) (##length _g249741_))))
          (cond ((let () (declare (not safe)) (##fx= _g249740_ 3))
                 (apply (lambda (_stx238205_ _id238206_ _clauses238207_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx238205_
                             _id238206_
                             _clauses238207_)))
                        _g249741_))
                ((let () (declare (not safe)) (##fx= _g249740_ 4))
                 (apply (lambda (_stx238211_
                                 _id238212_
                                 _clauses238213_
                                 _gensym?238214_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx238211_
                             _id238212_
                             _clauses238213_
                             _gensym?238214_)))
                        _g249741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g249741_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx237235_)
        (letrec ((_case-lambda-clause-def237237_
                  (lambda (_id237954_ _impl237955_)
                    (let ((__tmp249742
                           (let ((__tmp249743
                                  (let ((__tmp249746
                                         (let ()
                                           (declare (not safe))
                                           (cons _id237954_ '())))
                                        (__tmp249744
                                         (let ((__tmp249745
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl237955_))))
                                           (declare (not safe))
                                           (cons __tmp249745 '()))))
                                    (declare (not safe))
                                    (cons __tmp249746 __tmp249744))))
                             (declare (not safe))
                             (cons '%#define-values __tmp249743))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp249742 _stx237235_))))
                 (_opt-lambda-dispatch-name237238_
                  (lambda (_id237950_)
                    (if (uninterned-symbol? _id237950_)
                        (let ((_str237952_ (symbol->string _id237950_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str237952_))
                              '"%"
                              _id237950_))
                        _id237950_)))
                 (_kw-lambda-dispatch-name237239_
                  (lambda (_id237945_ _name237946_)
                    (if (uninterned-symbol? _id237945_)
                        (let ((_str237948_ (symbol->string _id237945_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str237948_))
                              _name237946_
                              _id237945_))
                        _id237945_))))
          (let* ((___stx249092249093_ _stx237235_)
                 (_g237244237303_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx249092249093_)))))
            (let ((___kont249094249095_
                   (lambda (_L237854_ _L237855_)
                     (let* ((___stx249072249073_ _L237854_)
                            (_g237872237886_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx249072249073_)))))
                       (let ((___kont249074249075_
                              (lambda (_L237930_) _stx237235_))
                             (___kont249076249077_
                              (lambda (_L237899_)
                                (let ((_g249747_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx237235_
                                          _L237855_
                                          _L237899_))))
                                  (begin
                                    (let ((_g249748_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g249747_)
                                                 (##vector-length _g249747_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g249748_ 3)))
                                          (error "Context expects 3 values"
                                                 _g249748_)))
                                    (let ((_ids237909_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g249747_ 0)))
                                          (_impls237910_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g249747_ 1)))
                                          (_clauses237911_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g249747_ 2))))
                                      (let* ((_g249749_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids237909_))
                                             (_defs237914_
                                              (map _case-lambda-clause-def237237_
                                                   _ids237909_
                                                   _impls237910_)))
                                        (let ((__tmp249751
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L237855_)))
                                              (__tmp249750
                                               (map gxc#identifier-symbol
                                                    _ids237909_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp249751
                                           '" => "
                                           __tmp249750))
                                        (let ((__tmp249752
                                               (let ((__tmp249753
                                                      (let ((__tmp249754
                                                             (let ((__tmp249755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp249756
                                   (let ((__tmp249757
                                          (let ((__tmp249762
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L237855_ '())))
                                                (__tmp249758
                                                 (let ((__tmp249759
                                                        (let ((__tmp249761
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses237911_)))
                      (__tmp249760
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp249761 __tmp249760))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp249759 '()))))
                                            (declare (not safe))
                                            (cons __tmp249762 __tmp249758))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp249757))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp249756
                               _stx237235_))))
                       (declare (not safe))
                       (cons __tmp249755 '()))))
                (declare (not safe))
                (foldr1 cons __tmp249754 _defs237914_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp249753))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp249752
                                           _stx237235_)))))))))
                         (let ((___match249083249084_
                                (lambda (_e237877237922_
                                         _hd237876237925_
                                         _tl237875237927_)
                                  (let ((_L237930_ _tl237875237927_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L237930_))
                                        (___kont249074249075_ _L237930_)
                                        (___kont249076249077_
                                         _tl237875237927_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx249072249073_))
                               (let ((_e237877237922_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx249072249073_))))
                                 (let ((_tl237875237927_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e237877237922_)))
                                       (_hd237876237925_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e237877237922_))))
                                   (___match249083249084_
                                    _e237877237922_
                                    _hd237876237925_
                                    _tl237875237927_)))
                               (let ()
                                 (declare (not safe))
                                 (_g237872237886_))))))))
                  (___kont249096249097_
                   (lambda (_L237672_ _L237673_)
                     (let* ((_g237689237719_
                             (lambda (_g237690237716_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g237690237716_))))
                            (_g237688237814_
                             (lambda (_g237690237722_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g237690237722_))
                                   (let ((_e237696237724_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g237690237722_))))
                                     (let ((_hd237695237727_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e237696237724_)))
                                           (_tl237694237729_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e237696237724_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl237694237729_))
                                           (let ((_e237699237732_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl237694237729_))))
                                             (let ((_hd237698237735_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e237699237732_)))
                                                   (_tl237697237737_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e237699237732_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd237698237735_))
                                                   (let ((_e237702237740_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd237698237735_))))
                                                     (let ((_hd237701237743_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e237702237740_)))
                                                           (_tl237700237745_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e237702237740_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd237701237743_))
                                                           (let ((_e237705237748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd237701237743_))))
                     (let ((_hd237704237751_
                            (let ()
                              (declare (not safe))
                              (##car _e237705237748_)))
                           (_tl237703237753_
                            (let ()
                              (declare (not safe))
                              (##cdr _e237705237748_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd237704237751_))
                           (let ((_e237708237756_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd237704237751_))))
                             (let ((_hd237707237759_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e237708237756_)))
                                   (_tl237706237761_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e237708237756_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl237706237761_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl237703237753_))
                                       (let ((_e237711237764_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl237703237753_))))
                                         (let ((_hd237710237767_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e237711237764_)))
                                               (_tl237709237769_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e237711237764_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl237709237769_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl237700237745_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl237697237737_))
                                                       (let ((_e237714237772_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl237697237737_))))
                 (let ((_hd237713237775_
                        (let () (declare (not safe)) (##car _e237714237772_)))
                       (_tl237712237777_
                        (let () (declare (not safe)) (##cdr _e237714237772_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl237712237777_))
                       ((lambda (_L237780_ _L237781_ _L237782_)
                          (let* ((_lambda-id237806_
                                  (let ((__tmp249765
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L237673_)))
                                        (__tmp249763
                                         (let ((__tmp249764
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L237782_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name237238_
                                            __tmp249764))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp249765
                                     '"__"
                                     __tmp249763)))
                                 (_lambda-id237808_
                                  (let ((__tmp249766
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx237235_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id237806_
                                     __tmp249766)))
                                 (_g249767_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id237808_)))
                                 (_new-case-lambda-expr237811_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L237780_
                                     _L237782_
                                     _lambda-id237808_))))
                            (let ((__tmp249769
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L237673_)))
                                  (__tmp249768
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id237808_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp249769
                               '" => "
                               __tmp249768))
                            (let ((__tmp249770
                                   (let ((__tmp249771
                                          (let ((__tmp249779
                                                 (let ((__tmp249780
                                                        (let ((__tmp249781
                                                               (let ((__tmp249784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id237808_ '())))
                             (__tmp249782
                              (let ((__tmp249783
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L237781_))))
                                (declare (not safe))
                                (cons __tmp249783 '()))))
                         (declare (not safe))
                         (cons __tmp249784 __tmp249782))))
                  (declare (not safe))
                  (cons '%#define-values __tmp249781))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp249780
                                                    _stx237235_)))
                                                (__tmp249772
                                                 (let ((__tmp249773
                                                        (let ((__tmp249774
                                                               (let ((__tmp249775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp249776
                                     (let ((__tmp249778
                                            (let ()
                                              (declare (not safe))
                                              (cons _L237673_ '())))
                                           (__tmp249777
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr237811_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp249778 __tmp249777))))
                                (declare (not safe))
                                (cons '%#define-values __tmp249776))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp249775 _stx237235_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp249774))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp249773 '()))))
                                            (declare (not safe))
                                            (cons __tmp249779 __tmp249772))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp249771))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp249770
                               _stx237235_))))
                        _hd237713237775_
                        _hd237710237767_
                        _hd237707237759_)
                       (let ()
                         (declare (not safe))
                         (_g237689237719_ _g237690237722_)))))
               (let () (declare (not safe)) (_g237689237719_ _g237690237722_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g237689237719_
                                                      _g237690237722_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g237689237719_
                                                  _g237690237722_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g237689237719_ _g237690237722_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g237689237719_ _g237690237722_)))))
                           (let ()
                             (declare (not safe))
                             (_g237689237719_ _g237690237722_)))))
                   (let ()
                     (declare (not safe))
                     (_g237689237719_ _g237690237722_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g237689237719_
                                                      _g237690237722_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g237689237719_
                                              _g237690237722_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g237689237719_ _g237690237722_))))))
                       (declare (not safe))
                       (_g237688237814_ _L237672_))))
                  (___kont249098249099_
                   (lambda (_L237386_ _L237387_)
                     (let* ((_g237403237456_
                             (lambda (_g237404237453_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g237404237453_))))
                            (_g237402237632_
                             (lambda (_g237404237459_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g237404237459_))
                                   (let ((_e237412237461_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g237404237459_))))
                                     (let ((_hd237411237464_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e237412237461_)))
                                           (_tl237410237466_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e237412237461_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl237410237466_))
                                           (let ((_e237415237469_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl237410237466_))))
                                             (let ((_hd237414237472_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e237415237469_)))
                                                   (_tl237413237474_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e237415237469_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd237414237472_))
                                                   (let ((_e237418237477_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd237414237472_))))
                                                     (let ((_hd237417237480_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e237418237477_)))
                                                           (_tl237416237482_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e237418237477_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd237417237480_))
                                                           (let ((_e237421237485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd237417237480_))))
                     (let ((_hd237420237488_
                            (let ()
                              (declare (not safe))
                              (##car _e237421237485_)))
                           (_tl237419237490_
                            (let ()
                              (declare (not safe))
                              (##cdr _e237421237485_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd237420237488_))
                           (let ((_e237424237493_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd237420237488_))))
                             (let ((_hd237423237496_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e237424237493_)))
                                   (_tl237422237498_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e237424237493_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl237422237498_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl237419237490_))
                                       (let ((_e237427237501_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl237419237490_))))
                                         (let ((_hd237426237504_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e237427237501_)))
                                               (_tl237425237506_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e237427237501_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd237426237504_))
                                               (let ((_e237430237509_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd237426237504_))))
                                                 (let ((_hd237429237512_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e237430237509_)))
                                                       (_tl237428237514_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e237430237509_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl237428237514_))
                                                       (let ((_e237433237517_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl237428237514_))))
                 (let ((_hd237432237520_
                        (let () (declare (not safe)) (##car _e237433237517_)))
                       (_tl237431237522_
                        (let () (declare (not safe)) (##cdr _e237433237517_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd237432237520_))
                       (let ((_e237436237525_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd237432237520_))))
                         (let ((_hd237435237528_
                                (let ()
                                  (declare (not safe))
                                  (##car _e237436237525_)))
                               (_tl237434237530_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e237436237525_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd237435237528_))
                               (let ((_e237439237533_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd237435237528_))))
                                 (let ((_hd237438237536_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e237439237533_)))
                                       (_tl237437237538_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e237439237533_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd237438237536_))
                                       (let ((_e237442237541_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd237438237536_))))
                                         (let ((_hd237441237544_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e237442237541_)))
                                               (_tl237440237546_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e237442237541_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl237440237546_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl237437237538_))
                                                   (let ((_e237445237549_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl237437237538_))))
                                                     (let ((_hd237444237552_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e237445237549_)))
                                                           (_tl237443237554_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e237445237549_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl237443237554_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl237434237530_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl237431237522_))
                           (let ((_e237448237557_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl237431237522_))))
                             (let ((_hd237447237560_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e237448237557_)))
                                   (_tl237446237562_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e237448237557_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl237446237562_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl237425237506_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl237416237482_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl237413237474_))
                                               (let ((_e237451237565_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl237413237474_))))
                                                 (let ((_hd237450237568_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e237451237565_)))
                                                       (_tl237449237570_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e237451237565_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl237449237570_))
                                                       ((lambda (_L237573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L237574_
                         _L237575_
                         _L237576_
                         _L237577_)
                  (let* ((_get-kws-id237617_
                          (let ((__tmp249787
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L237387_)))
                                (__tmp249785
                                 (let ((__tmp249786
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L237577_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name237239_
                                    __tmp249786
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp249787 '"__" __tmp249785)))
                         (_get-kws-id237619_
                          (let ((__tmp249788
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx237235_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id237617_
                             __tmp249788)))
                         (_main-id237621_
                          (let ((__tmp249791
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L237387_)))
                                (__tmp249789
                                 (let ((__tmp249790
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L237576_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name237239_
                                    __tmp249790
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp249791 '"__" __tmp249789)))
                         (_main-id237623_
                          (let ((__tmp249792
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx237235_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id237621_
                             __tmp249792)))
                         (_g249793_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id237619_)))
                         (_g249794_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id237623_)))
                         (_new-kw-dispatch237627_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L237573_
                             _L237577_
                             _get-kws-id237619_)))
                         (_new-get-kws237629_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L237574_
                             _L237576_
                             _main-id237623_))))
                    (let ((__tmp249797
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L237387_)))
                          (__tmp249796
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id237619_)))
                          (__tmp249795
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id237623_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp249797
                       '" => "
                       __tmp249796
                       '" => "
                       __tmp249795))
                    (let ((__tmp249798
                           (let ((__tmp249799
                                  (let ((__tmp249812
                                         (let ((__tmp249813
                                                (let ((__tmp249814
                                                       (let ((__tmp249815
                                                              (let ((__tmp249817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id237623_ '())))
                            (__tmp249816
                             (let ()
                               (declare (not safe))
                               (cons _L237575_ '()))))
                        (declare (not safe))
                        (cons __tmp249817 __tmp249816))))
                 (declare (not safe))
                 (cons '%#define-values __tmp249815))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp249814
                                                   _stx237235_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp249813)))
                                        (__tmp249800
                                         (let ((__tmp249807
                                                (let ((__tmp249808
                                                       (let ((__tmp249809
                                                              (let ((__tmp249811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id237619_ '())))
                            (__tmp249810
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws237629_ '()))))
                        (declare (not safe))
                        (cons __tmp249811 __tmp249810))))
                 (declare (not safe))
                 (cons '%#define-values __tmp249809))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp249808
                                                   _stx237235_)))
                                               (__tmp249801
                                                (let ((__tmp249802
                                                       (let ((__tmp249803
                                                              (let ((__tmp249804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp249806
                                    (let ()
                                      (declare (not safe))
                                      (cons _L237387_ '())))
                                   (__tmp249805
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch237627_ '()))))
                               (declare (not safe))
                               (cons __tmp249806 __tmp249805))))
                        (declare (not safe))
                        (cons '%#define-values __tmp249804))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp249803 _stx237235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp249802 '()))))
                                           (declare (not safe))
                                           (cons __tmp249807 __tmp249801))))
                                    (declare (not safe))
                                    (cons __tmp249812 __tmp249800))))
                             (declare (not safe))
                             (cons '%#begin __tmp249799))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp249798 _stx237235_))))
                _hd237450237568_
                _hd237447237560_
                _hd237444237552_
                _hd237441237544_
                _hd237423237496_)
               (let ()
                 (declare (not safe))
                 (_g237403237456_ _g237404237459_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g237403237456_
                                                  _g237404237459_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g237403237456_
                                              _g237404237459_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g237403237456_ _g237404237459_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g237403237456_ _g237404237459_)))))
                           (let ()
                             (declare (not safe))
                             (_g237403237456_ _g237404237459_)))
                       (let ()
                         (declare (not safe))
                         (_g237403237456_ _g237404237459_)))
                   (let ()
                     (declare (not safe))
                     (_g237403237456_ _g237404237459_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g237403237456_
                                                      _g237404237459_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g237403237456_
                                                  _g237404237459_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g237403237456_ _g237404237459_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g237403237456_ _g237404237459_)))))
                       (let ()
                         (declare (not safe))
                         (_g237403237456_ _g237404237459_)))))
               (let ()
                 (declare (not safe))
                 (_g237403237456_ _g237404237459_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g237403237456_
                                                  _g237404237459_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g237403237456_ _g237404237459_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g237403237456_ _g237404237459_)))))
                           (let ()
                             (declare (not safe))
                             (_g237403237456_ _g237404237459_)))))
                   (let ()
                     (declare (not safe))
                     (_g237403237456_ _g237404237459_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g237403237456_
                                                      _g237404237459_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g237403237456_
                                              _g237404237459_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g237403237456_ _g237404237459_))))))
                       (declare (not safe))
                       (_g237402237632_ _L237386_))))
                  (___kont249100249101_
                   (lambda (_L237332_ _L237333_)
                     (let ((__tmp249818
                            (let ((__tmp249819
                                   (let ((__tmp249820
                                          (let ((__tmp249821
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L237332_))))
                                            (declare (not safe))
                                            (cons __tmp249821 '()))))
                                     (declare (not safe))
                                     (cons _L237333_ __tmp249820))))
                              (declare (not safe))
                              (cons '%#define-values __tmp249819))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp249818 _stx237235_)))))
              (let* ((___match249185249186_
                      (lambda (_e237278237354_
                               _hd237277237357_
                               _tl237276237359_
                               _e237281237362_
                               _hd237280237365_
                               _tl237279237367_
                               _e237284237370_
                               _hd237283237373_
                               _tl237282237375_
                               _e237287237378_
                               _hd237286237381_
                               _tl237285237383_)
                        (let ((_L237386_ _hd237286237381_)
                              (_L237387_ _hd237283237373_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L237387_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L237386_)))
                              (___kont249098249099_ _L237386_ _L237387_)
                              (___kont249100249101_
                               _hd237286237381_
                               _hd237280237365_)))))
                     (___match249157249158_
                      (lambda (_e237264237640_
                               _hd237263237643_
                               _tl237262237645_
                               _e237267237648_
                               _hd237266237651_
                               _tl237265237653_
                               _e237270237656_
                               _hd237269237659_
                               _tl237268237661_
                               _e237273237664_
                               _hd237272237667_
                               _tl237271237669_)
                        (let ((_L237672_ _hd237272237667_)
                              (_L237673_ _hd237269237659_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L237673_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L237672_)))
                              (___kont249096249097_ _L237672_ _L237673_)
                              (___match249185249186_
                               _e237264237640_
                               _hd237263237643_
                               _tl237262237645_
                               _e237267237648_
                               _hd237266237651_
                               _tl237265237653_
                               _e237270237656_
                               _hd237269237659_
                               _tl237268237661_
                               _e237273237664_
                               _hd237272237667_
                               _tl237271237669_)))))
                     (___match249129249130_
                      (lambda (_e237250237822_
                               _hd237249237825_
                               _tl237248237827_
                               _e237253237830_
                               _hd237252237833_
                               _tl237251237835_
                               _e237256237838_
                               _hd237255237841_
                               _tl237254237843_
                               _e237259237846_
                               _hd237258237849_
                               _tl237257237851_)
                        (let ((_L237854_ _hd237258237849_)
                              (_L237855_ _hd237255237841_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L237855_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L237854_)))
                              (___kont249094249095_ _L237854_ _L237855_)
                              (___match249157249158_
                               _e237250237822_
                               _hd237249237825_
                               _tl237248237827_
                               _e237253237830_
                               _hd237252237833_
                               _tl237251237835_
                               _e237256237838_
                               _hd237255237841_
                               _tl237254237843_
                               _e237259237846_
                               _hd237258237849_
                               _tl237257237851_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx249092249093_))
                    (let ((_e237250237822_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx249092249093_))))
                      (let ((_tl237248237827_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237250237822_)))
                            (_hd237249237825_
                             (let ()
                               (declare (not safe))
                               (##car _e237250237822_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237248237827_))
                            (let ((_e237253237830_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237248237827_))))
                              (let ((_tl237251237835_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237253237830_)))
                                    (_hd237252237833_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237253237830_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd237252237833_))
                                    (let ((_e237256237838_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd237252237833_))))
                                      (let ((_tl237254237843_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e237256237838_)))
                                            (_hd237255237841_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e237256237838_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl237254237843_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl237251237835_))
                                                (let ((_e237259237846_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl237251237835_))))
                                                  (let ((_tl237257237851_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e237259237846_)))
                                                        (_hd237258237849_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e237259237846_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl237257237851_))
                                                        (___match249129249130_
                                                         _e237250237822_
                                                         _hd237249237825_
                                                         _tl237248237827_
                                                         _e237253237830_
                                                         _hd237252237833_
                                                         _tl237251237835_
                                                         _e237256237838_
                                                         _hd237255237841_
                                                         _tl237254237843_
                                                         _e237259237846_
                                                         _hd237258237849_
                                                         _tl237257237851_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g237244237303_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g237244237303_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl237251237835_))
                                                (let ((_e237298237324_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl237251237835_))))
                                                  (let ((_tl237296237329_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e237298237324_)))
                                                        (_hd237297237327_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e237298237324_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl237296237329_))
                                                        (___kont249100249101_
                                                         _hd237297237327_
                                                         _hd237252237833_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g237244237303_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g237244237303_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl237251237835_))
                                        (let ((_e237298237324_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl237251237835_))))
                                          (let ((_tl237296237329_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e237298237324_)))
                                                (_hd237297237327_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e237298237324_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl237296237329_))
                                                (___kont249100249101_
                                                 _hd237297237327_
                                                 _hd237252237833_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g237244237303_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g237244237303_))))))
                            (let () (declare (not safe)) (_g237244237303_)))))
                    (let () (declare (not safe)) (_g237244237303_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx236167_)
        (letrec* ((_bind-e__247488247489_
                   (lambda (_id237219_ _expr237220_ _compile?237221_)
                     (let ((__tmp249824
                            (let ()
                              (declare (not safe))
                              (cons _id237219_ '())))
                           (__tmp249822
                            (let ((__tmp249823
                                   (if _compile?237221_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr237220_))
                                       _expr237220_)))
                              (declare (not safe))
                              (cons __tmp249823 '()))))
                       (declare (not safe))
                       (cons __tmp249824 __tmp249822))))
                  (_bind-e__0__247490247491_
                   (lambda (_id237226_ _expr237227_)
                     (let ((_compile?237229_ '#t))
                       (declare (not safe))
                       (_bind-e__247488247489_
                        _id237226_
                        _expr237227_
                        _compile?237229_))))
                  (_bind-e236169_
                   (lambda _g249826_
                     (let ((_g249825_
                            (let ()
                              (declare (not safe))
                              (##length _g249826_))))
                       (cond ((let () (declare (not safe)) (##fx= _g249825_ 2))
                              (apply (lambda (_id237226_ _expr237227_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__247490247491_
                                          _id237226_
                                          _expr237227_)))
                                     _g249826_))
                             ((let () (declare (not safe)) (##fx= _g249825_ 3))
                              (apply (lambda (_id237231_
                                              _expr237232_
                                              _compile?237233_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__247488247489_
                                          _id237231_
                                          _expr237232_
                                          _compile?237233_)))
                                     _g249826_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g249826_))))))
                  (_compile-bindings236170_
                   (lambda (_bindings236803_)
                     (let _lp236805_ ((_rest236807_ _bindings236803_)
                                      (_lift1236808_ '())
                                      (_lift2236809_ '())
                                      (_bind236810_ '()))
                       (let* ((_rest236811236819_ _rest236807_)
                              (_else236813236827_
                               (lambda ()
                                 (values (reverse _lift1236808_)
                                         (reverse _lift2236809_)
                                         (reverse _bind236810_))))
                              (_K236815237206_
                               (lambda (_rest236830_ _hd236831_)
                                 (let* ((___stx249228249229_ _hd236831_)
                                        (_g236835236871_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx249228249229_)))))
                                   (let ((___kont249230249231_
                                          (lambda (_L237113_ _L237114_)
                                            (let* ((___stx249208249209_
                                                    _L237113_)
                                                   (_g237129237143_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx249208249209_)))))
                                              (let ((___kont249210249211_
                                                     (lambda (_L237191_)
                                                       (let ((__tmp249827
                                                              (let ((__tmp249828
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__247488247489_
                                _L237114_
                                _L237113_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp249828 _bind236810_))))
                 (declare (not safe))
                 (_lp236805_
                  _rest236830_
                  _lift1236808_
                  _lift2236809_
                  __tmp249827))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont249212249213_
                                                     (lambda (_L237156_)
                                                       (let ((_g249829_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx236167_
                         _L237114_
                         _L237156_
                         '#t))))
                 (begin
                   (let ((_g249830_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g249829_)
                                (##vector-length _g249829_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g249830_ 3)))
                         (error "Context expects 3 values" _g249830_)))
                   (let ((_ids237166_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g249829_ 0)))
                         (_impls237167_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g249829_ 1)))
                         (_clauses237168_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g249829_ 2))))
                     (let* ((_g249831_
                             (for-each gx#core-bind-runtime! _ids237166_))
                            (_xbind237171_
                             (map _bind-e236169_ _ids237166_ _impls237167_))
                            (_expr*237173_
                             (let ((__tmp249833
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses237168_)))
                                   (__tmp249832
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp249833
                                __tmp249832)))
                            (_bind*237175_
                             (let ()
                               (declare (not safe))
                               (_bind-e__247488247489_
                                _L237114_
                                _expr*237173_
                                '#f))))
                       (let ((__tmp249835
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L237114_)))
                             (__tmp249834
                              (map gxc#identifier-symbol _ids237166_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp249835
                          '" => "
                          __tmp249834))
                       (let ((__tmp249837
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2236809_ _xbind237171_)))
                             (__tmp249836
                              (let ()
                                (declare (not safe))
                                (cons _bind*237175_ _bind236810_))))
                         (declare (not safe))
                         (_lp236805_
                          _rest236830_
                          _lift1236808_
                          __tmp249837
                          __tmp249836)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match249219249220_
                                                       (lambda (_e237134237183_
                                                                _hd237133237186_
                                                                _tl237132237188_)
                                                         (let ((_L237191_
                                                                _tl237132237188_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L237191_))
                       (___kont249210249211_ _L237191_)
                       (___kont249212249213_ _tl237132237188_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx249208249209_))
                                                      (let ((_e237134237183_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx249208249209_))))
                (let ((_tl237132237188_
                       (let () (declare (not safe)) (##cdr _e237134237183_)))
                      (_hd237133237186_
                       (let () (declare (not safe)) (##car _e237134237183_))))
                  (___match249219249220_
                   _e237134237183_
                   _hd237133237186_
                   _tl237132237188_)))
              (let () (declare (not safe)) (_g237129237143_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont249232249233_
                                          (lambda (_L236941_ _L236942_)
                                            (let* ((_g236956236986_
                                                    (lambda (_g236957236983_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g236957236983_))))
                                                   (_g236955237081_
                                                    (lambda (_g236957236989_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g236957236989_))
                                                          (let ((_e236963236991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g236957236989_))))
                    (let ((_hd236962236994_
                           (let ()
                             (declare (not safe))
                             (##car _e236963236991_)))
                          (_tl236961236996_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236963236991_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl236961236996_))
                          (let ((_e236966236999_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl236961236996_))))
                            (let ((_hd236965237002_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236966236999_)))
                                  (_tl236964237004_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236966236999_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd236965237002_))
                                  (let ((_e236969237007_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd236965237002_))))
                                    (let ((_hd236968237010_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236969237007_)))
                                          (_tl236967237012_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236969237007_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd236968237010_))
                                          (let ((_e236972237015_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd236968237010_))))
                                            (let ((_hd236971237018_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236972237015_)))
                                                  (_tl236970237020_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236972237015_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd236971237018_))
                                                  (let ((_e236975237023_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd236971237018_))))
                                                    (let ((_hd236974237026_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e236975237023_)))
                                                          (_tl236973237028_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e236975237023_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236973237028_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl236970237020_))
                      (let ((_e236978237031_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl236970237020_))))
                        (let ((_hd236977237034_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236978237031_)))
                              (_tl236976237036_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236978237031_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236976237036_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl236967237012_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236964237004_))
                                      (let ((_e236981237039_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236964237004_))))
                                        (let ((_hd236980237042_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236981237039_)))
                                              (_tl236979237044_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236981237039_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236979237044_))
                                              ((lambda (_L237047_
                                                        _L237048_
                                                        _L237049_)
                                                 (let* ((_lambda-id237073_
                                                         (let ((__tmp249839
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L236942_)))
                       (__tmp249838 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp249839 __tmp249838)))
                (_lambda-id237075_
                 (let ((__tmp249840
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx236167_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id237073_ __tmp249840)))
                (_g249841_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id237075_)))
                (_new-case-lambda-expr237078_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L237047_
                    _L237049_
                    _lambda-id237075_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp249843
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L236942_)))
                                                         (__tmp249842
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id237075_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp249843
                                                      '" => "
                                                      __tmp249842))
                                                   (let ((__tmp249846
                                                          (let ((__tmp249847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__247488247489_
                            _L236942_
                            _new-case-lambda-expr237078_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp249847 _rest236830_)))
                 (__tmp249844
                  (let ((__tmp249845
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__247490247491_
                            _lambda-id237075_
                            _L237048_))))
                    (declare (not safe))
                    (cons __tmp249845 _lift1236808_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp236805_
                                                      __tmp249846
                                                      __tmp249844
                                                      _lift2236809_
                                                      _bind236810_))))
                                               _hd236980237042_
                                               _hd236977237034_
                                               _hd236974237026_)
                                              (let ()
                                                (declare (not safe))
                                                (_g236956236986_
                                                 _g236957236989_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236956236986_ _g236957236989_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g236956236986_ _g236957236989_)))
                              (let ()
                                (declare (not safe))
                                (_g236956236986_ _g236957236989_)))))
                      (let ()
                        (declare (not safe))
                        (_g236956236986_ _g236957236989_)))
                  (let ()
                    (declare (not safe))
                    (_g236956236986_ _g236957236989_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236956236986_
                                                     _g236957236989_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g236956236986_
                                             _g236957236989_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g236956236986_ _g236957236989_)))))
                          (let ()
                            (declare (not safe))
                            (_g236956236986_ _g236957236989_)))))
                  (let ()
                    (declare (not safe))
                    (_g236956236986_ _g236957236989_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g236955237081_ _L236941_))))
                                         (___kont249234249235_
                                          (lambda (_L236892_ _L236893_)
                                            (let ((__tmp249848
                                                   (let ((__tmp249849
                                                          (let ((__tmp249850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp249851
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L236892_))))
                           (declare (not safe))
                           (cons __tmp249851 '()))))
                    (declare (not safe))
                    (cons _L236893_ __tmp249850))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp249849
                                                           _bind236810_))))
                                              (declare (not safe))
                                              (_lp236805_
                                               _rest236830_
                                               _lift1236808_
                                               _lift2236809_
                                               __tmp249848)))))
                                     (let* ((___match249279249280_
                                             (lambda (_e236852236917_
                                                      _hd236851236920_
                                                      _tl236850236922_
                                                      _e236855236925_
                                                      _hd236854236928_
                                                      _tl236853236930_
                                                      _e236858236933_
                                                      _hd236857236936_
                                                      _tl236856236938_)
                                               (let ((_L236941_
                                                      _hd236857236936_)
                                                     (_L236942_
                                                      _hd236854236928_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L236942_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L236941_)))
                                                     (___kont249232249233_
                                                      _L236941_
                                                      _L236942_)
                                                     (___kont249234249235_
                                                      _hd236857236936_
                                                      _hd236851236920_)))))
                                            (___match249257249258_
                                             (lambda (_e236841237089_
                                                      _hd236840237092_
                                                      _tl236839237094_
                                                      _e236844237097_
                                                      _hd236843237100_
                                                      _tl236842237102_
                                                      _e236847237105_
                                                      _hd236846237108_
                                                      _tl236845237110_)
                                               (let ((_L237113_
                                                      _hd236846237108_)
                                                     (_L237114_
                                                      _hd236843237100_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L237114_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L237113_)))
                                                     (___kont249230249231_
                                                      _L237113_
                                                      _L237114_)
                                                     (___match249279249280_
                                                      _e236841237089_
                                                      _hd236840237092_
                                                      _tl236839237094_
                                                      _e236844237097_
                                                      _hd236843237100_
                                                      _tl236842237102_
                                                      _e236847237105_
                                                      _hd236846237108_
                                                      _tl236845237110_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx249228249229_))
                                           (let ((_e236841237089_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx249228249229_))))
                                             (let ((_tl236839237094_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e236841237089_)))
                                                   (_hd236840237092_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e236841237089_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd236840237092_))
                                                   (let ((_e236844237097_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd236840237092_))))
                                                     (let ((_tl236842237102_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e236844237097_)))
                                                           (_hd236843237100_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e236844237097_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl236842237102_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl236839237094_))
                       (let ((_e236847237105_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl236839237094_))))
                         (let ((_tl236845237110_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e236847237105_)))
                               (_hd236846237108_
                                (let ()
                                  (declare (not safe))
                                  (##car _e236847237105_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl236845237110_))
                               (___match249257249258_
                                _e236841237089_
                                _hd236840237092_
                                _tl236839237094_
                                _e236844237097_
                                _hd236843237100_
                                _tl236842237102_
                                _e236847237105_
                                _hd236846237108_
                                _tl236845237110_)
                               (let ()
                                 (declare (not safe))
                                 (_g236835236871_)))))
                       (let () (declare (not safe)) (_g236835236871_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl236839237094_))
                       (let ((_e236866236884_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl236839237094_))))
                         (let ((_tl236864236889_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e236866236884_)))
                               (_hd236865236887_
                                (let ()
                                  (declare (not safe))
                                  (##car _e236866236884_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl236864236889_))
                               (___kont249234249235_
                                _hd236865236887_
                                _hd236840237092_)
                               (let ()
                                 (declare (not safe))
                                 (_g236835236871_)))))
                       (let () (declare (not safe)) (_g236835236871_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl236839237094_))
                                                       (let ((_e236866236884_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl236839237094_))))
                 (let ((_tl236864236889_
                        (let () (declare (not safe)) (##cdr _e236866236884_)))
                       (_hd236865236887_
                        (let () (declare (not safe)) (##car _e236866236884_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl236864236889_))
                       (___kont249234249235_ _hd236865236887_ _hd236840237092_)
                       (let () (declare (not safe)) (_g236835236871_)))))
               (let () (declare (not safe)) (_g236835236871_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g236835236871_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest236811236819_))
                             (let ((_hd236816237209_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest236811236819_)))
                                   (_tl236817237211_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest236811236819_))))
                               (let* ((_hd237214_ _hd236816237209_)
                                      (_rest237216_ _tl236817237211_))
                                 (declare (not safe))
                                 (_K236815237206_ _rest237216_ _hd237214_)))
                             (let ()
                               (declare (not safe))
                               (_else236813236827_)))))))
                  (_lift-kw-lambda?236171_
                   (lambda (_bind236727_)
                     (let* ((___stx249296249297_ _bind236727_)
                            (_g236730236747_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx249296249297_)))))
                       (let ((___kont249298249299_
                              (lambda (_L236783_ _L236784_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L236784_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L236783_))
                                    '#f)))
                             (___kont249300249301_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx249296249297_))
                             (let ((_e236736236759_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx249296249297_))))
                               (let ((_tl236734236764_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e236736236759_)))
                                     (_hd236735236762_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e236736236759_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd236735236762_))
                                     (let ((_e236739236767_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd236735236762_))))
                                       (let ((_tl236737236772_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e236739236767_)))
                                             (_hd236738236770_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e236739236767_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl236737236772_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl236734236764_))
                                                 (let ((_e236742236775_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl236734236764_))))
                                                   (let ((_tl236740236780_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e236742236775_)))
                                                         (_hd236741236778_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e236742236775_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl236740236780_))
                                                         (___kont249298249299_
                                                          _hd236741236778_
                                                          _hd236738236770_)
                                                         (___kont249300249301_))))
                                                 (___kont249300249301_))
                                             (___kont249300249301_))))
                                     (___kont249300249301_))))
                             (___kont249300249301_))))))
                  (_lift-kw-lambda-bindings236172_
                   (lambda (_bindings236339_)
                     (let _lp236341_ ((_rest236343_ _bindings236339_)
                                      (_lift1236344_ '())
                                      (_lift2236345_ '())
                                      (_bind236346_ '()))
                       (let* ((_rest236347236355_ _rest236343_)
                              (_else236349236363_
                               (lambda ()
                                 (values (reverse _lift1236344_)
                                         (reverse _lift2236345_)
                                         (reverse _bind236346_))))
                              (_K236351236715_
                               (lambda (_rest236366_ _hd236367_)
                                 (let* ((___stx249326249327_ _hd236367_)
                                        (_g236370236395_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx249326249327_)))))
                                   (let ((___kont249328249329_
                                          (lambda (_L236465_ _L236466_)
                                            (let* ((_g236480236533_
                                                    (lambda (_g236481236530_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g236481236530_))))
                                                   (_g236479236709_
                                                    (lambda (_g236481236536_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g236481236536_))
                                                          (let ((_e236489236538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g236481236536_))))
                    (let ((_hd236488236541_
                           (let ()
                             (declare (not safe))
                             (##car _e236489236538_)))
                          (_tl236487236543_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236489236538_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl236487236543_))
                          (let ((_e236492236546_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl236487236543_))))
                            (let ((_hd236491236549_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236492236546_)))
                                  (_tl236490236551_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236492236546_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd236491236549_))
                                  (let ((_e236495236554_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd236491236549_))))
                                    (let ((_hd236494236557_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236495236554_)))
                                          (_tl236493236559_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236495236554_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd236494236557_))
                                          (let ((_e236498236562_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd236494236557_))))
                                            (let ((_hd236497236565_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236498236562_)))
                                                  (_tl236496236567_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236498236562_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd236497236565_))
                                                  (let ((_e236501236570_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd236497236565_))))
                                                    (let ((_hd236500236573_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e236501236570_)))
                                                          (_tl236499236575_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e236501236570_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236499236575_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl236496236567_))
                      (let ((_e236504236578_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl236496236567_))))
                        (let ((_hd236503236581_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236504236578_)))
                              (_tl236502236583_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236504236578_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd236503236581_))
                              (let ((_e236507236586_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd236503236581_))))
                                (let ((_hd236506236589_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236507236586_)))
                                      (_tl236505236591_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236507236586_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236505236591_))
                                      (let ((_e236510236594_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236505236591_))))
                                        (let ((_hd236509236597_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236510236594_)))
                                              (_tl236508236599_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236510236594_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd236509236597_))
                                              (let ((_e236513236602_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd236509236597_))))
                                                (let ((_hd236512236605_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236513236602_)))
                                                      (_tl236511236607_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236513236602_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd236512236605_))
                                                      (let ((_e236516236610_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd236512236605_))))
                (let ((_hd236515236613_
                       (let () (declare (not safe)) (##car _e236516236610_)))
                      (_tl236514236615_
                       (let () (declare (not safe)) (##cdr _e236516236610_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd236515236613_))
                      (let ((_e236519236618_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd236515236613_))))
                        (let ((_hd236518236621_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236519236618_)))
                              (_tl236517236623_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236519236618_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236517236623_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl236514236615_))
                                  (let ((_e236522236626_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl236514236615_))))
                                    (let ((_hd236521236629_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236522236626_)))
                                          (_tl236520236631_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236522236626_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236520236631_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236511236607_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl236508236599_))
                                                  (let ((_e236525236634_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl236508236599_))))
                                                    (let ((_hd236524236637_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e236525236634_)))
                                                          (_tl236523236639_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e236525236634_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236523236639_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl236502236583_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl236493236559_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236490236551_))
                              (let ((_e236528236642_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236490236551_))))
                                (let ((_hd236527236645_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236528236642_)))
                                      (_tl236526236647_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236528236642_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236526236647_))
                                      ((lambda (_L236650_
                                                _L236651_
                                                _L236652_
                                                _L236653_
                                                _L236654_)
                                         (let* ((_get-kws-id236694_
                                                 (let ((__tmp249853
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L236466_)))
                                                       (__tmp249852
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp249853
                                                    __tmp249852)))
                                                (_get-kws-id236696_
                                                 (let ((__tmp249854
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx236167_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id236694_
                                                    __tmp249854)))
                                                (_main-id236698_
                                                 (let ((__tmp249856
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L236466_)))
                                                       (__tmp249855
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp249856
                                                    __tmp249855)))
                                                (_main-id236700_
                                                 (let ((__tmp249857
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx236167_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id236698_
                                                    __tmp249857)))
                                                (_g249858_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id236696_)))
                                                (_g249859_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id236700_)))
                                                (_new-kw-dispatch236704_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L236650_
                                                    _L236654_
                                                    _get-kws-id236696_)))
                                                (_new-get-kws236706_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L236651_
                                                    _L236653_
                                                    _main-id236700_))))
                                           (let ((__tmp249862
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L236466_)))
                                                 (__tmp249861
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id236696_)))
                                                 (__tmp249860
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id236700_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp249862
                                              '" => "
                                              __tmp249861
                                              '" => "
                                              __tmp249860))
                                           (let ((__tmp249867
                                                  (let ((__tmp249868
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__247488247489_
                                                            _main-id236700_
                                                            _L236652_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp249868
                                                          _lift1236344_)))
                                                 (__tmp249865
                                                  (let ((__tmp249866
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__247488247489_
                                                            _get-kws-id236696_
                                                            _new-get-kws236706_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp249866
                                                          _lift2236345_)))
                                                 (__tmp249863
                                                  (let ((__tmp249864
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__247488247489_
                                                            _L236466_
                                                            _new-kw-dispatch236704_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp249864
                                                          _bind236346_))))
                                             (declare (not safe))
                                             (_lp236341_
                                              _rest236366_
                                              __tmp249867
                                              __tmp249865
                                              __tmp249863))))
                                       _hd236527236645_
                                       _hd236524236637_
                                       _hd236521236629_
                                       _hd236518236621_
                                       _hd236500236573_)
                                      (let ()
                                        (declare (not safe))
                                        (_g236480236533_ _g236481236536_)))))
                              (let ()
                                (declare (not safe))
                                (_g236480236533_ _g236481236536_)))
                          (let ()
                            (declare (not safe))
                            (_g236480236533_ _g236481236536_)))
                      (let ()
                        (declare (not safe))
                        (_g236480236533_ _g236481236536_)))
                  (let ()
                    (declare (not safe))
                    (_g236480236533_ _g236481236536_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236480236533_
                                                     _g236481236536_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g236480236533_
                                                 _g236481236536_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g236480236533_
                                             _g236481236536_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g236480236533_ _g236481236536_)))
                              (let ()
                                (declare (not safe))
                                (_g236480236533_ _g236481236536_)))))
                      (let ()
                        (declare (not safe))
                        (_g236480236533_ _g236481236536_)))))
              (let ()
                (declare (not safe))
                (_g236480236533_ _g236481236536_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g236480236533_
                                                 _g236481236536_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236480236533_ _g236481236536_)))))
                              (let ()
                                (declare (not safe))
                                (_g236480236533_ _g236481236536_)))))
                      (let ()
                        (declare (not safe))
                        (_g236480236533_ _g236481236536_)))
                  (let ()
                    (declare (not safe))
                    (_g236480236533_ _g236481236536_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236480236533_
                                                     _g236481236536_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g236480236533_
                                             _g236481236536_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g236480236533_ _g236481236536_)))))
                          (let ()
                            (declare (not safe))
                            (_g236480236533_ _g236481236536_)))))
                  (let ()
                    (declare (not safe))
                    (_g236480236533_ _g236481236536_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g236479236709_ _L236465_))))
                                         (___kont249330249331_
                                          (lambda (_L236416_ _L236417_)
                                            (let ((__tmp249869
                                                   (let ((__tmp249870
                                                          (let ((__tmp249871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L236416_ '()))))
                    (declare (not safe))
                    (cons _L236417_ __tmp249871))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp249870
                                                           _bind236346_))))
                                              (declare (not safe))
                                              (_lp236341_
                                               _rest236366_
                                               _lift1236344_
                                               _lift2236345_
                                               __tmp249869)))))
                                     (let ((___match249353249354_
                                            (lambda (_e236376236441_
                                                     _hd236375236444_
                                                     _tl236374236446_
                                                     _e236379236449_
                                                     _hd236378236452_
                                                     _tl236377236454_
                                                     _e236382236457_
                                                     _hd236381236460_
                                                     _tl236380236462_)
                                              (let ((_L236465_
                                                     _hd236381236460_)
                                                    (_L236466_
                                                     _hd236378236452_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L236466_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L236465_)))
                                                    (___kont249328249329_
                                                     _L236465_
                                                     _L236466_)
                                                    (___kont249330249331_
                                                     _hd236381236460_
                                                     _hd236375236444_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx249326249327_))
                                           (let ((_e236376236441_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx249326249327_))))
                                             (let ((_tl236374236446_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e236376236441_)))
                                                   (_hd236375236444_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e236376236441_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd236375236444_))
                                                   (let ((_e236379236449_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd236375236444_))))
                                                     (let ((_tl236377236454_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e236379236449_)))
                                                           (_hd236378236452_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e236379236449_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl236377236454_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl236374236446_))
                       (let ((_e236382236457_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl236374236446_))))
                         (let ((_tl236380236462_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e236382236457_)))
                               (_hd236381236460_
                                (let ()
                                  (declare (not safe))
                                  (##car _e236382236457_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl236380236462_))
                               (___match249353249354_
                                _e236376236441_
                                _hd236375236444_
                                _tl236374236446_
                                _e236379236449_
                                _hd236378236452_
                                _tl236377236454_
                                _e236382236457_
                                _hd236381236460_
                                _tl236380236462_)
                               (let ()
                                 (declare (not safe))
                                 (_g236370236395_)))))
                       (let () (declare (not safe)) (_g236370236395_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl236374236446_))
                       (let ((_e236390236408_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl236374236446_))))
                         (let ((_tl236388236413_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e236390236408_)))
                               (_hd236389236411_
                                (let ()
                                  (declare (not safe))
                                  (##car _e236390236408_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl236388236413_))
                               (___kont249330249331_
                                _hd236389236411_
                                _hd236375236444_)
                               (let ()
                                 (declare (not safe))
                                 (_g236370236395_)))))
                       (let () (declare (not safe)) (_g236370236395_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl236374236446_))
                                                       (let ((_e236390236408_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl236374236446_))))
                 (let ((_tl236388236413_
                        (let () (declare (not safe)) (##cdr _e236390236408_)))
                       (_hd236389236411_
                        (let () (declare (not safe)) (##car _e236390236408_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl236388236413_))
                       (___kont249330249331_ _hd236389236411_ _hd236375236444_)
                       (let () (declare (not safe)) (_g236370236395_)))))
               (let () (declare (not safe)) (_g236370236395_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g236370236395_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest236347236355_))
                             (let ((_hd236352236718_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest236347236355_)))
                                   (_tl236353236720_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest236347236355_))))
                               (let* ((_hd236723_ _hd236352236718_)
                                      (_rest236725_ _tl236353236720_))
                                 (declare (not safe))
                                 (_K236351236715_ _rest236725_ _hd236723_)))
                             (let ()
                               (declare (not safe))
                               (_else236349236363_))))))))
          (let* ((___stx249370249371_ _stx236167_)
                 (_g236175236201_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx249370249371_)))))
            (let ((___kont249372249373_
                   (lambda (_L236261_ _L236262_)
                     (let ((__tmp249873
                            (lambda ()
                              (if (let ((__tmp249900
                                         (let ((__tmp249901
                                                (lambda (_g236290236293_
                                                         _g236291236295_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g236290236293_
                                                          _g236291236295_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp249901
                                                   '()
                                                   _L236262_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?236171_
                                            __tmp249900))
                                  (let ((_g249887_
                                         (let ((__tmp249889
                                                (let ((__tmp249890
                                                       (lambda (_g236297236300_
                                                                _g236298236302_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g236297236300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g236298236302_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp249890
                                                          '()
                                                          _L236262_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings236172_
                                            __tmp249889))))
                                    (begin
                                      (let ((_g249888_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g249887_)
                                                   (##vector-length _g249887_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g249888_ 3)))
                                            (error "Context expects 3 values"
                                                   _g249888_)))
                                      (let ((_lift1236305_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g249887_ 0)))
                                            (_lift2236306_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g249887_ 1)))
                                            (_hd236307_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g249887_ 2))))
                                        (let* ((_expr236309_
                                                (let ((__tmp249891
                                                       (let ((__tmp249892
                                                              (let ((__tmp249893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L236261_ '()))))
                        (declare (not safe))
                        (cons _hd236307_ __tmp249893))))
                 (declare (not safe))
                 (cons '%#let-values __tmp249892))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp249891
                                                   _stx236167_)))
                                               (_expr236311_
                                                (let ((__tmp249894
                                                       (let ((__tmp249895
                                                              (let ((__tmp249896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr236309_ '()))))
                        (declare (not safe))
                        (cons _lift2236306_ __tmp249896))))
                 (declare (not safe))
                 (cons '%#let-values __tmp249895))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp249894
                                                   _stx236167_)))
                                               (_expr236313_
                                                (let ((__tmp249897
                                                       (let ((__tmp249898
                                                              (let ((__tmp249899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr236311_ '()))))
                        (declare (not safe))
                        (cons _lift1236305_ __tmp249899))))
                 (declare (not safe))
                 (cons '%#let-values __tmp249898))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp249897
                                                   _stx236167_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr236313_))))))
                                  (let ((_g249874_
                                         (let ((__tmp249876
                                                (let ((__tmp249877
                                                       (lambda (_g236315236318_
                                                                _g236316236320_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g236315236318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g236316236320_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp249877
                                                          '()
                                                          _L236262_))))
                                           (declare (not safe))
                                           (_compile-bindings236170_
                                            __tmp249876))))
                                    (begin
                                      (let ((_g249875_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g249874_)
                                                   (##vector-length _g249874_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g249875_ 3)))
                                            (error "Context expects 3 values"
                                                   _g249875_)))
                                      (let ((_lift1236323_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g249874_ 0)))
                                            (_lift2236324_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g249874_ 1)))
                                            (_hd236325_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g249874_ 2))))
                                        (let* ((_body236327_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L236261_)))
                                               (_expr236329_
                                                (let ((__tmp249878
                                                       (let ((__tmp249879
                                                              (let ((__tmp249880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body236327_ '()))))
                        (declare (not safe))
                        (cons _hd236325_ __tmp249880))))
                 (declare (not safe))
                 (cons '%#let-values __tmp249879))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp249878
                                                   _stx236167_)))
                                               (_expr236331_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2236324_))
                                                    _expr236329_
                                                    (let ((__tmp249881
                                                           (let ((__tmp249882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp249883
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr236329_ '()))))
                            (declare (not safe))
                            (cons _lift2236324_ __tmp249883))))
                     (declare (not safe))
                     (cons '%#let-values __tmp249882))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp249881 _stx236167_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr236333_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1236323_))
                                                    _expr236331_
                                                    (let ((__tmp249884
                                                           (let ((__tmp249885
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp249886
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr236331_ '()))))
                            (declare (not safe))
                            (cons _lift1236323_ __tmp249886))))
                     (declare (not safe))
                     (cons '%#let-values __tmp249885))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp249884 _stx236167_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr236333_)))))))
                           (__tmp249872
                            (let ((__obj249576
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj249576)
                              __obj249576)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp249873
                        gx#current-expander-context
                        __tmp249872))))
                  (___kont249376249377_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx236167_)))))
              (let ((___match249397249398_
                     (lambda (_e236181236213_
                              _hd236180236216_
                              _tl236179236218_
                              _e236184236221_
                              _hd236183236224_
                              _tl236182236226_
                              ___splice249374249375_
                              _target236185236229_
                              _tl236187236231_)
                       (letrec ((_loop236188236234_
                                 (lambda (_hd236186236237_ _bind236192236239_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd236186236237_))
                                       (let ((_e236189236242_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd236186236237_))))
                                         (let ((_lp-tl236191236247_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e236189236242_)))
                                               (_lp-hd236190236245_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e236189236242_))))
                                           (let ((__tmp249904
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd236190236245_
                                                          _bind236192236239_))))
                                             (declare (not safe))
                                             (_loop236188236234_
                                              _lp-tl236191236247_
                                              __tmp249904))))
                                       (let ((_bind236193236250_
                                              (reverse _bind236192236239_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl236182236226_))
                                             (let ((_e236196236253_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl236182236226_))))
                                               (let ((_tl236194236258_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e236196236253_)))
                                                     (_hd236195236256_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e236196236253_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl236194236258_))
                                                     (let ((_L236261_
                                                            _hd236195236256_)
                                                           (_L236262_
                                                            _bind236193236250_))
                                                       (if (let ((__tmp249902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp249903
                                 (lambda (_g236282236285_ _g236283236287_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g236282236285_ _g236283236287_)))))
                            (declare (not safe))
                            (foldr1 __tmp249903 '() _L236262_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp249902))
                   (___kont249372249373_ _L236261_ _L236262_)
                   (___kont249376249377_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont249376249377_))))
                                             (___kont249376249377_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop236188236234_ _target236185236229_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx249370249371_))
                    (let ((_e236181236213_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx249370249371_))))
                      (let ((_tl236179236218_
                             (let ()
                               (declare (not safe))
                               (##cdr _e236181236213_)))
                            (_hd236180236216_
                             (let ()
                               (declare (not safe))
                               (##car _e236181236213_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl236179236218_))
                            (let ((_e236184236221_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl236179236218_))))
                              (let ((_tl236182236226_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e236184236221_)))
                                    (_hd236183236224_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e236184236221_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd236183236224_))
                                    (let ((___splice249374249375_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd236183236224_
                                              '0))))
                                      (let ((_tl236187236231_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice249374249375_
                                                '1)))
                                            (_target236185236229_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice249374249375_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl236187236231_))
                                            (___match249397249398_
                                             _e236181236213_
                                             _hd236180236216_
                                             _tl236179236218_
                                             _e236184236221_
                                             _hd236183236224_
                                             _tl236182236226_
                                             ___splice249374249375_
                                             _target236185236229_
                                             _tl236187236231_)
                                            (___kont249376249377_))))
                                    (___kont249376249377_))))
                            (___kont249376249377_))))
                    (___kont249376249377_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx235311_)
        (letrec* ((_bind-e__247493247494_
                   (lambda (_id236151_ _expr236152_ _compile?236153_)
                     (let ((__tmp249907
                            (let ()
                              (declare (not safe))
                              (cons _id236151_ '())))
                           (__tmp249905
                            (let ((__tmp249906
                                   (if _compile?236153_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr236152_))
                                       _expr236152_)))
                              (declare (not safe))
                              (cons __tmp249906 '()))))
                       (declare (not safe))
                       (cons __tmp249907 __tmp249905))))
                  (_bind-e__0__247495247496_
                   (lambda (_id236158_ _expr236159_)
                     (let ((_compile?236161_ '#t))
                       (declare (not safe))
                       (_bind-e__247493247494_
                        _id236158_
                        _expr236159_
                        _compile?236161_))))
                  (_bind-e235313_
                   (lambda _g249909_
                     (let ((_g249908_
                            (let ()
                              (declare (not safe))
                              (##length _g249909_))))
                       (cond ((let () (declare (not safe)) (##fx= _g249908_ 2))
                              (apply (lambda (_id236158_ _expr236159_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__247495247496_
                                          _id236158_
                                          _expr236159_)))
                                     _g249909_))
                             ((let () (declare (not safe)) (##fx= _g249908_ 3))
                              (apply (lambda (_id236163_
                                              _expr236164_
                                              _compile?236165_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__247493247494_
                                          _id236163_
                                          _expr236164_
                                          _compile?236165_)))
                                     _g249909_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g249909_))))))
                  (_compile-bindings235314_
                   (lambda (_rest235449_)
                     (let _lp235451_ ((_rest235453_ _rest235449_)
                                      (_bind235454_ '()))
                       (let* ((_rest235455235463_ _rest235453_)
                              (_else235457235471_
                               (lambda () (reverse _bind235454_)))
                              (_K235459236138_
                               (lambda (_rest235474_ _hd235475_)
                                 (let* ((___stx249420249421_ _hd235475_)
                                        (_g235480235527_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx249420249421_)))))
                                   (let ((___kont249422249423_
                                          (lambda (_L236045_ _L236046_)
                                            (let* ((___stx249400249401_
                                                    _L236045_)
                                                   (_g236061236075_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx249400249401_)))))
                                              (let ((___kont249402249403_
                                                     (lambda (_L236123_)
                                                       (let ((__tmp249910
                                                              (let ((__tmp249911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__247493247494_
                                _L236046_
                                _L236045_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp249911 _bind235454_))))
                 (declare (not safe))
                 (_lp235451_ _rest235474_ __tmp249910))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont249404249405_
                                                     (lambda (_L236088_)
                                                       (let ((_g249912_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx235311_
                         _L236046_
                         _L236088_
                         '#t))))
                 (begin
                   (let ((_g249913_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g249912_)
                                (##vector-length _g249912_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g249913_ 3)))
                         (error "Context expects 3 values" _g249913_)))
                   (let ((_ids236098_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g249912_ 0)))
                         (_impls236099_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g249912_ 1)))
                         (_clauses236100_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g249912_ 2))))
                     (let* ((_g249914_
                             (for-each gx#core-bind-runtime! _ids236098_))
                            (_xbind236103_
                             (map _bind-e235313_ _ids236098_ _impls236099_))
                            (_expr*236105_
                             (let ((__tmp249916
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses236100_)))
                                   (__tmp249915
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp249916
                                __tmp249915)))
                            (_bind*236107_
                             (let ()
                               (declare (not safe))
                               (_bind-e__247493247494_
                                _L236046_
                                _expr*236105_
                                '#f))))
                       (let ((__tmp249918
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L236046_)))
                             (__tmp249917
                              (map gxc#identifier-symbol _ids236098_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp249918
                          '" => "
                          __tmp249917))
                       (let ((__tmp249919
                              (let ((__tmp249920
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind235454_
                                               _xbind236103_))))
                                (declare (not safe))
                                (cons _bind*236107_ __tmp249920))))
                         (declare (not safe))
                         (_lp235451_ _rest235474_ __tmp249919)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match249411249412_
                                                       (lambda (_e236066236115_
                                                                _hd236065236118_
                                                                _tl236064236120_)
                                                         (let ((_L236123_
                                                                _tl236064236120_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L236123_))
                       (___kont249402249403_ _L236123_)
                       (___kont249404249405_ _tl236064236120_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx249400249401_))
                                                      (let ((_e236066236115_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx249400249401_))))
                (let ((_tl236064236120_
                       (let () (declare (not safe)) (##cdr _e236066236115_)))
                      (_hd236065236118_
                       (let () (declare (not safe)) (##car _e236066236115_))))
                  (___match249411249412_
                   _e236066236115_
                   _hd236065236118_
                   _tl236064236120_)))
              (let () (declare (not safe)) (_g236061236075_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont249424249425_
                                          (lambda (_L235873_ _L235874_)
                                            (let* ((_g235888235918_
                                                    (lambda (_g235889235915_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g235889235915_))))
                                                   (_g235887236013_
                                                    (lambda (_g235889235921_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g235889235921_))
                                                          (let ((_e235895235923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g235889235921_))))
                    (let ((_hd235894235926_
                           (let ()
                             (declare (not safe))
                             (##car _e235895235923_)))
                          (_tl235893235928_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235895235923_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl235893235928_))
                          (let ((_e235898235931_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl235893235928_))))
                            (let ((_hd235897235934_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235898235931_)))
                                  (_tl235896235936_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235898235931_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd235897235934_))
                                  (let ((_e235901235939_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd235897235934_))))
                                    (let ((_hd235900235942_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235901235939_)))
                                          (_tl235899235944_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235901235939_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd235900235942_))
                                          (let ((_e235904235947_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd235900235942_))))
                                            (let ((_hd235903235950_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235904235947_)))
                                                  (_tl235902235952_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235904235947_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd235903235950_))
                                                  (let ((_e235907235955_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd235903235950_))))
                                                    (let ((_hd235906235958_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235907235955_)))
                                                          (_tl235905235960_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235907235955_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl235905235960_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl235902235952_))
                      (let ((_e235910235963_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl235902235952_))))
                        (let ((_hd235909235966_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235910235963_)))
                              (_tl235908235968_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235910235963_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl235908235968_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl235899235944_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235896235936_))
                                      (let ((_e235913235971_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235896235936_))))
                                        (let ((_hd235912235974_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235913235971_)))
                                              (_tl235911235976_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235913235971_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235911235976_))
                                              ((lambda (_L235979_
                                                        _L235980_
                                                        _L235981_)
                                                 (let* ((_lambda-id236005_
                                                         (let ((__tmp249922
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L235874_)))
                       (__tmp249921 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp249922 __tmp249921)))
                (_lambda-id236007_
                 (let ((__tmp249923
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx235311_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id236005_ __tmp249923)))
                (_g249924_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id236007_)))
                (_new-case-lambda-expr236010_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L235979_
                    _L235981_
                    _lambda-id236007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp249926
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L235874_)))
                                                         (__tmp249925
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id236007_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp249926
                                                      '" => "
                                                      __tmp249925))
                                                   (let ((__tmp249929
                                                          (let ((__tmp249930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__247493247494_
                            _L235874_
                            _new-case-lambda-expr236010_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp249930 _rest235474_)))
                 (__tmp249927
                  (let ((__tmp249928
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__247495247496_
                            _lambda-id236007_
                            _L235980_))))
                    (declare (not safe))
                    (cons __tmp249928 _bind235454_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp235451_
                                                      __tmp249929
                                                      __tmp249927))))
                                               _hd235912235974_
                                               _hd235909235966_
                                               _hd235906235958_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235888235918_
                                                 _g235889235921_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235888235918_ _g235889235921_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g235888235918_ _g235889235921_)))
                              (let ()
                                (declare (not safe))
                                (_g235888235918_ _g235889235921_)))))
                      (let ()
                        (declare (not safe))
                        (_g235888235918_ _g235889235921_)))
                  (let ()
                    (declare (not safe))
                    (_g235888235918_ _g235889235921_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235888235918_
                                                     _g235889235921_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g235888235918_
                                             _g235889235921_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g235888235918_ _g235889235921_)))))
                          (let ()
                            (declare (not safe))
                            (_g235888235918_ _g235889235921_)))))
                  (let ()
                    (declare (not safe))
                    (_g235888235918_ _g235889235921_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g235887236013_ _L235873_))))
                                         (___kont249426249427_
                                          (lambda (_L235597_ _L235598_)
                                            (let* ((_g235612235665_
                                                    (lambda (_g235613235662_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g235613235662_))))
                                                   (_g235611235841_
                                                    (lambda (_g235613235668_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g235613235668_))
                                                          (let ((_e235621235670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g235613235668_))))
                    (let ((_hd235620235673_
                           (let ()
                             (declare (not safe))
                             (##car _e235621235670_)))
                          (_tl235619235675_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235621235670_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl235619235675_))
                          (let ((_e235624235678_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl235619235675_))))
                            (let ((_hd235623235681_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235624235678_)))
                                  (_tl235622235683_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235624235678_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd235623235681_))
                                  (let ((_e235627235686_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd235623235681_))))
                                    (let ((_hd235626235689_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235627235686_)))
                                          (_tl235625235691_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235627235686_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd235626235689_))
                                          (let ((_e235630235694_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd235626235689_))))
                                            (let ((_hd235629235697_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235630235694_)))
                                                  (_tl235628235699_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235630235694_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd235629235697_))
                                                  (let ((_e235633235702_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd235629235697_))))
                                                    (let ((_hd235632235705_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235633235702_)))
                                                          (_tl235631235707_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235633235702_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl235631235707_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl235628235699_))
                      (let ((_e235636235710_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl235628235699_))))
                        (let ((_hd235635235713_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235636235710_)))
                              (_tl235634235715_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235636235710_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd235635235713_))
                              (let ((_e235639235718_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd235635235713_))))
                                (let ((_hd235638235721_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235639235718_)))
                                      (_tl235637235723_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235639235718_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235637235723_))
                                      (let ((_e235642235726_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235637235723_))))
                                        (let ((_hd235641235729_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235642235726_)))
                                              (_tl235640235731_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235642235726_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd235641235729_))
                                              (let ((_e235645235734_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd235641235729_))))
                                                (let ((_hd235644235737_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235645235734_)))
                                                      (_tl235643235739_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235645235734_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd235644235737_))
                                                      (let ((_e235648235742_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd235644235737_))))
                (let ((_hd235647235745_
                       (let () (declare (not safe)) (##car _e235648235742_)))
                      (_tl235646235747_
                       (let () (declare (not safe)) (##cdr _e235648235742_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd235647235745_))
                      (let ((_e235651235750_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd235647235745_))))
                        (let ((_hd235650235753_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235651235750_)))
                              (_tl235649235755_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235651235750_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl235649235755_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235646235747_))
                                  (let ((_e235654235758_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235646235747_))))
                                    (let ((_hd235653235761_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235654235758_)))
                                          (_tl235652235763_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235654235758_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235652235763_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235643235739_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235640235731_))
                                                  (let ((_e235657235766_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235640235731_))))
                                                    (let ((_hd235656235769_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235657235766_)))
                                                          (_tl235655235771_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235657235766_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl235655235771_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl235634235715_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl235625235691_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235622235683_))
                              (let ((_e235660235774_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235622235683_))))
                                (let ((_hd235659235777_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235660235774_)))
                                      (_tl235658235779_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235660235774_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235658235779_))
                                      ((lambda (_L235782_
                                                _L235783_
                                                _L235784_
                                                _L235785_
                                                _L235786_)
                                         (let* ((_get-kws-id235826_
                                                 (let ((__tmp249932
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L235598_)))
                                                       (__tmp249931
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp249932
                                                    __tmp249931)))
                                                (_get-kws-id235828_
                                                 (let ((__tmp249933
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx235311_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id235826_
                                                    __tmp249933)))
                                                (_main-id235830_
                                                 (let ((__tmp249935
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L235598_)))
                                                       (__tmp249934
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp249935
                                                    __tmp249934)))
                                                (_main-id235832_
                                                 (let ((__tmp249936
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx235311_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id235830_
                                                    __tmp249936)))
                                                (_g249937_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id235828_)))
                                                (_g249938_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id235832_)))
                                                (_new-kw-dispatch235836_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L235782_
                                                    _L235786_
                                                    _get-kws-id235828_)))
                                                (_new-get-kws235838_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L235783_
                                                    _L235785_
                                                    _main-id235832_))))
                                           (let ((__tmp249941
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L235598_)))
                                                 (__tmp249940
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id235828_)))
                                                 (__tmp249939
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id235832_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp249941
                                              '" => "
                                              __tmp249940
                                              '" => "
                                              __tmp249939))
                                           (let ((__tmp249942
                                                  (let ((__tmp249947
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__247493247494_
                                                            _main-id235832_
                                                            _L235784_
                                                            '#f)))
                                                        (__tmp249943
                                                         (let ((__tmp249946
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__247493247494_
                           _get-kws-id235828_
                           _new-get-kws235838_
                           '#f)))
                       (__tmp249944
                        (let ((__tmp249945
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__247493247494_
                                  _L235598_
                                  _new-kw-dispatch235836_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp249945 _rest235474_))))
                   (declare (not safe))
                   (cons __tmp249946 __tmp249944))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp249947
                                                          __tmp249943))))
                                             (declare (not safe))
                                             (_lp235451_
                                              __tmp249942
                                              _bind235454_))))
                                       _hd235659235777_
                                       _hd235656235769_
                                       _hd235653235761_
                                       _hd235650235753_
                                       _hd235632235705_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235612235665_ _g235613235668_)))))
                              (let ()
                                (declare (not safe))
                                (_g235612235665_ _g235613235668_)))
                          (let ()
                            (declare (not safe))
                            (_g235612235665_ _g235613235668_)))
                      (let ()
                        (declare (not safe))
                        (_g235612235665_ _g235613235668_)))
                  (let ()
                    (declare (not safe))
                    (_g235612235665_ _g235613235668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235612235665_
                                                     _g235613235668_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g235612235665_
                                                 _g235613235668_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g235612235665_
                                             _g235613235668_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g235612235665_ _g235613235668_)))
                              (let ()
                                (declare (not safe))
                                (_g235612235665_ _g235613235668_)))))
                      (let ()
                        (declare (not safe))
                        (_g235612235665_ _g235613235668_)))))
              (let ()
                (declare (not safe))
                (_g235612235665_ _g235613235668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g235612235665_
                                                 _g235613235668_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235612235665_ _g235613235668_)))))
                              (let ()
                                (declare (not safe))
                                (_g235612235665_ _g235613235668_)))))
                      (let ()
                        (declare (not safe))
                        (_g235612235665_ _g235613235668_)))
                  (let ()
                    (declare (not safe))
                    (_g235612235665_ _g235613235668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235612235665_
                                                     _g235613235668_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g235612235665_
                                             _g235613235668_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g235612235665_ _g235613235668_)))))
                          (let ()
                            (declare (not safe))
                            (_g235612235665_ _g235613235668_)))))
                  (let ()
                    (declare (not safe))
                    (_g235612235665_ _g235613235668_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g235611235841_ _L235597_))))
                                         (___kont249428249429_
                                          (lambda (_L235548_ _L235549_)
                                            (let ((__tmp249948
                                                   (let ((__tmp249949
                                                          (let ((__tmp249950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp249951
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L235548_))))
                           (declare (not safe))
                           (cons __tmp249951 '()))))
                    (declare (not safe))
                    (cons _L235549_ __tmp249950))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp249949
                                                           _bind235454_))))
                                              (declare (not safe))
                                              (_lp235451_
                                               _rest235474_
                                               __tmp249948)))))
                                     (let* ((___match249495249496_
                                             (lambda (_e235508235573_
                                                      _hd235507235576_
                                                      _tl235506235578_
                                                      _e235511235581_
                                                      _hd235510235584_
                                                      _tl235509235586_
                                                      _e235514235589_
                                                      _hd235513235592_
                                                      _tl235512235594_)
                                               (let ((_L235597_
                                                      _hd235513235592_)
                                                     (_L235598_
                                                      _hd235510235584_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L235598_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L235597_)))
                                                     (___kont249426249427_
                                                      _L235597_
                                                      _L235598_)
                                                     (___kont249428249429_
                                                      _hd235513235592_
                                                      _hd235507235576_)))))
                                            (___match249473249474_
                                             (lambda (_e235497235849_
                                                      _hd235496235852_
                                                      _tl235495235854_
                                                      _e235500235857_
                                                      _hd235499235860_
                                                      _tl235498235862_
                                                      _e235503235865_
                                                      _hd235502235868_
                                                      _tl235501235870_)
                                               (let ((_L235873_
                                                      _hd235502235868_)
                                                     (_L235874_
                                                      _hd235499235860_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L235874_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L235873_)))
                                                     (___kont249424249425_
                                                      _L235873_
                                                      _L235874_)
                                                     (___match249495249496_
                                                      _e235497235849_
                                                      _hd235496235852_
                                                      _tl235495235854_
                                                      _e235500235857_
                                                      _hd235499235860_
                                                      _tl235498235862_
                                                      _e235503235865_
                                                      _hd235502235868_
                                                      _tl235501235870_)))))
                                            (___match249451249452_
                                             (lambda (_e235486236021_
                                                      _hd235485236024_
                                                      _tl235484236026_
                                                      _e235489236029_
                                                      _hd235488236032_
                                                      _tl235487236034_
                                                      _e235492236037_
                                                      _hd235491236040_
                                                      _tl235490236042_)
                                               (let ((_L236045_
                                                      _hd235491236040_)
                                                     (_L236046_
                                                      _hd235488236032_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L236046_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L236045_)))
                                                     (___kont249422249423_
                                                      _L236045_
                                                      _L236046_)
                                                     (___match249473249474_
                                                      _e235486236021_
                                                      _hd235485236024_
                                                      _tl235484236026_
                                                      _e235489236029_
                                                      _hd235488236032_
                                                      _tl235487236034_
                                                      _e235492236037_
                                                      _hd235491236040_
                                                      _tl235490236042_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx249420249421_))
                                           (let ((_e235486236021_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx249420249421_))))
                                             (let ((_tl235484236026_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e235486236021_)))
                                                   (_hd235485236024_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e235486236021_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd235485236024_))
                                                   (let ((_e235489236029_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd235485236024_))))
                                                     (let ((_tl235487236034_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e235489236029_)))
                                                           (_hd235488236032_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e235489236029_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl235487236034_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl235484236026_))
                       (let ((_e235492236037_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl235484236026_))))
                         (let ((_tl235490236042_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e235492236037_)))
                               (_hd235491236040_
                                (let ()
                                  (declare (not safe))
                                  (##car _e235492236037_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl235490236042_))
                               (___match249451249452_
                                _e235486236021_
                                _hd235485236024_
                                _tl235484236026_
                                _e235489236029_
                                _hd235488236032_
                                _tl235487236034_
                                _e235492236037_
                                _hd235491236040_
                                _tl235490236042_)
                               (let ()
                                 (declare (not safe))
                                 (_g235480235527_)))))
                       (let () (declare (not safe)) (_g235480235527_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl235484236026_))
                       (let ((_e235522235540_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl235484236026_))))
                         (let ((_tl235520235545_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e235522235540_)))
                               (_hd235521235543_
                                (let ()
                                  (declare (not safe))
                                  (##car _e235522235540_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl235520235545_))
                               (___kont249428249429_
                                _hd235521235543_
                                _hd235485236024_)
                               (let ()
                                 (declare (not safe))
                                 (_g235480235527_)))))
                       (let () (declare (not safe)) (_g235480235527_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl235484236026_))
                                                       (let ((_e235522235540_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl235484236026_))))
                 (let ((_tl235520235545_
                        (let () (declare (not safe)) (##cdr _e235522235540_)))
                       (_hd235521235543_
                        (let () (declare (not safe)) (##car _e235522235540_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl235520235545_))
                       (___kont249428249429_ _hd235521235543_ _hd235485236024_)
                       (let () (declare (not safe)) (_g235480235527_)))))
               (let () (declare (not safe)) (_g235480235527_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g235480235527_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest235455235463_))
                             (let ((_hd235460236141_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest235455235463_)))
                                   (_tl235461236143_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest235455235463_))))
                               (let* ((_hd236146_ _hd235460236141_)
                                      (_rest236148_ _tl235461236143_))
                                 (declare (not safe))
                                 (_K235459236138_ _rest236148_ _hd236146_)))
                             (let ()
                               (declare (not safe))
                               (_else235457235471_))))))))
          (let* ((___stx249512249513_ _stx235311_)
                 (_g235317235344_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx249512249513_)))))
            (let ((___kont249514249515_
                   (lambda (_L235404_ _L235405_ _L235406_)
                     (let ((__tmp249953
                            (lambda ()
                              (let ((_hd235443_
                                     (let ((__tmp249954
                                            (let ((__tmp249955
                                                   (lambda (_g235435235438_
                                                            _g235436235440_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g235435235438_
                                                             _g235436235440_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp249955
                                                      '()
                                                      _L235405_))))
                                       (declare (not safe))
                                       (_compile-bindings235314_ __tmp249954)))
                                    (_body235444_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L235404_))))
                                (let ((__tmp249956
                                       (let ((__tmp249957
                                              (let ((__tmp249958
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body235444_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd235443_
                                                      __tmp249958))))
                                         (declare (not safe))
                                         (cons _L235406_ __tmp249957))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp249956
                                   _stx235311_)))))
                           (__tmp249952
                            (let ((__obj249577
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj249577)
                              __obj249577)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp249953
                        gx#current-expander-context
                        __tmp249952))))
                  (___kont249518249519_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx235311_)))))
              (let ((___match249539249540_
                     (lambda (_e235324235356_
                              _hd235323235359_
                              _tl235322235361_
                              _e235327235364_
                              _hd235326235367_
                              _tl235325235369_
                              ___splice249516249517_
                              _target235328235372_
                              _tl235330235374_)
                       (letrec ((_loop235331235377_
                                 (lambda (_hd235329235380_ _bind235335235382_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd235329235380_))
                                       (let ((_e235332235385_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd235329235380_))))
                                         (let ((_lp-tl235334235390_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e235332235385_)))
                                               (_lp-hd235333235388_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e235332235385_))))
                                           (let ((__tmp249961
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd235333235388_
                                                          _bind235335235382_))))
                                             (declare (not safe))
                                             (_loop235331235377_
                                              _lp-tl235334235390_
                                              __tmp249961))))
                                       (let ((_bind235336235393_
                                              (reverse _bind235335235382_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl235325235369_))
                                             (let ((_e235339235396_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl235325235369_))))
                                               (let ((_tl235337235401_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e235339235396_)))
                                                     (_hd235338235399_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e235339235396_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl235337235401_))
                                                     (let ((_L235404_
                                                            _hd235338235399_)
                                                           (_L235405_
                                                            _bind235336235393_)
                                                           (_L235406_
                                                            _hd235323235359_))
                                                       (if (let ((__tmp249959
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp249960
                                 (lambda (_g235427235430_ _g235428235432_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g235427235430_ _g235428235432_)))))
                            (declare (not safe))
                            (foldr1 __tmp249960 '() _L235405_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp249959))
                   (___kont249514249515_ _L235404_ _L235405_ _L235406_)
                   (___kont249518249519_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont249518249519_))))
                                             (___kont249518249519_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop235331235377_ _target235328235372_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx249512249513_))
                    (let ((_e235324235356_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx249512249513_))))
                      (let ((_tl235322235361_
                             (let ()
                               (declare (not safe))
                               (##cdr _e235324235356_)))
                            (_hd235323235359_
                             (let ()
                               (declare (not safe))
                               (##car _e235324235356_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl235322235361_))
                            (let ((_e235327235364_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl235322235361_))))
                              (let ((_tl235325235369_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e235327235364_)))
                                    (_hd235326235367_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e235327235364_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd235326235367_))
                                    (let ((___splice249516249517_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd235326235367_
                                              '0))))
                                      (let ((_tl235330235374_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice249516249517_
                                                '1)))
                                            (_target235328235372_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice249516249517_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl235330235374_))
                                            (___match249539249540_
                                             _e235324235356_
                                             _hd235323235359_
                                             _tl235322235361_
                                             _e235327235364_
                                             _hd235326235367_
                                             _tl235325235369_
                                             ___splice249516249517_
                                             _target235328235372_
                                             _tl235330235374_)
                                            (___kont249518249519_))))
                                    (___kont249518249519_))))
                            (___kont249518249519_))))
                    (___kont249518249519_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind235229_)
        (let* ((___stx249542249543_ _bind235229_)
               (_g235232235249_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249542249543_)))))
          (let ((___kont249544249545_
                 (lambda (_L235285_ _L235286_)
                   (if (let () (declare (not safe)) (gx#identifier? _L235286_))
                       (let ((_$e235302_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L235285_))))
                         (if _$e235302_
                             _$e235302_
                             (let ((_$e235305_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L235285_))))
                               (if _$e235305_
                                   _$e235305_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L235285_))))))
                       '#f)))
                (___kont249546249547_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx249542249543_))
                (let ((_e235238235261_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx249542249543_))))
                  (let ((_tl235236235266_
                         (let () (declare (not safe)) (##cdr _e235238235261_)))
                        (_hd235237235264_
                         (let ()
                           (declare (not safe))
                           (##car _e235238235261_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd235237235264_))
                        (let ((_e235241235269_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd235237235264_))))
                          (let ((_tl235239235274_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e235241235269_)))
                                (_hd235240235272_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e235241235269_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl235239235274_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl235236235266_))
                                    (let ((_e235244235277_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl235236235266_))))
                                      (let ((_tl235242235282_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e235244235277_)))
                                            (_hd235243235280_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e235244235277_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl235242235282_))
                                            (___kont249544249545_
                                             _hd235243235280_
                                             _hd235240235272_)
                                            (___kont249546249547_))))
                                    (___kont249546249547_))
                                (___kont249546249547_))))
                        (___kont249546249547_))))
                (___kont249546249547_))))))))
