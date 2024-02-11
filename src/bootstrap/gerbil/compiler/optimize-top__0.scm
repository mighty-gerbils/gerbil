(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1707646855)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl234443_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241011 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl234443_ __tmp241011))
           (let ()
             (declare (not safe))
             (table-set! _tbl234443_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234443_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234443_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234443_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl234443_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx234426_ . _args234428_)
        (let ((__tmp241013
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234428_)
                     (gxc#compile-e__0 _stx234426_)
                     (let ((_arg1234433_ (car _args234428_))
                           (_rest234435_ (cdr _args234428_)))
                       (if (null? _rest234435_)
                           (gxc#compile-e__1 _stx234426_ _arg1234433_)
                           (let ((_arg2234438_ (car _rest234435_))
                                 (_rest234440_ (cdr _rest234435_)))
                             (if (null? _rest234440_)
                                 (gxc#compile-e__2
                                  _stx234426_
                                  _arg1234433_
                                  _arg2234438_)
                                 (apply gxc#compile-e
                                        _stx234426_
                                        _arg1234433_
                                        _arg2234438_
                                        _rest234440_))))))))
              (__tmp241012 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp241013
           gxc#current-compile-methods
           __tmp241012))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl234423_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241014 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl234423_ __tmp241014))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234423_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234423_ '%#call gxc#basic-expression-type-call%))
           _tbl234423_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx234406_ . _args234408_)
        (let ((__tmp241016
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234408_)
                     (gxc#compile-e__0 _stx234406_)
                     (let ((_arg1234413_ (car _args234408_))
                           (_rest234415_ (cdr _args234408_)))
                       (if (null? _rest234415_)
                           (gxc#compile-e__1 _stx234406_ _arg1234413_)
                           (let ((_arg2234418_ (car _rest234415_))
                                 (_rest234420_ (cdr _rest234415_)))
                             (if (null? _rest234420_)
                                 (gxc#compile-e__2
                                  _stx234406_
                                  _arg1234413_
                                  _arg2234418_)
                                 (apply gxc#compile-e
                                        _stx234406_
                                        _arg1234413_
                                        _arg2234418_
                                        _rest234420_))))))))
              (__tmp241015 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp241016
           gxc#current-compile-methods
           __tmp241015))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl234403_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241017 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl234403_ __tmp241017))
           (let ()
             (declare (not safe))
             (table-set! _tbl234403_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234403_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234403_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234403_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234403_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234403_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234403_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234403_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234403_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234403_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234403_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234403_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl234403_ '%#set! gxc#collect-body-setq%))
           _tbl234403_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx234386_ . _args234388_)
        (let ((__tmp241019
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234388_)
                     (gxc#compile-e__0 _stx234386_)
                     (let ((_arg1234393_ (car _args234388_))
                           (_rest234395_ (cdr _args234388_)))
                       (if (null? _rest234395_)
                           (gxc#compile-e__1 _stx234386_ _arg1234393_)
                           (let ((_arg2234398_ (car _rest234395_))
                                 (_rest234400_ (cdr _rest234395_)))
                             (if (null? _rest234400_)
                                 (gxc#compile-e__2
                                  _stx234386_
                                  _arg1234393_
                                  _arg2234398_)
                                 (apply gxc#compile-e
                                        _stx234386_
                                        _arg1234393_
                                        _arg2234398_
                                        _rest234400_))))))))
              (__tmp241018 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp241019
           gxc#current-compile-methods
           __tmp241018))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl234383_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241020 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl234383_ __tmp241020))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234383_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234383_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234383_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234383_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234383_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234383_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234383_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234383_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234383_ '%#ref gxc#basic-expression-type-ref%))
           _tbl234383_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx234366_ . _args234368_)
        (let ((__tmp241022
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234368_)
                     (gxc#compile-e__0 _stx234366_)
                     (let ((_arg1234373_ (car _args234368_))
                           (_rest234375_ (cdr _args234368_)))
                       (if (null? _rest234375_)
                           (gxc#compile-e__1 _stx234366_ _arg1234373_)
                           (let ((_arg2234378_ (car _rest234375_))
                                 (_rest234380_ (cdr _rest234375_)))
                             (if (null? _rest234380_)
                                 (gxc#compile-e__2
                                  _stx234366_
                                  _arg1234373_
                                  _arg2234378_)
                                 (apply gxc#compile-e
                                        _stx234366_
                                        _arg1234373_
                                        _arg2234378_
                                        _rest234380_))))))))
              (__tmp241021 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp241022
           gxc#current-compile-methods
           __tmp241021))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl234363_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241023 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl234363_ __tmp241023))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234363_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234363_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234363_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234363_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl234363_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx234346_ . _args234348_)
        (let ((__tmp241025
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234348_)
                     (gxc#compile-e__0 _stx234346_)
                     (let ((_arg1234353_ (car _args234348_))
                           (_rest234355_ (cdr _args234348_)))
                       (if (null? _rest234355_)
                           (gxc#compile-e__1 _stx234346_ _arg1234353_)
                           (let ((_arg2234358_ (car _rest234355_))
                                 (_rest234360_ (cdr _rest234355_)))
                             (if (null? _rest234360_)
                                 (gxc#compile-e__2
                                  _stx234346_
                                  _arg1234353_
                                  _arg2234358_)
                                 (apply gxc#compile-e
                                        _stx234346_
                                        _arg1234353_
                                        _arg2234358_
                                        _rest234360_))))))))
              (__tmp241024 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp241025
           gxc#current-compile-methods
           __tmp241024))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx234249_)
        (let* ((___stx238924238925_ _stx234249_)
               (_g234252234272_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx238924238925_)))))
          (let ((___kont238926238927_
                 (lambda (_L234316_ _L234317_)
                   (let ((_sym234335_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234317_))))
                     (if (let ((__tmp241026 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp241026 _sym234335_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym234335_))
                         (let ((_type234336234338_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L234316_))))
                           (if _type234336234338_
                               (let ((_type234341_ _type234336234338_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym234335_
                                  _type234341_))
                               '#f))))))
                (___kont238928238929_ (lambda () '#!void)))
            (let ((___match238957238958_
                   (lambda (_e234258234284_
                            _hd234257234287_
                            _tl234256234289_
                            _e234261234292_
                            _hd234260234295_
                            _tl234259234297_
                            _e234264234300_
                            _hd234263234303_
                            _tl234262234305_
                            _e234267234308_
                            _hd234266234311_
                            _tl234265234313_)
                     (let ((_L234316_ _hd234266234311_)
                           (_L234317_ _hd234263234303_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L234317_))
                           (___kont238926238927_ _L234316_ _L234317_)
                           (___kont238928238929_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx238924238925_))
                  (let ((_e234258234284_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx238924238925_))))
                    (let ((_tl234256234289_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234258234284_)))
                          (_hd234257234287_
                           (let ()
                             (declare (not safe))
                             (##car _e234258234284_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234256234289_))
                          (let ((_e234261234292_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234256234289_))))
                            (let ((_tl234259234297_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234261234292_)))
                                  (_hd234260234295_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234261234292_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd234260234295_))
                                  (let ((_e234264234300_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd234260234295_))))
                                    (let ((_tl234262234305_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234264234300_)))
                                          (_hd234263234303_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234264234300_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234262234305_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234259234297_))
                                              (let ((_e234267234308_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234259234297_))))
                                                (let ((_tl234265234313_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234267234308_)))
                                                      (_hd234266234311_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234267234308_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234265234313_))
                                                      (___match238957238958_
                                                       _e234258234284_
                                                       _hd234257234287_
                                                       _tl234256234289_
                                                       _e234261234292_
                                                       _hd234260234295_
                                                       _tl234259234297_
                                                       _e234264234300_
                                                       _hd234263234303_
                                                       _tl234262234305_
                                                       _e234267234308_
                                                       _hd234266234311_
                                                       _tl234265234313_)
                                                      (___kont238928238929_))))
                                              (___kont238928238929_))
                                          (___kont238928238929_))))
                                  (___kont238928238929_))))
                          (___kont238928238929_))))
                  (___kont238928238929_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx234105_)
        (let* ((___stx238960238961_ _stx234105_)
               (_g234108234139_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx238960238961_)))))
          (let ((___kont238962238963_
                 (lambda (_L234221_ _L234222_)
                   (let ((_sym234238_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234222_))))
                     (if (let ((__tmp241027 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp241027 _sym234238_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym234238_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym234238_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym234238_))
                             (let ((_type234239234241_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L234221_))))
                               (if _type234239234241_
                                   (let ((_type234244_ _type234239234241_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym234238_
                                      _type234244_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L234221_)))))
                (___kont238964238965_
                 (lambda (_L234168_ _L234169_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L234168_)))))
            (let ((___match238993238994_
                   (lambda (_e234114234189_
                            _hd234113234192_
                            _tl234112234194_
                            _e234117234197_
                            _hd234116234200_
                            _tl234115234202_
                            _e234120234205_
                            _hd234119234208_
                            _tl234118234210_
                            _e234123234213_
                            _hd234122234216_
                            _tl234121234218_)
                     (let ((_L234221_ _hd234122234216_)
                           (_L234222_ _hd234119234208_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L234222_))
                           (___kont238962238963_ _L234221_ _L234222_)
                           (___kont238964238965_
                            _hd234122234216_
                            _hd234116234200_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx238960238961_))
                  (let ((_e234114234189_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx238960238961_))))
                    (let ((_tl234112234194_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234114234189_)))
                          (_hd234113234192_
                           (let ()
                             (declare (not safe))
                             (##car _e234114234189_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234112234194_))
                          (let ((_e234117234197_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234112234194_))))
                            (let ((_tl234115234202_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234117234197_)))
                                  (_hd234116234200_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234117234197_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd234116234200_))
                                  (let ((_e234120234205_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd234116234200_))))
                                    (let ((_tl234118234210_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234120234205_)))
                                          (_hd234119234208_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234120234205_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234118234210_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234115234202_))
                                              (let ((_e234123234213_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234115234202_))))
                                                (let ((_tl234121234218_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234123234213_)))
                                                      (_hd234122234216_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234123234213_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234121234218_))
                                                      (___match238993238994_
                                                       _e234114234189_
                                                       _hd234113234192_
                                                       _tl234112234194_
                                                       _e234117234197_
                                                       _hd234116234200_
                                                       _tl234115234202_
                                                       _e234120234205_
                                                       _hd234119234208_
                                                       _tl234118234210_
                                                       _e234123234213_
                                                       _hd234122234216_
                                                       _tl234121234218_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g234108234139_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g234108234139_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234115234202_))
                                              (let ((_e234134234160_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234115234202_))))
                                                (let ((_tl234132234165_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234134234160_)))
                                                      (_hd234133234163_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234134234160_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234132234165_))
                                                      (___kont238964238965_
                                                       _hd234133234163_
                                                       _hd234116234200_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g234108234139_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g234108234139_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234115234202_))
                                      (let ((_e234134234160_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234115234202_))))
                                        (let ((_tl234132234165_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234134234160_)))
                                              (_hd234133234163_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234134234160_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234132234165_))
                                              (___kont238964238965_
                                               _hd234133234163_
                                               _hd234116234200_)
                                              (let ()
                                                (declare (not safe))
                                                (_g234108234139_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234108234139_))))))
                          (let () (declare (not safe)) (_g234108234139_)))))
                  (let () (declare (not safe)) (_g234108234139_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx233890_)
        (letrec ((_collect-e233892_
                  (lambda (_hd234049_ _expr234050_)
                    (let* ((___stx239016239017_ _hd234049_)
                           (_g234053234063_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx239016239017_)))))
                      (let ((___kont239018239019_
                             (lambda (_L234083_)
                               (let ((_sym234094_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L234083_))))
                                 (if (let ((__tmp241028
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (table-ref __tmp241028 _sym234094_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym234094_))
                                     (let ((_type234095234097_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr234050_))))
                                       (if _type234095234097_
                                           (let ((_type234100_
                                                  _type234095234097_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym234094_
                                              _type234100_
                                              '#t))
                                           '#f))))))
                            (___kont239020239021_ (lambda () '#!void)))
                        (let ((___match239029239030_
                               (lambda (_e234058234075_
                                        _hd234057234078_
                                        _tl234056234080_)
                                 (let ((_L234083_ _hd234057234078_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L234083_))
                                       (___kont239018239019_ _L234083_)
                                       (___kont239020239021_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx239016239017_))
                              (let ((_e234058234075_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx239016239017_))))
                                (let ((_tl234056234080_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234058234075_)))
                                      (_hd234057234078_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234058234075_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234056234080_))
                                      (___match239029239030_
                                       _e234058234075_
                                       _hd234057234078_
                                       _tl234056234080_)
                                      (___kont239020239021_))))
                              (___kont239020239021_))))))))
          (let* ((_g233894233929_
                  (lambda (_g233895233926_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g233895233926_))))
                 (_g233893234046_
                  (lambda (_g233895233932_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g233895233932_))
                        (let ((_e233901233934_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g233895233932_))))
                          (let ((_hd233900233937_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233901233934_)))
                                (_tl233899233939_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233901233934_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233899233939_))
                                (let ((_e233904233942_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233899233939_))))
                                  (let ((_hd233903233945_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233904233942_)))
                                        (_tl233902233947_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233904233942_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd233903233945_))
                                        (let ((_g241029_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd233903233945_
                                                  '0))))
                                          (begin
                                            (let ((_g241030_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g241029_)
                                                         (##vector-length
                                                          _g241029_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g241030_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g241030_)))
                                            (let ((_target233905233950_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g241029_
                                                      0)))
                                                  (_tl233907233952_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g241029_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233907233952_))
                                                  (letrec ((_loop233908233955_
                                                            (lambda (_hd233906233958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr233912233960_
                             _hd233913233962_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd233906233958_))
                          (let ((_e233909233965_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd233906233958_))))
                            (let ((_lp-hd233910233968_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233909233965_)))
                                  (_lp-tl233911233970_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233909233965_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd233910233968_))
                                  (let ((_e233918233973_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd233910233968_))))
                                    (let ((_hd233917233976_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233918233973_)))
                                          (_tl233916233978_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233918233973_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl233916233978_))
                                          (let ((_e233921233981_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl233916233978_))))
                                            (let ((_hd233920233984_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e233921233981_)))
                                                  (_tl233919233986_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e233921233981_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233919233986_))
                                                  (let ((__tmp241035
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd233920233984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr233912233960_)))
                (__tmp241034
                 (let ()
                   (declare (not safe))
                   (cons _hd233917233976_ _hd233913233962_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop233908233955_
                                                     _lp-tl233911233970_
                                                     __tmp241035
                                                     __tmp241034))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233894233929_
                                                     _g233895233932_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233894233929_
                                             _g233895233932_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233894233929_ _g233895233932_)))))
                          (let ((_expr233914233989_
                                 (reverse _expr233912233960_))
                                (_hd233915233991_ (reverse _hd233913233962_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233902233947_))
                                (let ((_e233924233994_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233902233947_))))
                                  (let ((_hd233923233997_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233924233994_)))
                                        (_tl233922233999_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233924233994_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233922233999_))
                                        ((lambda (_L234002_
                                                  _L234003_
                                                  _L234004_)
                                           (for-each
                                            _collect-e233892_
                                            (let ((__tmp241031
                                                   (lambda (_g234024234027_
                                                            _g234025234029_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g234024234027_
                                                             _g234025234029_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp241031
                                                      '()
                                                      _L234004_))
                                            (let ((__tmp241032
                                                   (lambda (_g234031234034_
                                                            _g234032234036_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g234031234034_
                                                             _g234032234036_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp241032
                                                      '()
                                                      _L234003_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp241033
                                                   (lambda (_g234038234041_
                                                            _g234039234043_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g234038234041_
                                                             _g234039234043_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp241033
                                                      '()
                                                      _L234003_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L234002_)))
                                         _hd233923233997_
                                         _expr233914233989_
                                         _hd233915233991_)
                                        (let ()
                                          (declare (not safe))
                                          (_g233894233929_ _g233895233932_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g233894233929_ _g233895233932_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop233908233955_
                                                       _target233905233950_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233894233929_
                                                     _g233895233932_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g233894233929_ _g233895233932_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g233894233929_ _g233895233932_)))))
                        (let ()
                          (declare (not safe))
                          (_g233894233929_ _g233895233932_))))))
            (declare (not safe))
            (_g233893234046_ _stx233890_)))))
    (define gxc#collect-type-call%
      (lambda (_stx233382_)
        (let* ((___stx239032239033_ _stx233382_)
               (_g233386233501_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239032239033_)))))
          (let ((___kont239034239035_
                 (lambda (_L233840_ _L233841_ _L233842_ _L233843_ _L233844_)
                   (let ((__tmp241039
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233843_)))
                         (__tmp241038
                          (let () (declare (not safe)) (gx#stx-e _L233842_)))
                         (__tmp241037
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233841_)))
                         (__tmp241036
                          (let () (declare (not safe)) (gx#stx-e _L233840_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp241039
                      __tmp241038
                      __tmp241037
                      __tmp241036))))
                (___kont239036239037_
                 (lambda (_L233668_ _L233669_ _L233670_ _L233671_)
                   (let ((__tmp241042
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233670_)))
                         (__tmp241041
                          (let () (declare (not safe)) (gx#stx-e _L233669_)))
                         (__tmp241040
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233668_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp241042
                      __tmp241041
                      __tmp241040
                      '#f))))
                (___kont239038239039_
                 (lambda (_L233538_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp241043
                           (lambda (_g233551233554_ _g233552233556_)
                             (let ()
                               (declare (not safe))
                               (cons _g233551233554_ _g233552233556_)))))
                      (declare (not safe))
                      (foldr1 __tmp241043 '() _L233538_))))))
            (let* ((___match239289239290_
                    (lambda (_e233487233506_
                             _hd233486233509_
                             _tl233485233511_
                             ___splice239040239041_
                             _target233488233514_
                             _tl233490233516_)
                      (letrec ((_loop233491233519_
                                (lambda (_hd233489233522_ _expr233495233524_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233489233522_))
                                      (let ((_e233492233527_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233489233522_))))
                                        (let ((_lp-tl233494233532_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233492233527_)))
                                              (_lp-hd233493233530_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233492233527_))))
                                          (let ((__tmp241044
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd233493233530_
                                                         _expr233495233524_))))
                                            (declare (not safe))
                                            (_loop233491233519_
                                             _lp-tl233494233532_
                                             __tmp241044))))
                                      (let ((_expr233496233535_
                                             (reverse _expr233495233524_)))
                                        (___kont239038239039_
                                         _expr233496233535_))))))
                        (let ()
                          (declare (not safe))
                          (_loop233491233519_ _target233488233514_ '())))))
                   (___match239169239170_
                    (lambda (_e233395233712_
                             _hd233394233715_
                             _tl233393233717_
                             _e233398233720_
                             _hd233397233723_
                             _tl233396233725_
                             _e233401233728_
                             _hd233400233731_
                             _tl233399233733_
                             _e233404233736_
                             _hd233403233739_
                             _tl233402233741_
                             _e233407233744_
                             _hd233406233747_
                             _tl233405233749_
                             _e233410233752_
                             _hd233409233755_
                             _tl233408233757_
                             _e233413233760_
                             _hd233412233763_
                             _tl233411233765_
                             _e233416233768_
                             _hd233415233771_
                             _tl233414233773_
                             _e233419233776_
                             _hd233418233779_
                             _tl233417233781_
                             _e233422233784_
                             _hd233421233787_
                             _tl233420233789_
                             _e233425233792_
                             _hd233424233795_
                             _tl233423233797_
                             _e233428233800_
                             _hd233427233803_
                             _tl233426233805_
                             _e233431233808_
                             _hd233430233811_
                             _tl233429233813_
                             _e233434233816_
                             _hd233433233819_
                             _tl233432233821_
                             _e233437233824_
                             _hd233436233827_
                             _tl233435233829_
                             _e233440233832_
                             _hd233439233835_
                             _tl233438233837_)
                      (let ((_L233840_ _hd233439233835_)
                            (_L233841_ _hd233430233811_)
                            (_L233842_ _hd233421233787_)
                            (_L233843_ _hd233412233763_)
                            (_L233844_ _hd233403233739_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L233844_
                               'bind-method!))
                            (___kont239034239035_
                             _L233840_
                             _L233841_
                             _L233842_
                             _L233843_
                             _L233844_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl233393233717_))
                                (let ((___splice239040239041_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl233393233717_
                                          '0))))
                                  (let ((_tl233490233516_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice239040239041_
                                            '1)))
                                        (_target233488233514_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice239040239041_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233490233516_))
                                        (___match239289239290_
                                         _e233395233712_
                                         _hd233394233715_
                                         _tl233393233717_
                                         ___splice239040239041_
                                         _target233488233514_
                                         _tl233490233516_)
                                        (let ()
                                          (declare (not safe))
                                          (_g233386233501_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g233386233501_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239032239033_))
                  (let ((_e233395233712_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239032239033_))))
                    (let ((_tl233393233717_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233395233712_)))
                          (_hd233394233715_
                           (let ()
                             (declare (not safe))
                             (##car _e233395233712_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl233393233717_))
                          (let ((_e233398233720_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl233393233717_))))
                            (let ((_tl233396233725_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233398233720_)))
                                  (_hd233397233723_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233398233720_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd233397233723_))
                                  (let ((_e233401233728_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd233397233723_))))
                                    (let ((_tl233399233733_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233401233728_)))
                                          (_hd233400233731_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233401233728_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd233400233731_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd233400233731_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233399233733_))
                                                  (let ((_e233404233736_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233399233733_))))
                                                    (let ((_tl233402233741_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233404233736_)))
                                                          (_hd233403233739_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233404233736_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233402233741_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl233396233725_))
                      (let ((_e233407233744_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl233396233725_))))
                        (let ((_tl233405233749_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233407233744_)))
                              (_hd233406233747_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233407233744_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd233406233747_))
                              (let ((_e233410233752_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd233406233747_))))
                                (let ((_tl233408233757_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233410233752_)))
                                      (_hd233409233755_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233410233752_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd233409233755_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd233409233755_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233408233757_))
                                              (let ((_e233413233760_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233408233757_))))
                                                (let ((_tl233411233765_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233413233760_)))
                                                      (_hd233412233763_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233413233760_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233411233765_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl233405233749_))
                                                          (let ((_e233416233768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl233405233749_))))
                    (let ((_tl233414233773_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233416233768_)))
                          (_hd233415233771_
                           (let ()
                             (declare (not safe))
                             (##car _e233416233768_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd233415233771_))
                          (let ((_e233419233776_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd233415233771_))))
                            (let ((_tl233417233781_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233419233776_)))
                                  (_hd233418233779_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233419233776_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd233418233779_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd233418233779_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl233417233781_))
                                          (let ((_e233422233784_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl233417233781_))))
                                            (let ((_tl233420233789_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e233422233784_)))
                                                  (_hd233421233787_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e233422233784_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233420233789_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl233414233773_))
                                                      (let ((_e233425233792_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl233414233773_))))
                (let ((_tl233423233797_
                       (let () (declare (not safe)) (##cdr _e233425233792_)))
                      (_hd233424233795_
                       (let () (declare (not safe)) (##car _e233425233792_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd233424233795_))
                      (let ((_e233428233800_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd233424233795_))))
                        (let ((_tl233426233805_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233428233800_)))
                              (_hd233427233803_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233428233800_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd233427233803_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd233427233803_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233426233805_))
                                      (let ((_e233431233808_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233426233805_))))
                                        (let ((_tl233429233813_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233431233808_)))
                                              (_hd233430233811_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233431233808_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233429233813_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233423233797_))
                                                  (let ((_e233434233816_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233423233797_))))
                                                    (let ((_tl233432233821_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233434233816_)))
                                                          (_hd233433233819_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233434233816_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd233433233819_))
                                                          (let ((_e233437233824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd233433233819_))))
                    (let ((_tl233435233829_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233437233824_)))
                          (_hd233436233827_
                           (let ()
                             (declare (not safe))
                             (##car _e233437233824_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd233436233827_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd233436233827_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl233435233829_))
                                  (let ((_e233440233832_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl233435233829_))))
                                    (let ((_tl233438233837_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233440233832_)))
                                          (_hd233439233835_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233440233832_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233438233837_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233432233821_))
                                              (___match239169239170_
                                               _e233395233712_
                                               _hd233394233715_
                                               _tl233393233717_
                                               _e233398233720_
                                               _hd233397233723_
                                               _tl233396233725_
                                               _e233401233728_
                                               _hd233400233731_
                                               _tl233399233733_
                                               _e233404233736_
                                               _hd233403233739_
                                               _tl233402233741_
                                               _e233407233744_
                                               _hd233406233747_
                                               _tl233405233749_
                                               _e233410233752_
                                               _hd233409233755_
                                               _tl233408233757_
                                               _e233413233760_
                                               _hd233412233763_
                                               _tl233411233765_
                                               _e233416233768_
                                               _hd233415233771_
                                               _tl233414233773_
                                               _e233419233776_
                                               _hd233418233779_
                                               _tl233417233781_
                                               _e233422233784_
                                               _hd233421233787_
                                               _tl233420233789_
                                               _e233425233792_
                                               _hd233424233795_
                                               _tl233423233797_
                                               _e233428233800_
                                               _hd233427233803_
                                               _tl233426233805_
                                               _e233431233808_
                                               _hd233430233811_
                                               _tl233429233813_
                                               _e233434233816_
                                               _hd233433233819_
                                               _tl233432233821_
                                               _e233437233824_
                                               _hd233436233827_
                                               _tl233435233829_
                                               _e233440233832_
                                               _hd233439233835_
                                               _tl233438233837_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233393233717_))
                                                  (let ((___splice239040239041_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233393233717_
                                                            '0))))
                                                    (let ((_tl233490233516_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239040239041_
                                                              '1)))
                                                          (_target233488233514_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239040239041_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233490233516_))
                                                          (___match239289239290_
                                                           _e233395233712_
                                                           _hd233394233715_
                                                           _tl233393233717_
                                                           ___splice239040239041_
                                                           _target233488233514_
                                                           _tl233490233516_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233386233501_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233386233501_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233393233717_))
                                              (let ((___splice239040239041_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233393233717_
                                                        '0))))
                                                (let ((_tl233490233516_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239040239041_
                                                          '1)))
                                                      (_target233488233514_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239040239041_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233490233516_))
                                                      (___match239289239290_
                                                       _e233395233712_
                                                       _hd233394233715_
                                                       _tl233393233717_
                                                       ___splice239040239041_
                                                       _target233488233514_
                                                       _tl233490233516_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233386233501_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233386233501_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233393233717_))
                                      (let ((___splice239040239041_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233393233717_
                                                '0))))
                                        (let ((_tl233490233516_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239040239041_
                                                  '1)))
                                              (_target233488233514_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239040239041_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233490233516_))
                                              (___match239289239290_
                                               _e233395233712_
                                               _hd233394233715_
                                               _tl233393233717_
                                               ___splice239040239041_
                                               _target233488233514_
                                               _tl233490233516_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233386233501_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233386233501_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl233393233717_))
                                  (let ((___splice239040239041_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl233393233717_
                                            '0))))
                                    (let ((_tl233490233516_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239040239041_
                                              '1)))
                                          (_target233488233514_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239040239041_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233490233516_))
                                          (___match239289239290_
                                           _e233395233712_
                                           _hd233394233715_
                                           _tl233393233717_
                                           ___splice239040239041_
                                           _target233488233514_
                                           _tl233490233516_)
                                          (let ()
                                            (declare (not safe))
                                            (_g233386233501_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233386233501_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl233393233717_))
                              (let ((___splice239040239041_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl233393233717_
                                        '0))))
                                (let ((_tl233490233516_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239040239041_
                                          '1)))
                                      (_target233488233514_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239040239041_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233490233516_))
                                      (___match239289239290_
                                       _e233395233712_
                                       _hd233394233715_
                                       _tl233393233717_
                                       ___splice239040239041_
                                       _target233488233514_
                                       _tl233490233516_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233386233501_)))))
                              (let ()
                                (declare (not safe))
                                (_g233386233501_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233393233717_))
                      (let ((___splice239040239041_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233393233717_ '0))))
                        (let ((_tl233490233516_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239040239041_ '1)))
                              (_target233488233514_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239040239041_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233490233516_))
                              (___match239289239290_
                               _e233395233712_
                               _hd233394233715_
                               _tl233393233717_
                               ___splice239040239041_
                               _target233488233514_
                               _tl233490233516_)
                              (let ()
                                (declare (not safe))
                                (_g233386233501_)))))
                      (let () (declare (not safe)) (_g233386233501_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233423233797_))
                                                      (if (let ((__tmp241045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp241045 'bind-method!))
                  (let ((_L233668_ _hd233430233811_)
                        (_L233669_ _hd233421233787_)
                        (_L233670_ _hd233412233763_)
                        (_L233671_ _hd233403233739_))
                    (___kont239036239037_
                     _L233668_
                     _L233669_
                     _L233670_
                     _L233671_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233393233717_))
                      (let ((___splice239040239041_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233393233717_ '0))))
                        (let ((_tl233490233516_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239040239041_ '1)))
                              (_target233488233514_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239040239041_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233490233516_))
                              (___match239289239290_
                               _e233395233712_
                               _hd233394233715_
                               _tl233393233717_
                               ___splice239040239041_
                               _target233488233514_
                               _tl233490233516_)
                              (let ()
                                (declare (not safe))
                                (_g233386233501_)))))
                      (let () (declare (not safe)) (_g233386233501_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl233393233717_))
                  (let ((___splice239040239041_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl233393233717_ '0))))
                    (let ((_tl233490233516_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239040239041_ '1)))
                          (_target233488233514_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239040239041_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233490233516_))
                          (___match239289239290_
                           _e233395233712_
                           _hd233394233715_
                           _tl233393233717_
                           ___splice239040239041_
                           _target233488233514_
                           _tl233490233516_)
                          (let () (declare (not safe)) (_g233386233501_)))))
                  (let () (declare (not safe)) (_g233386233501_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233393233717_))
                                                  (let ((___splice239040239041_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233393233717_
                                                            '0))))
                                                    (let ((_tl233490233516_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239040239041_
                                                              '1)))
                                                          (_target233488233514_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239040239041_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233490233516_))
                                                          (___match239289239290_
                                                           _e233395233712_
                                                           _hd233394233715_
                                                           _tl233393233717_
                                                           ___splice239040239041_
                                                           _target233488233514_
                                                           _tl233490233516_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233386233501_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233386233501_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl233393233717_))
                                          (let ((___splice239040239041_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl233393233717_
                                                    '0))))
                                            (let ((_tl233490233516_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239040239041_
                                                      '1)))
                                                  (_target233488233514_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239040239041_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233490233516_))
                                                  (___match239289239290_
                                                   _e233395233712_
                                                   _hd233394233715_
                                                   _tl233393233717_
                                                   ___splice239040239041_
                                                   _target233488233514_
                                                   _tl233490233516_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233386233501_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233386233501_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233393233717_))
                                      (let ((___splice239040239041_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233393233717_
                                                '0))))
                                        (let ((_tl233490233516_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239040239041_
                                                  '1)))
                                              (_target233488233514_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239040239041_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233490233516_))
                                              (___match239289239290_
                                               _e233395233712_
                                               _hd233394233715_
                                               _tl233393233717_
                                               ___splice239040239041_
                                               _target233488233514_
                                               _tl233490233516_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233386233501_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233386233501_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl233393233717_))
                                  (let ((___splice239040239041_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl233393233717_
                                            '0))))
                                    (let ((_tl233490233516_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239040239041_
                                              '1)))
                                          (_target233488233514_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239040239041_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233490233516_))
                                          (___match239289239290_
                                           _e233395233712_
                                           _hd233394233715_
                                           _tl233393233717_
                                           ___splice239040239041_
                                           _target233488233514_
                                           _tl233490233516_)
                                          (let ()
                                            (declare (not safe))
                                            (_g233386233501_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233386233501_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl233393233717_))
                          (let ((___splice239040239041_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl233393233717_
                                    '0))))
                            (let ((_tl233490233516_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice239040239041_ '1)))
                                  (_target233488233514_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice239040239041_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233490233516_))
                                  (___match239289239290_
                                   _e233395233712_
                                   _hd233394233715_
                                   _tl233393233717_
                                   ___splice239040239041_
                                   _target233488233514_
                                   _tl233490233516_)
                                  (let ()
                                    (declare (not safe))
                                    (_g233386233501_)))))
                          (let () (declare (not safe)) (_g233386233501_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl233393233717_))
                  (let ((___splice239040239041_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl233393233717_ '0))))
                    (let ((_tl233490233516_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239040239041_ '1)))
                          (_target233488233514_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239040239041_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233490233516_))
                          (___match239289239290_
                           _e233395233712_
                           _hd233394233715_
                           _tl233393233717_
                           ___splice239040239041_
                           _target233488233514_
                           _tl233490233516_)
                          (let () (declare (not safe)) (_g233386233501_)))))
                  (let () (declare (not safe)) (_g233386233501_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl233393233717_))
                                                      (let ((___splice239040239041_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl233393233717_ '0))))
                (let ((_tl233490233516_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice239040239041_ '1)))
                      (_target233488233514_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice239040239041_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl233490233516_))
                      (___match239289239290_
                       _e233395233712_
                       _hd233394233715_
                       _tl233393233717_
                       ___splice239040239041_
                       _target233488233514_
                       _tl233490233516_)
                      (let () (declare (not safe)) (_g233386233501_)))))
              (let () (declare (not safe)) (_g233386233501_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233393233717_))
                                              (let ((___splice239040239041_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233393233717_
                                                        '0))))
                                                (let ((_tl233490233516_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239040239041_
                                                          '1)))
                                                      (_target233488233514_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239040239041_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233490233516_))
                                                      (___match239289239290_
                                                       _e233395233712_
                                                       _hd233394233715_
                                                       _tl233393233717_
                                                       ___splice239040239041_
                                                       _target233488233514_
                                                       _tl233490233516_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233386233501_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233386233501_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl233393233717_))
                                          (let ((___splice239040239041_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl233393233717_
                                                    '0))))
                                            (let ((_tl233490233516_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239040239041_
                                                      '1)))
                                                  (_target233488233514_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239040239041_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233490233516_))
                                                  (___match239289239290_
                                                   _e233395233712_
                                                   _hd233394233715_
                                                   _tl233393233717_
                                                   ___splice239040239041_
                                                   _target233488233514_
                                                   _tl233490233516_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233386233501_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233386233501_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233393233717_))
                                      (let ((___splice239040239041_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233393233717_
                                                '0))))
                                        (let ((_tl233490233516_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239040239041_
                                                  '1)))
                                              (_target233488233514_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239040239041_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233490233516_))
                                              (___match239289239290_
                                               _e233395233712_
                                               _hd233394233715_
                                               _tl233393233717_
                                               ___splice239040239041_
                                               _target233488233514_
                                               _tl233490233516_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233386233501_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233386233501_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl233393233717_))
                              (let ((___splice239040239041_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl233393233717_
                                        '0))))
                                (let ((_tl233490233516_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239040239041_
                                          '1)))
                                      (_target233488233514_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239040239041_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233490233516_))
                                      (___match239289239290_
                                       _e233395233712_
                                       _hd233394233715_
                                       _tl233393233717_
                                       ___splice239040239041_
                                       _target233488233514_
                                       _tl233490233516_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233386233501_)))))
                              (let ()
                                (declare (not safe))
                                (_g233386233501_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233393233717_))
                      (let ((___splice239040239041_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233393233717_ '0))))
                        (let ((_tl233490233516_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239040239041_ '1)))
                              (_target233488233514_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239040239041_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233490233516_))
                              (___match239289239290_
                               _e233395233712_
                               _hd233394233715_
                               _tl233393233717_
                               ___splice239040239041_
                               _target233488233514_
                               _tl233490233516_)
                              (let ()
                                (declare (not safe))
                                (_g233386233501_)))))
                      (let () (declare (not safe)) (_g233386233501_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl233393233717_))
                  (let ((___splice239040239041_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl233393233717_ '0))))
                    (let ((_tl233490233516_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239040239041_ '1)))
                          (_target233488233514_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239040239041_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233490233516_))
                          (___match239289239290_
                           _e233395233712_
                           _hd233394233715_
                           _tl233393233717_
                           ___splice239040239041_
                           _target233488233514_
                           _tl233490233516_)
                          (let () (declare (not safe)) (_g233386233501_)))))
                  (let () (declare (not safe)) (_g233386233501_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233393233717_))
                                                  (let ((___splice239040239041_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233393233717_
                                                            '0))))
                                                    (let ((_tl233490233516_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239040239041_
                                                              '1)))
                                                          (_target233488233514_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239040239041_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233490233516_))
                                                          (___match239289239290_
                                                           _e233395233712_
                                                           _hd233394233715_
                                                           _tl233393233717_
                                                           ___splice239040239041_
                                                           _target233488233514_
                                                           _tl233490233516_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233386233501_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233386233501_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233393233717_))
                                              (let ((___splice239040239041_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233393233717_
                                                        '0))))
                                                (let ((_tl233490233516_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239040239041_
                                                          '1)))
                                                      (_target233488233514_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239040239041_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233490233516_))
                                                      (___match239289239290_
                                                       _e233395233712_
                                                       _hd233394233715_
                                                       _tl233393233717_
                                                       ___splice239040239041_
                                                       _target233488233514_
                                                       _tl233490233516_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233386233501_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233386233501_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl233393233717_))
                                          (let ((___splice239040239041_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl233393233717_
                                                    '0))))
                                            (let ((_tl233490233516_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239040239041_
                                                      '1)))
                                                  (_target233488233514_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239040239041_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233490233516_))
                                                  (___match239289239290_
                                                   _e233395233712_
                                                   _hd233394233715_
                                                   _tl233393233717_
                                                   ___splice239040239041_
                                                   _target233488233514_
                                                   _tl233490233516_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233386233501_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233386233501_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl233393233717_))
                                  (let ((___splice239040239041_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl233393233717_
                                            '0))))
                                    (let ((_tl233490233516_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239040239041_
                                              '1)))
                                          (_target233488233514_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239040239041_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233490233516_))
                                          (___match239289239290_
                                           _e233395233712_
                                           _hd233394233715_
                                           _tl233393233717_
                                           ___splice239040239041_
                                           _target233488233514_
                                           _tl233490233516_)
                                          (let ()
                                            (declare (not safe))
                                            (_g233386233501_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233386233501_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl233393233717_))
                          (let ((___splice239040239041_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl233393233717_
                                    '0))))
                            (let ((_tl233490233516_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice239040239041_ '1)))
                                  (_target233488233514_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice239040239041_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233490233516_))
                                  (___match239289239290_
                                   _e233395233712_
                                   _hd233394233715_
                                   _tl233393233717_
                                   ___splice239040239041_
                                   _target233488233514_
                                   _tl233490233516_)
                                  (let ()
                                    (declare (not safe))
                                    (_g233386233501_)))))
                          (let () (declare (not safe)) (_g233386233501_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233393233717_))
                      (let ((___splice239040239041_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233393233717_ '0))))
                        (let ((_tl233490233516_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239040239041_ '1)))
                              (_target233488233514_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239040239041_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233490233516_))
                              (___match239289239290_
                               _e233395233712_
                               _hd233394233715_
                               _tl233393233717_
                               ___splice239040239041_
                               _target233488233514_
                               _tl233490233516_)
                              (let ()
                                (declare (not safe))
                                (_g233386233501_)))))
                      (let () (declare (not safe)) (_g233386233501_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl233393233717_))
                                                      (let ((___splice239040239041_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl233393233717_ '0))))
                (let ((_tl233490233516_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice239040239041_ '1)))
                      (_target233488233514_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice239040239041_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl233490233516_))
                      (___match239289239290_
                       _e233395233712_
                       _hd233394233715_
                       _tl233393233717_
                       ___splice239040239041_
                       _target233488233514_
                       _tl233490233516_)
                      (let () (declare (not safe)) (_g233386233501_)))))
              (let () (declare (not safe)) (_g233386233501_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233393233717_))
                                                  (let ((___splice239040239041_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233393233717_
                                                            '0))))
                                                    (let ((_tl233490233516_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239040239041_
                                                              '1)))
                                                          (_target233488233514_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239040239041_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233490233516_))
                                                          (___match239289239290_
                                                           _e233395233712_
                                                           _hd233394233715_
                                                           _tl233393233717_
                                                           ___splice239040239041_
                                                           _target233488233514_
                                                           _tl233490233516_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233386233501_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233386233501_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233393233717_))
                                              (let ((___splice239040239041_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233393233717_
                                                        '0))))
                                                (let ((_tl233490233516_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239040239041_
                                                          '1)))
                                                      (_target233488233514_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239040239041_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233490233516_))
                                                      (___match239289239290_
                                                       _e233395233712_
                                                       _hd233394233715_
                                                       _tl233393233717_
                                                       ___splice239040239041_
                                                       _target233488233514_
                                                       _tl233490233516_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233386233501_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233386233501_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233393233717_))
                                      (let ((___splice239040239041_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233393233717_
                                                '0))))
                                        (let ((_tl233490233516_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239040239041_
                                                  '1)))
                                              (_target233488233514_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239040239041_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233490233516_))
                                              (___match239289239290_
                                               _e233395233712_
                                               _hd233394233715_
                                               _tl233393233717_
                                               ___splice239040239041_
                                               _target233488233514_
                                               _tl233490233516_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233386233501_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233386233501_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl233393233717_))
                              (let ((___splice239040239041_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl233393233717_
                                        '0))))
                                (let ((_tl233490233516_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239040239041_
                                          '1)))
                                      (_target233488233514_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239040239041_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233490233516_))
                                      (___match239289239290_
                                       _e233395233712_
                                       _hd233394233715_
                                       _tl233393233717_
                                       ___splice239040239041_
                                       _target233488233514_
                                       _tl233490233516_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233386233501_)))))
                              (let ()
                                (declare (not safe))
                                (_g233386233501_))))))
                  (let () (declare (not safe)) (_g233386233501_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx233322_)
        (let* ((___stx239292239293_ _stx233322_)
               (_g233325233338_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239292239293_)))))
          (let ((___kont239294239295_
                 (lambda (_L233366_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L233366_))))
                (___kont239296239297_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239292239293_))
                (let ((_e233330233350_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239292239293_))))
                  (let ((_tl233328233355_
                         (let () (declare (not safe)) (##cdr _e233330233350_)))
                        (_hd233329233353_
                         (let ()
                           (declare (not safe))
                           (##car _e233330233350_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233328233355_))
                        (let ((_e233333233358_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233328233355_))))
                          (let ((_tl233331233363_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233333233358_)))
                                (_hd233332233361_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233333233358_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl233331233363_))
                                (___kont239294239295_ _hd233332233361_)
                                (___kont239296239297_))))
                        (___kont239296239297_))))
                (___kont239296239297_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx233202_)
        (let* ((_g233204233221_
                (lambda (_g233205233218_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233205233218_))))
               (_g233203233319_
                (lambda (_g233205233224_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233205233224_))
                      (let ((_e233210233226_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233205233224_))))
                        (let ((_hd233209233229_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233210233226_)))
                              (_tl233208233231_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233210233226_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233208233231_))
                              (let ((_e233213233234_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233208233231_))))
                                (let ((_hd233212233237_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233213233234_)))
                                      (_tl233211233239_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233213233234_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233211233239_))
                                      (let ((_e233216233242_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233211233239_))))
                                        (let ((_hd233215233245_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233216233242_)))
                                              (_tl233214233247_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233216233242_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233214233247_))
                                              ((lambda (_L233250_ _L233251_)
                                                 (let* ((___stx239314239315_
                                                         _L233251_)
                                                        (_g233267233278_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx239314239315_)))))
                                                   (let ((___kont239316239317_
                                                          (lambda (_L233298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L233299_)
                    (let ((_$e233311_
                           (let ((__tmp241046
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L233299_))))
                             (declare (not safe))
                             (table-ref
                              gxc#basic-expression-type-annotations
                              __tmp241046
                              '#f))))
                      (if _$e233311_
                          ((lambda (_type-e233314_)
                             (_type-e233314_ _stx233202_ _L233251_))
                           _$e233311_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L233250_))))))
                 (___kont239318239319_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L233250_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match239325239326_
                                                            (lambda (_e233273233290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd233272233293_
                             _tl233271233295_)
                      (let ((_L233298_ _tl233271233295_)
                            (_L233299_ _hd233272233293_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L233299_))
                            (___kont239316239317_ _L233298_ _L233299_)
                            (___kont239318239319_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx239314239315_))
                   (let ((_e233273233290_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx239314239315_))))
                     (let ((_tl233271233295_
                            (let ()
                              (declare (not safe))
                              (##cdr _e233273233290_)))
                           (_hd233272233293_
                            (let ()
                              (declare (not safe))
                              (##car _e233273233290_))))
                       (___match239325239326_
                        _e233273233290_
                        _hd233272233293_
                        _tl233271233295_)))
                   (___kont239318239319_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd233215233245_
                                               _hd233212233237_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233204233221_
                                                 _g233205233224_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233204233221_ _g233205233224_)))))
                              (let ()
                                (declare (not safe))
                                (_g233204233221_ _g233205233224_)))))
                      (let ()
                        (declare (not safe))
                        (_g233204233221_ _g233205233224_))))))
          (declare (not safe))
          (_g233203233319_ _stx233202_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx233063_ _ann233064_)
        (let* ((_g233066233099_
                (lambda (_g233067233096_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233067233096_))))
               (_g233065233199_
                (lambda (_g233067233102_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233067233102_))
                      (let ((_e233076233104_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233067233102_))))
                        (let ((_hd233075233107_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233076233104_)))
                              (_tl233074233109_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233076233104_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233074233109_))
                              (let ((_e233079233112_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233074233109_))))
                                (let ((_hd233078233115_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233079233112_)))
                                      (_tl233077233117_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233079233112_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233077233117_))
                                      (let ((_e233082233120_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233077233117_))))
                                        (let ((_hd233081233123_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233082233120_)))
                                              (_tl233080233125_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233082233120_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233080233125_))
                                              (let ((_e233085233128_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233080233125_))))
                                                (let ((_hd233084233131_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233085233128_)))
                                                      (_tl233083233133_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233085233128_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl233083233133_))
                                                      (let ((_e233088233136_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl233083233133_))))
                (let ((_hd233087233139_
                       (let () (declare (not safe)) (##car _e233088233136_)))
                      (_tl233086233141_
                       (let () (declare (not safe)) (##cdr _e233088233136_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl233086233141_))
                      (let ((_e233091233144_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl233086233141_))))
                        (let ((_hd233090233147_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233091233144_)))
                              (_tl233089233149_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233091233144_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233089233149_))
                              (let ((_e233094233152_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233089233149_))))
                                (let ((_hd233093233155_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233094233152_)))
                                      (_tl233092233157_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233094233152_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233092233157_))
                                      ((lambda (_L233160_
                                                _L233161_
                                                _L233162_
                                                _L233163_
                                                _L233164_
                                                _L233165_)
                                         (let ((_type-id233192_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233165_)))
                                               (_super233193_
                                                (map gxc#identifier-symbol
                                                     _L233164_))
                                               (_slots233194_
                                                (map gx#stx-e _L233163_))
                                               (_ctor-method233195_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233162_)))
                                               (_struct?233196_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233161_)))
                                               (_final?233197_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233160_))))
                                           (let ((__obj240997
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
                                              __obj240997
                                              _type-id233192_
                                              _super233193_
                                              _slots233194_
                                              _ctor-method233195_
                                              _struct?233196_
                                              _final?233197_)
                                             __obj240997)))
                                       _hd233093233155_
                                       _hd233090233147_
                                       _hd233087233139_
                                       _hd233084233131_
                                       _hd233081233123_
                                       _hd233078233115_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233066233099_ _g233067233102_)))))
                              (let ()
                                (declare (not safe))
                                (_g233066233099_ _g233067233102_)))))
                      (let ()
                        (declare (not safe))
                        (_g233066233099_ _g233067233102_)))))
              (let ()
                (declare (not safe))
                (_g233066233099_ _g233067233102_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g233066233099_
                                                 _g233067233102_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233066233099_ _g233067233102_)))))
                              (let ()
                                (declare (not safe))
                                (_g233066233099_ _g233067233102_)))))
                      (let ()
                        (declare (not safe))
                        (_g233066233099_ _g233067233102_))))))
          (declare (not safe))
          (_g233065233199_ _ann233064_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx233011_ _ann233012_)
        (let* ((_g233014233027_
                (lambda (_g233015233024_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233015233024_))))
               (_g233013233060_
                (lambda (_g233015233030_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233015233030_))
                      (let ((_e233019233032_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233015233030_))))
                        (let ((_hd233018233035_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233019233032_)))
                              (_tl233017233037_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233019233032_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233017233037_))
                              (let ((_e233022233040_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233017233037_))))
                                (let ((_hd233021233043_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233022233040_)))
                                      (_tl233020233045_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233022233040_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233020233045_))
                                      ((lambda (_L233048_)
                                         (let ((__obj240998
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure
                                                   gxc#!constructor::t
                                                   '#f))))
                                           (class-instance-init!
                                            __obj240998
                                            (let ()
                                              (declare (not safe))
                                              (gxc#identifier-symbol
                                               _L233048_)))
                                           __obj240998))
                                       _hd233021233043_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233014233027_ _g233015233030_)))))
                              (let ()
                                (declare (not safe))
                                (_g233014233027_ _g233015233030_)))))
                      (let ()
                        (declare (not safe))
                        (_g233014233027_ _g233015233030_))))))
          (declare (not safe))
          (_g233013233060_ _ann233012_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx232959_ _ann232960_)
        (let* ((_g232962232975_
                (lambda (_g232963232972_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232963232972_))))
               (_g232961233008_
                (lambda (_g232963232978_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232963232978_))
                      (let ((_e232967232980_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232963232978_))))
                        (let ((_hd232966232983_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232967232980_)))
                              (_tl232965232985_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232967232980_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232965232985_))
                              (let ((_e232970232988_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232965232985_))))
                                (let ((_hd232969232991_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232970232988_)))
                                      (_tl232968232993_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232970232988_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232968232993_))
                                      ((lambda (_L232996_)
                                         (let ((__obj240999
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure
                                                   gxc#!predicate::t
                                                   '#f))))
                                           (class-instance-init!
                                            __obj240999
                                            (let ()
                                              (declare (not safe))
                                              (gxc#identifier-symbol
                                               _L232996_)))
                                           __obj240999))
                                       _hd232969232991_)
                                      (let ()
                                        (declare (not safe))
                                        (_g232962232975_ _g232963232978_)))))
                              (let ()
                                (declare (not safe))
                                (_g232962232975_ _g232963232978_)))))
                      (let ()
                        (declare (not safe))
                        (_g232962232975_ _g232963232978_))))))
          (declare (not safe))
          (_g232961233008_ _ann232960_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx232875_ _ann232876_)
        (let* ((_g232878232899_
                (lambda (_g232879232896_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232879232896_))))
               (_g232877232956_
                (lambda (_g232879232902_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232879232902_))
                      (let ((_e232885232904_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232879232902_))))
                        (let ((_hd232884232907_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232885232904_)))
                              (_tl232883232909_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232885232904_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232883232909_))
                              (let ((_e232888232912_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232883232909_))))
                                (let ((_hd232887232915_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232888232912_)))
                                      (_tl232886232917_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232888232912_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232886232917_))
                                      (let ((_e232891232920_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232886232917_))))
                                        (let ((_hd232890232923_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232891232920_)))
                                              (_tl232889232925_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232891232920_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl232889232925_))
                                              (let ((_e232894232928_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl232889232925_))))
                                                (let ((_hd232893232931_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232894232928_)))
                                                      (_tl232892232933_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232894232928_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232892232933_))
                                                      ((lambda (_L232936_
                                                                _L232937_
                                                                _L232938_)
                                                         (let ((__obj241000
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure gxc#!accessor::t '#f '#f '#f))))
                   (class-instance-init!
                    __obj241000
                    (let ()
                      (declare (not safe))
                      (gxc#identifier-symbol _L232938_))
                    (let () (declare (not safe)) (gx#stx-e _L232937_))
                    (let () (declare (not safe)) (gx#stx-e _L232936_)))
                   __obj241000))
               _hd232893232931_
               _hd232890232923_
               _hd232887232915_)
              (let ()
                (declare (not safe))
                (_g232878232899_ _g232879232902_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g232878232899_
                                                 _g232879232902_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232878232899_ _g232879232902_)))))
                              (let ()
                                (declare (not safe))
                                (_g232878232899_ _g232879232902_)))))
                      (let ()
                        (declare (not safe))
                        (_g232878232899_ _g232879232902_))))))
          (declare (not safe))
          (_g232877232956_ _ann232876_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx232791_ _ann232792_)
        (let* ((_g232794232815_
                (lambda (_g232795232812_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232795232812_))))
               (_g232793232872_
                (lambda (_g232795232818_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232795232818_))
                      (let ((_e232801232820_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232795232818_))))
                        (let ((_hd232800232823_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232801232820_)))
                              (_tl232799232825_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232801232820_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232799232825_))
                              (let ((_e232804232828_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232799232825_))))
                                (let ((_hd232803232831_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232804232828_)))
                                      (_tl232802232833_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232804232828_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232802232833_))
                                      (let ((_e232807232836_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232802232833_))))
                                        (let ((_hd232806232839_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232807232836_)))
                                              (_tl232805232841_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232807232836_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl232805232841_))
                                              (let ((_e232810232844_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl232805232841_))))
                                                (let ((_hd232809232847_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232810232844_)))
                                                      (_tl232808232849_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232810232844_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232808232849_))
                                                      ((lambda (_L232852_
                                                                _L232853_
                                                                _L232854_)
                                                         (let ((__obj241001
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure gxc#!mutator::t '#f '#f '#f))))
                   (class-instance-init!
                    __obj241001
                    (let ()
                      (declare (not safe))
                      (gxc#identifier-symbol _L232854_))
                    (let () (declare (not safe)) (gx#stx-e _L232853_))
                    (let () (declare (not safe)) (gx#stx-e _L232852_)))
                   __obj241001))
               _hd232809232847_
               _hd232806232839_
               _hd232803232831_)
              (let ()
                (declare (not safe))
                (_g232794232815_ _g232795232818_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g232794232815_
                                                 _g232795232818_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232794232815_ _g232795232818_)))))
                              (let ()
                                (declare (not safe))
                                (_g232794232815_ _g232795232818_)))))
                      (let ()
                        (declare (not safe))
                        (_g232794232815_ _g232795232818_))))))
          (declare (not safe))
          (_g232793232872_ _ann232792_))))
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
      (lambda (_stx231911_)
        (let* ((___stx239328239329_ _stx231911_)
               (_g231917232113_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239328239329_)))))
          (let ((___kont239330239331_
                 (lambda (_L232779_)
                   (let ((__obj241002
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj241002
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L232779_))
                      '#f)
                     __obj241002)))
                (___kont239332239333_
                 (lambda (_L232706_
                          _L232707_
                          _L232708_
                          _L232709_
                          _L232710_
                          _L232711_)
                   (let* ((_tab232761_
                           (let () (declare (not safe)) (gx#stx-e _L232708_)))
                          (_keys232763_
                           (if _tab232761_
                               (let ((__tmp241047 (vector->list _tab232761_)))
                                 (declare (not safe))
                                 (filter values __tmp241047))
                               '#f)))
                     (let ((__obj241003
                            (let ()
                              (declare (not safe))
                              (##structure gxc#!kw-lambda::t '#f '#f '#f))))
                       (class-instance-init!
                        __obj241003
                        'kw-lambda
                        _keys232763_
                        (let ()
                          (declare (not safe))
                          (gxc#identifier-symbol _L232707_)))
                       __obj241003))))
                (___kont239334239335_
                 (lambda (_L232439_
                          _L232440_
                          _L232441_
                          _L232442_
                          _L232443_
                          _L232444_
                          _L232445_
                          _L232446_
                          _L232447_
                          _L232448_)
                   (let ((__obj241004
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#!kw-lambda-primary::t
                             '#f
                             '#f
                             '#f))))
                     (class-instance-init!
                      __obj241004
                      'kw-lambda-dispatch
                      (map gx#stx-e
                           (let ((__tmp241048
                                  (lambda (_g232541232544_ _g232542232546_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g232541232544_
                                            _g232542232546_)))))
                             (declare (not safe))
                             (foldr1 __tmp241048 '() _L232441_)))
                      (let ()
                        (declare (not safe))
                        (gxc#identifier-symbol _L232445_)))
                     __obj241004)))
                (___kont239338239339_
                 (lambda (_L232149_)
                   (let ((__obj241005
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj241005
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L232149_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L232149_)))
                     __obj241005)))
                (___kont239340239341_
                 (lambda (_L232126_)
                   (let ((__obj241006
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj241006
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L232126_))
                      '#f)
                     __obj241006))))
            (let* ((___match239647239648_
                    (lambda (_e232104232141_ _hd232103232144_ _tl232102232146_)
                      (let ((_L232149_ _tl232102232146_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L232149_))
                            (___kont239338239339_ _L232149_)
                            (___kont239340239341_ _tl232102232146_)))))
                   (___match239641239642_
                    (lambda (_e231998232163_
                             _hd231997232166_
                             _tl231996232168_
                             _e232001232171_
                             _hd232000232174_
                             _tl231999232176_
                             _e232004232179_
                             _hd232003232182_
                             _tl232002232184_
                             _e232007232187_
                             _hd232006232190_
                             _tl232005232192_
                             _e232010232195_
                             _hd232009232198_
                             _tl232008232200_
                             _e232013232203_
                             _hd232012232206_
                             _tl232011232208_
                             _e232016232211_
                             _hd232015232214_
                             _tl232014232216_
                             _e232019232219_
                             _hd232018232222_
                             _tl232017232224_
                             _e232022232227_
                             _hd232021232230_
                             _tl232020232232_
                             _e232025232235_
                             _hd232024232238_
                             _tl232023232240_
                             _e232028232243_
                             _hd232027232246_
                             _tl232026232248_
                             _e232031232251_
                             _hd232030232254_
                             _tl232029232256_
                             _e232034232259_
                             _hd232033232262_
                             _tl232032232264_
                             _e232037232267_
                             _hd232036232270_
                             _tl232035232272_
                             ___splice239336239337_
                             _target232038232275_
                             _tl232040232277_
                             _e232055232280_
                             _hd232054232283_
                             _tl232053232285_
                             _e232058232288_
                             _hd232057232291_
                             _tl232056232293_
                             _e232061232296_
                             _hd232060232299_
                             _tl232059232301_)
                      (letrec ((_loop232041232304_
                                (lambda (_hd232039232307_
                                         _-absent-value232045232309_
                                         _key232046232311_
                                         _-xkwvar232047232313_
                                         _-hash-ref232048232315_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232039232307_))
                                      (let ((_e232042232318_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232039232307_))))
                                        (let ((_lp-tl232044232323_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232042232318_)))
                                              (_lp-hd232043232321_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232042232318_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd232043232321_))
                                              (let ((_e232064232326_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd232043232321_))))
                                                (let ((_tl232062232331_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232064232326_)))
                                                      (_hd232063232329_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232064232326_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd232063232329_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd232063232329_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl232062232331_))
                      (let ((_e232067232334_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl232062232331_))))
                        (let ((_tl232065232339_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232067232334_)))
                              (_hd232066232337_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232067232334_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd232066232337_))
                              (let ((_e232070232342_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd232066232337_))))
                                (let ((_tl232068232347_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232070232342_)))
                                      (_hd232069232345_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232070232342_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd232069232345_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd232069232345_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl232068232347_))
                                              (let ((_e232073232350_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl232068232347_))))
                                                (let ((_tl232071232355_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232073232350_)))
                                                      (_hd232072232353_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232073232350_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232071232355_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl232065232339_))
                                                          (let ((_e232076232358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl232065232339_))))
                    (let ((_tl232074232363_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232076232358_)))
                          (_hd232075232361_
                           (let ()
                             (declare (not safe))
                             (##car _e232076232358_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232075232361_))
                          (let ((_e232079232366_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232075232361_))))
                            (let ((_tl232077232371_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232079232366_)))
                                  (_hd232078232369_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232079232366_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd232078232369_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd232078232369_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl232077232371_))
                                          (let ((_e232082232374_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl232077232371_))))
                                            (let ((_tl232080232379_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232082232374_)))
                                                  (_hd232081232377_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232082232374_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl232080232379_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl232074232363_))
                                                      (let ((_e232085232382_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl232074232363_))))
                (let ((_tl232083232387_
                       (let () (declare (not safe)) (##cdr _e232085232382_)))
                      (_hd232084232385_
                       (let () (declare (not safe)) (##car _e232085232382_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd232084232385_))
                      (let ((_e232088232390_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd232084232385_))))
                        (let ((_tl232086232395_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232088232390_)))
                              (_hd232087232393_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232088232390_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd232087232393_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd232087232393_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232086232395_))
                                      (let ((_e232091232398_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232086232395_))))
                                        (let ((_tl232089232403_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232091232398_)))
                                              (_hd232090232401_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232091232398_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232089232403_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl232083232387_))
                                                  (let ((_e232094232406_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl232083232387_))))
                                                    (let ((_tl232092232411_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e232094232406_)))
                                                          (_hd232093232409_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e232094232406_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd232093232409_))
                                                          (let ((_e232097232414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd232093232409_))))
                    (let ((_tl232095232419_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232097232414_)))
                          (_hd232096232417_
                           (let ()
                             (declare (not safe))
                             (##car _e232097232414_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd232096232417_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd232096232417_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232095232419_))
                                  (let ((_e232100232422_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232095232419_))))
                                    (let ((_tl232098232427_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232100232422_)))
                                          (_hd232099232425_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232100232422_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl232098232427_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232092232411_))
                                              (let ((__tmp241063
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd232099232425_
                                                             _-absent-value232045232309_)))
                                                    (__tmp241062
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd232090232401_
                                                             _key232046232311_)))
                                                    (__tmp241061
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd232081232377_
                                                             _-xkwvar232047232313_)))
                                                    (__tmp241060
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd232072232353_
                                                             _-hash-ref232048232315_))))
                                                (declare (not safe))
                                                (_loop232041232304_
                                                 _lp-tl232044232323_
                                                 __tmp241063
                                                 __tmp241062
                                                 __tmp241061
                                                 __tmp241060))
                                              (___match239647239648_
                                               _e231998232163_
                                               _hd231997232166_
                                               _tl231996232168_))
                                          (___match239647239648_
                                           _e231998232163_
                                           _hd231997232166_
                                           _tl231996232168_))))
                                  (___match239647239648_
                                   _e231998232163_
                                   _hd231997232166_
                                   _tl231996232168_))
                              (___match239647239648_
                               _e231998232163_
                               _hd231997232166_
                               _tl231996232168_))
                          (___match239647239648_
                           _e231998232163_
                           _hd231997232166_
                           _tl231996232168_))))
                  (___match239647239648_
                   _e231998232163_
                   _hd231997232166_
                   _tl231996232168_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239647239648_
                                                   _e231998232163_
                                                   _hd231997232166_
                                                   _tl231996232168_))
                                              (___match239647239648_
                                               _e231998232163_
                                               _hd231997232166_
                                               _tl231996232168_))))
                                      (___match239647239648_
                                       _e231998232163_
                                       _hd231997232166_
                                       _tl231996232168_))
                                  (___match239647239648_
                                   _e231998232163_
                                   _hd231997232166_
                                   _tl231996232168_))
                              (___match239647239648_
                               _e231998232163_
                               _hd231997232166_
                               _tl231996232168_))))
                      (___match239647239648_
                       _e231998232163_
                       _hd231997232166_
                       _tl231996232168_))))
              (___match239647239648_
               _e231998232163_
               _hd231997232166_
               _tl231996232168_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239647239648_
                                                   _e231998232163_
                                                   _hd231997232166_
                                                   _tl231996232168_))))
                                          (___match239647239648_
                                           _e231998232163_
                                           _hd231997232166_
                                           _tl231996232168_))
                                      (___match239647239648_
                                       _e231998232163_
                                       _hd231997232166_
                                       _tl231996232168_))
                                  (___match239647239648_
                                   _e231998232163_
                                   _hd231997232166_
                                   _tl231996232168_))))
                          (___match239647239648_
                           _e231998232163_
                           _hd231997232166_
                           _tl231996232168_))))
                  (___match239647239648_
                   _e231998232163_
                   _hd231997232166_
                   _tl231996232168_))
              (___match239647239648_
               _e231998232163_
               _hd231997232166_
               _tl231996232168_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match239647239648_
                                               _e231998232163_
                                               _hd231997232166_
                                               _tl231996232168_))
                                          (___match239647239648_
                                           _e231998232163_
                                           _hd231997232166_
                                           _tl231996232168_))
                                      (___match239647239648_
                                       _e231998232163_
                                       _hd231997232166_
                                       _tl231996232168_))))
                              (___match239647239648_
                               _e231998232163_
                               _hd231997232166_
                               _tl231996232168_))))
                      (___match239647239648_
                       _e231998232163_
                       _hd231997232166_
                       _tl231996232168_))
                  (___match239647239648_
                   _e231998232163_
                   _hd231997232166_
                   _tl231996232168_))
              (___match239647239648_
               _e231998232163_
               _hd231997232166_
               _tl231996232168_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match239647239648_
                                               _e231998232163_
                                               _hd231997232166_
                                               _tl231996232168_))))
                                      (let ((_-hash-ref232052232436_
                                             (reverse _-hash-ref232048232315_))
                                            (_-xkwvar232051232434_
                                             (reverse _-xkwvar232047232313_))
                                            (_key232050232432_
                                             (reverse _key232046232311_))
                                            (_-absent-value232049232430_
                                             (reverse _-absent-value232045232309_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl232005232192_))
                                            (let ((_L232439_ _hd232060232299_)
                                                  (_L232440_
                                                   _-absent-value232049232430_)
                                                  (_L232441_ _key232050232432_)
                                                  (_L232442_
                                                   _-xkwvar232051232434_)
                                                  (_L232443_
                                                   _-hash-ref232052232436_)
                                                  (_L232444_ _hd232036232270_)
                                                  (_L232445_ _hd232027232246_)
                                                  (_L232446_ _hd232018232222_)
                                                  (_L232447_ _tl232002232184_)
                                                  (_L232448_ _hd232003232182_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L232448_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L232447_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L232446_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L232448_
                                                          _L232444_))
                                                       (let ((__tmp241058
                                                              (let ((__tmp241059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g232501232504_ _g232502232506_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232501232504_ _g232502232506_)))))
                        (declare (not safe))
                        (foldr1 __tmp241059 '() _L232441_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp241058))
               (let ((__tmp241057
                      (lambda (_g232508232510_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g232508232510_
                           'hash-ref))))
                     (__tmp241055
                      (let ((__tmp241056
                             (lambda (_g232512232515_ _g232513232517_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232512232515_ _g232513232517_)))))
                        (declare (not safe))
                        (foldr1 __tmp241056 '() _L232443_))))
                 (declare (not safe))
                 (andmap1 __tmp241057 __tmp241055))
               (let ((__tmp241054
                      (lambda (_g232519232521_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g232519232521_
                           'absent-value))))
                     (__tmp241052
                      (let ((__tmp241053
                             (lambda (_g232523232526_ _g232524232528_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232523232526_ _g232524232528_)))))
                        (declare (not safe))
                        (foldr1 __tmp241053 '() _L232440_))))
                 (declare (not safe))
                 (andmap1 __tmp241054 __tmp241052))
               (let ((__tmp241051
                      (lambda (_g232530232532_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g232530232532_ _L232448_))))
                     (__tmp241049
                      (let ((__tmp241050
                             (lambda (_g232534232537_ _g232535232539_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232534232537_ _g232535232539_)))))
                        (declare (not safe))
                        (foldr1 __tmp241050 '() _L232442_))))
                 (declare (not safe))
                 (andmap1 __tmp241051 __tmp241049)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239334239335_
                                                   _L232439_
                                                   _L232440_
                                                   _L232441_
                                                   _L232442_
                                                   _L232443_
                                                   _L232444_
                                                   _L232445_
                                                   _L232446_
                                                   _L232447_
                                                   _L232448_)
                                                  (___match239647239648_
                                                   _e231998232163_
                                                   _hd231997232166_
                                                   _tl231996232168_)))
                                            (___match239647239648_
                                             _e231998232163_
                                             _hd231997232166_
                                             _tl231996232168_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop232041232304_
                           _target232038232275_
                           '()
                           '()
                           '()
                           '())))))
                   (___match239513239514_
                    (lambda (_e231998232163_
                             _hd231997232166_
                             _tl231996232168_
                             _e232001232171_
                             _hd232000232174_
                             _tl231999232176_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232000232174_))
                          (let ((_e232004232179_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232000232174_))))
                            (let ((_tl232002232184_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232004232179_)))
                                  (_hd232003232182_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232004232179_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231999232176_))
                                  (let ((_e232007232187_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231999232176_))))
                                    (let ((_tl232005232192_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232007232187_)))
                                          (_hd232006232190_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232007232187_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd232006232190_))
                                          (let ((_e232010232195_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd232006232190_))))
                                            (let ((_tl232008232200_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232010232195_)))
                                                  (_hd232009232198_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232010232195_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd232009232198_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd232009232198_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl232008232200_))
                                                          (let ((_e232013232203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl232008232200_))))
                    (let ((_tl232011232208_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232013232203_)))
                          (_hd232012232206_
                           (let ()
                             (declare (not safe))
                             (##car _e232013232203_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232012232206_))
                          (let ((_e232016232211_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232012232206_))))
                            (let ((_tl232014232216_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232016232211_)))
                                  (_hd232015232214_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232016232211_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd232015232214_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd232015232214_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl232014232216_))
                                          (let ((_e232019232219_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl232014232216_))))
                                            (let ((_tl232017232224_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232019232219_)))
                                                  (_hd232018232222_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232019232219_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl232017232224_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl232011232208_))
                                                      (let ((_e232022232227_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl232011232208_))))
                (let ((_tl232020232232_
                       (let () (declare (not safe)) (##cdr _e232022232227_)))
                      (_hd232021232230_
                       (let () (declare (not safe)) (##car _e232022232227_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd232021232230_))
                      (let ((_e232025232235_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd232021232230_))))
                        (let ((_tl232023232240_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232025232235_)))
                              (_hd232024232238_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232025232235_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd232024232238_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd232024232238_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232023232240_))
                                      (let ((_e232028232243_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232023232240_))))
                                        (let ((_tl232026232248_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232028232243_)))
                                              (_hd232027232246_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232028232243_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232026232248_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl232020232232_))
                                                  (let ((_e232031232251_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl232020232232_))))
                                                    (let ((_tl232029232256_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e232031232251_)))
                                                          (_hd232030232254_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e232031232251_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd232030232254_))
                                                          (let ((_e232034232259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd232030232254_))))
                    (let ((_tl232032232264_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232034232259_)))
                          (_hd232033232262_
                           (let ()
                             (declare (not safe))
                             (##car _e232034232259_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd232033232262_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd232033232262_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232032232264_))
                                  (let ((_e232037232267_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232032232264_))))
                                    (let ((_tl232035232272_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232037232267_)))
                                          (_hd232036232270_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232037232267_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl232035232272_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl232029232256_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl232029232256_))
                                                        '1)
                                                  (let ((___splice239336239337_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl232029232256_
                                                            '1))))
                                                    (let ((_tl232040232277_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239336239337_
                                                              '1)))
                                                          (_target232038232275_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239336239337_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl232040232277_))
                                                          (let ((_e232055232280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl232040232277_))))
                    (let ((_tl232053232285_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232055232280_)))
                          (_hd232054232283_
                           (let ()
                             (declare (not safe))
                             (##car _e232055232280_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232054232283_))
                          (let ((_e232058232288_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232054232283_))))
                            (let ((_tl232056232293_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232058232288_)))
                                  (_hd232057232291_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232058232288_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd232057232291_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd232057232291_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl232056232293_))
                                          (let ((_e232061232296_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl232056232293_))))
                                            (let ((_tl232059232301_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232061232296_)))
                                                  (_hd232060232299_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232061232296_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl232059232301_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232053232285_))
                                                      (___match239641239642_
                                                       _e231998232163_
                                                       _hd231997232166_
                                                       _tl231996232168_
                                                       _e232001232171_
                                                       _hd232000232174_
                                                       _tl231999232176_
                                                       _e232004232179_
                                                       _hd232003232182_
                                                       _tl232002232184_
                                                       _e232007232187_
                                                       _hd232006232190_
                                                       _tl232005232192_
                                                       _e232010232195_
                                                       _hd232009232198_
                                                       _tl232008232200_
                                                       _e232013232203_
                                                       _hd232012232206_
                                                       _tl232011232208_
                                                       _e232016232211_
                                                       _hd232015232214_
                                                       _tl232014232216_
                                                       _e232019232219_
                                                       _hd232018232222_
                                                       _tl232017232224_
                                                       _e232022232227_
                                                       _hd232021232230_
                                                       _tl232020232232_
                                                       _e232025232235_
                                                       _hd232024232238_
                                                       _tl232023232240_
                                                       _e232028232243_
                                                       _hd232027232246_
                                                       _tl232026232248_
                                                       _e232031232251_
                                                       _hd232030232254_
                                                       _tl232029232256_
                                                       _e232034232259_
                                                       _hd232033232262_
                                                       _tl232032232264_
                                                       _e232037232267_
                                                       _hd232036232270_
                                                       _tl232035232272_
                                                       ___splice239336239337_
                                                       _target232038232275_
                                                       _tl232040232277_
                                                       _e232055232280_
                                                       _hd232054232283_
                                                       _tl232053232285_
                                                       _e232058232288_
                                                       _hd232057232291_
                                                       _tl232056232293_
                                                       _e232061232296_
                                                       _hd232060232299_
                                                       _tl232059232301_)
                                                      (___match239647239648_
                                                       _e231998232163_
                                                       _hd231997232166_
                                                       _tl231996232168_))
                                                  (___match239647239648_
                                                   _e231998232163_
                                                   _hd231997232166_
                                                   _tl231996232168_))))
                                          (___match239647239648_
                                           _e231998232163_
                                           _hd231997232166_
                                           _tl231996232168_))
                                      (___match239647239648_
                                       _e231998232163_
                                       _hd231997232166_
                                       _tl231996232168_))
                                  (___match239647239648_
                                   _e231998232163_
                                   _hd231997232166_
                                   _tl231996232168_))))
                          (___match239647239648_
                           _e231998232163_
                           _hd231997232166_
                           _tl231996232168_))))
                  (___match239647239648_
                   _e231998232163_
                   _hd231997232166_
                   _tl231996232168_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239647239648_
                                                   _e231998232163_
                                                   _hd231997232166_
                                                   _tl231996232168_))
                                              (___match239647239648_
                                               _e231998232163_
                                               _hd231997232166_
                                               _tl231996232168_))
                                          (___match239647239648_
                                           _e231998232163_
                                           _hd231997232166_
                                           _tl231996232168_))))
                                  (___match239647239648_
                                   _e231998232163_
                                   _hd231997232166_
                                   _tl231996232168_))
                              (___match239647239648_
                               _e231998232163_
                               _hd231997232166_
                               _tl231996232168_))
                          (___match239647239648_
                           _e231998232163_
                           _hd231997232166_
                           _tl231996232168_))))
                  (___match239647239648_
                   _e231998232163_
                   _hd231997232166_
                   _tl231996232168_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239647239648_
                                                   _e231998232163_
                                                   _hd231997232166_
                                                   _tl231996232168_))
                                              (___match239647239648_
                                               _e231998232163_
                                               _hd231997232166_
                                               _tl231996232168_))))
                                      (___match239647239648_
                                       _e231998232163_
                                       _hd231997232166_
                                       _tl231996232168_))
                                  (___match239647239648_
                                   _e231998232163_
                                   _hd231997232166_
                                   _tl231996232168_))
                              (___match239647239648_
                               _e231998232163_
                               _hd231997232166_
                               _tl231996232168_))))
                      (___match239647239648_
                       _e231998232163_
                       _hd231997232166_
                       _tl231996232168_))))
              (___match239647239648_
               _e231998232163_
               _hd231997232166_
               _tl231996232168_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239647239648_
                                                   _e231998232163_
                                                   _hd231997232166_
                                                   _tl231996232168_))))
                                          (___match239647239648_
                                           _e231998232163_
                                           _hd231997232166_
                                           _tl231996232168_))
                                      (___match239647239648_
                                       _e231998232163_
                                       _hd231997232166_
                                       _tl231996232168_))
                                  (___match239647239648_
                                   _e231998232163_
                                   _hd231997232166_
                                   _tl231996232168_))))
                          (___match239647239648_
                           _e231998232163_
                           _hd231997232166_
                           _tl231996232168_))))
                  (___match239647239648_
                   _e231998232163_
                   _hd231997232166_
                   _tl231996232168_))
              (___match239647239648_
               _e231998232163_
               _hd231997232166_
               _tl231996232168_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239647239648_
                                                   _e231998232163_
                                                   _hd231997232166_
                                                   _tl231996232168_))))
                                          (___match239647239648_
                                           _e231998232163_
                                           _hd231997232166_
                                           _tl231996232168_))))
                                  (___match239647239648_
                                   _e231998232163_
                                   _hd231997232166_
                                   _tl231996232168_))))
                          (___match239647239648_
                           _e231998232163_
                           _hd231997232166_
                           _tl231996232168_))))
                   (___match239501239502_
                    (lambda (_e231931232554_
                             _hd231930232557_
                             _tl231929232559_
                             _e231934232562_
                             _hd231933232565_
                             _tl231932232567_
                             _e231937232570_
                             _hd231936232573_
                             _tl231935232575_
                             _e231940232578_
                             _hd231939232581_
                             _tl231938232583_
                             _e231943232586_
                             _hd231942232589_
                             _tl231941232591_
                             _e231946232594_
                             _hd231945232597_
                             _tl231944232599_
                             _e231949232602_
                             _hd231948232605_
                             _tl231947232607_
                             _e231952232610_
                             _hd231951232613_
                             _tl231950232615_
                             _e231955232618_
                             _hd231954232621_
                             _tl231953232623_
                             _e231958232626_
                             _hd231957232629_
                             _tl231956232631_
                             _e231961232634_
                             _hd231960232637_
                             _tl231959232639_
                             _e231964232642_
                             _hd231963232645_
                             _tl231962232647_
                             _e231967232650_
                             _hd231966232653_
                             _tl231965232655_
                             _e231970232658_
                             _hd231969232661_
                             _tl231968232663_
                             _e231973232666_
                             _hd231972232669_
                             _tl231971232671_
                             _e231976232674_
                             _hd231975232677_
                             _tl231974232679_
                             _e231979232682_
                             _hd231978232685_
                             _tl231977232687_
                             _e231982232690_
                             _hd231981232693_
                             _tl231980232695_
                             _e231985232698_
                             _hd231984232701_
                             _tl231983232703_)
                      (let ((_L232706_ _hd231984232701_)
                            (_L232707_ _hd231975232677_)
                            (_L232708_ _hd231966232653_)
                            (_L232709_ _hd231957232629_)
                            (_L232710_ _hd231948232605_)
                            (_L232711_ _hd231933232565_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L232711_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L232710_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L232709_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L232711_ _L232706_)))
                            (___kont239332239333_
                             _L232706_
                             _L232707_
                             _L232708_
                             _L232709_
                             _L232710_
                             _L232711_)
                            (___match239513239514_
                             _e231931232554_
                             _hd231930232557_
                             _tl231929232559_
                             _e231934232562_
                             _hd231933232565_
                             _tl231932232567_)))))
                   (___match239355239356_
                    (lambda (_e231931232554_ _hd231930232557_ _tl231929232559_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl231929232559_))
                          (let ((_e231934232562_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl231929232559_))))
                            (let ((_tl231932232567_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231934232562_)))
                                  (_hd231933232565_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231934232562_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231932232567_))
                                  (let ((_e231937232570_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231932232567_))))
                                    (let ((_tl231935232575_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231937232570_)))
                                          (_hd231936232573_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231937232570_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd231936232573_))
                                          (let ((_e231940232578_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd231936232573_))))
                                            (let ((_tl231938232583_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231940232578_)))
                                                  (_hd231939232581_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231940232578_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd231939232581_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd231939232581_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl231938232583_))
                                                          (let ((_e231943232586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl231938232583_))))
                    (let ((_tl231941232591_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231943232586_)))
                          (_hd231942232589_
                           (let ()
                             (declare (not safe))
                             (##car _e231943232586_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd231942232589_))
                          (let ((_e231946232594_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd231942232589_))))
                            (let ((_tl231944232599_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231946232594_)))
                                  (_hd231945232597_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231946232594_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd231945232597_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd231945232597_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl231944232599_))
                                          (let ((_e231949232602_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl231944232599_))))
                                            (let ((_tl231947232607_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231949232602_)))
                                                  (_hd231948232605_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231949232602_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl231947232607_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl231941232591_))
                                                      (let ((_e231952232610_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl231941232591_))))
                (let ((_tl231950232615_
                       (let () (declare (not safe)) (##cdr _e231952232610_)))
                      (_hd231951232613_
                       (let () (declare (not safe)) (##car _e231952232610_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd231951232613_))
                      (let ((_e231955232618_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd231951232613_))))
                        (let ((_tl231953232623_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231955232618_)))
                              (_hd231954232621_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231955232618_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd231954232621_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd231954232621_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231953232623_))
                                      (let ((_e231958232626_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231953232623_))))
                                        (let ((_tl231956232631_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231958232626_)))
                                              (_hd231957232629_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231958232626_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231956232631_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl231950232615_))
                                                  (let ((_e231961232634_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl231950232615_))))
                                                    (let ((_tl231959232639_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231961232634_)))
                                                          (_hd231960232637_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231961232634_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd231960232637_))
                                                          (let ((_e231964232642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd231960232637_))))
                    (let ((_tl231962232647_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231964232642_)))
                          (_hd231963232645_
                           (let ()
                             (declare (not safe))
                             (##car _e231964232642_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd231963232645_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd231963232645_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231962232647_))
                                  (let ((_e231967232650_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231962232647_))))
                                    (let ((_tl231965232655_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231967232650_)))
                                          (_hd231966232653_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231967232650_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231965232655_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl231959232639_))
                                              (let ((_e231970232658_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl231959232639_))))
                                                (let ((_tl231968232663_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e231970232658_)))
                                                      (_hd231969232661_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e231970232658_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd231969232661_))
                                                      (let ((_e231973232666_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd231969232661_))))
                (let ((_tl231971232671_
                       (let () (declare (not safe)) (##cdr _e231973232666_)))
                      (_hd231972232669_
                       (let () (declare (not safe)) (##car _e231973232666_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd231972232669_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd231972232669_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231971232671_))
                              (let ((_e231976232674_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231971232671_))))
                                (let ((_tl231974232679_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231976232674_)))
                                      (_hd231975232677_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231976232674_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl231974232679_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl231968232663_))
                                          (let ((_e231979232682_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl231968232663_))))
                                            (let ((_tl231977232687_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231979232682_)))
                                                  (_hd231978232685_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231979232682_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd231978232685_))
                                                  (let ((_e231982232690_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd231978232685_))))
                                                    (let ((_tl231980232695_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231982232690_)))
                                                          (_hd231981232693_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231982232690_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd231981232693_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd231981232693_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl231980232695_))
                          (let ((_e231985232698_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl231980232695_))))
                            (let ((_tl231983232703_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231985232698_)))
                                  (_hd231984232701_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231985232698_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl231983232703_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl231977232687_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231935232575_))
                                          (___match239501239502_
                                           _e231931232554_
                                           _hd231930232557_
                                           _tl231929232559_
                                           _e231934232562_
                                           _hd231933232565_
                                           _tl231932232567_
                                           _e231937232570_
                                           _hd231936232573_
                                           _tl231935232575_
                                           _e231940232578_
                                           _hd231939232581_
                                           _tl231938232583_
                                           _e231943232586_
                                           _hd231942232589_
                                           _tl231941232591_
                                           _e231946232594_
                                           _hd231945232597_
                                           _tl231944232599_
                                           _e231949232602_
                                           _hd231948232605_
                                           _tl231947232607_
                                           _e231952232610_
                                           _hd231951232613_
                                           _tl231950232615_
                                           _e231955232618_
                                           _hd231954232621_
                                           _tl231953232623_
                                           _e231958232626_
                                           _hd231957232629_
                                           _tl231956232631_
                                           _e231961232634_
                                           _hd231960232637_
                                           _tl231959232639_
                                           _e231964232642_
                                           _hd231963232645_
                                           _tl231962232647_
                                           _e231967232650_
                                           _hd231966232653_
                                           _tl231965232655_
                                           _e231970232658_
                                           _hd231969232661_
                                           _tl231968232663_
                                           _e231973232666_
                                           _hd231972232669_
                                           _tl231971232671_
                                           _e231976232674_
                                           _hd231975232677_
                                           _tl231974232679_
                                           _e231979232682_
                                           _hd231978232685_
                                           _tl231977232687_
                                           _e231982232690_
                                           _hd231981232693_
                                           _tl231980232695_
                                           _e231985232698_
                                           _hd231984232701_
                                           _tl231983232703_)
                                          (___match239513239514_
                                           _e231931232554_
                                           _hd231930232557_
                                           _tl231929232559_
                                           _e231934232562_
                                           _hd231933232565_
                                           _tl231932232567_))
                                      (___match239513239514_
                                       _e231931232554_
                                       _hd231930232557_
                                       _tl231929232559_
                                       _e231934232562_
                                       _hd231933232565_
                                       _tl231932232567_))
                                  (___match239513239514_
                                   _e231931232554_
                                   _hd231930232557_
                                   _tl231929232559_
                                   _e231934232562_
                                   _hd231933232565_
                                   _tl231932232567_))))
                          (___match239513239514_
                           _e231931232554_
                           _hd231930232557_
                           _tl231929232559_
                           _e231934232562_
                           _hd231933232565_
                           _tl231932232567_))
                      (___match239513239514_
                       _e231931232554_
                       _hd231930232557_
                       _tl231929232559_
                       _e231934232562_
                       _hd231933232565_
                       _tl231932232567_))
                  (___match239513239514_
                   _e231931232554_
                   _hd231930232557_
                   _tl231929232559_
                   _e231934232562_
                   _hd231933232565_
                   _tl231932232567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239513239514_
                                                   _e231931232554_
                                                   _hd231930232557_
                                                   _tl231929232559_
                                                   _e231934232562_
                                                   _hd231933232565_
                                                   _tl231932232567_))))
                                          (___match239513239514_
                                           _e231931232554_
                                           _hd231930232557_
                                           _tl231929232559_
                                           _e231934232562_
                                           _hd231933232565_
                                           _tl231932232567_))
                                      (___match239513239514_
                                       _e231931232554_
                                       _hd231930232557_
                                       _tl231929232559_
                                       _e231934232562_
                                       _hd231933232565_
                                       _tl231932232567_))))
                              (___match239513239514_
                               _e231931232554_
                               _hd231930232557_
                               _tl231929232559_
                               _e231934232562_
                               _hd231933232565_
                               _tl231932232567_))
                          (___match239513239514_
                           _e231931232554_
                           _hd231930232557_
                           _tl231929232559_
                           _e231934232562_
                           _hd231933232565_
                           _tl231932232567_))
                      (___match239513239514_
                       _e231931232554_
                       _hd231930232557_
                       _tl231929232559_
                       _e231934232562_
                       _hd231933232565_
                       _tl231932232567_))))
              (___match239513239514_
               _e231931232554_
               _hd231930232557_
               _tl231929232559_
               _e231934232562_
               _hd231933232565_
               _tl231932232567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match239513239514_
                                               _e231931232554_
                                               _hd231930232557_
                                               _tl231929232559_
                                               _e231934232562_
                                               _hd231933232565_
                                               _tl231932232567_))
                                          (___match239513239514_
                                           _e231931232554_
                                           _hd231930232557_
                                           _tl231929232559_
                                           _e231934232562_
                                           _hd231933232565_
                                           _tl231932232567_))))
                                  (___match239513239514_
                                   _e231931232554_
                                   _hd231930232557_
                                   _tl231929232559_
                                   _e231934232562_
                                   _hd231933232565_
                                   _tl231932232567_))
                              (___match239513239514_
                               _e231931232554_
                               _hd231930232557_
                               _tl231929232559_
                               _e231934232562_
                               _hd231933232565_
                               _tl231932232567_))
                          (___match239513239514_
                           _e231931232554_
                           _hd231930232557_
                           _tl231929232559_
                           _e231934232562_
                           _hd231933232565_
                           _tl231932232567_))))
                  (___match239513239514_
                   _e231931232554_
                   _hd231930232557_
                   _tl231929232559_
                   _e231934232562_
                   _hd231933232565_
                   _tl231932232567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239513239514_
                                                   _e231931232554_
                                                   _hd231930232557_
                                                   _tl231929232559_
                                                   _e231934232562_
                                                   _hd231933232565_
                                                   _tl231932232567_))
                                              (___match239513239514_
                                               _e231931232554_
                                               _hd231930232557_
                                               _tl231929232559_
                                               _e231934232562_
                                               _hd231933232565_
                                               _tl231932232567_))))
                                      (___match239513239514_
                                       _e231931232554_
                                       _hd231930232557_
                                       _tl231929232559_
                                       _e231934232562_
                                       _hd231933232565_
                                       _tl231932232567_))
                                  (___match239513239514_
                                   _e231931232554_
                                   _hd231930232557_
                                   _tl231929232559_
                                   _e231934232562_
                                   _hd231933232565_
                                   _tl231932232567_))
                              (___match239513239514_
                               _e231931232554_
                               _hd231930232557_
                               _tl231929232559_
                               _e231934232562_
                               _hd231933232565_
                               _tl231932232567_))))
                      (___match239513239514_
                       _e231931232554_
                       _hd231930232557_
                       _tl231929232559_
                       _e231934232562_
                       _hd231933232565_
                       _tl231932232567_))))
              (___match239513239514_
               _e231931232554_
               _hd231930232557_
               _tl231929232559_
               _e231934232562_
               _hd231933232565_
               _tl231932232567_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239513239514_
                                                   _e231931232554_
                                                   _hd231930232557_
                                                   _tl231929232559_
                                                   _e231934232562_
                                                   _hd231933232565_
                                                   _tl231932232567_))))
                                          (___match239513239514_
                                           _e231931232554_
                                           _hd231930232557_
                                           _tl231929232559_
                                           _e231934232562_
                                           _hd231933232565_
                                           _tl231932232567_))
                                      (___match239513239514_
                                       _e231931232554_
                                       _hd231930232557_
                                       _tl231929232559_
                                       _e231934232562_
                                       _hd231933232565_
                                       _tl231932232567_))
                                  (___match239513239514_
                                   _e231931232554_
                                   _hd231930232557_
                                   _tl231929232559_
                                   _e231934232562_
                                   _hd231933232565_
                                   _tl231932232567_))))
                          (___match239513239514_
                           _e231931232554_
                           _hd231930232557_
                           _tl231929232559_
                           _e231934232562_
                           _hd231933232565_
                           _tl231932232567_))))
                  (___match239513239514_
                   _e231931232554_
                   _hd231930232557_
                   _tl231929232559_
                   _e231934232562_
                   _hd231933232565_
                   _tl231932232567_))
              (___match239513239514_
               _e231931232554_
               _hd231930232557_
               _tl231929232559_
               _e231934232562_
               _hd231933232565_
               _tl231932232567_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239513239514_
                                                   _e231931232554_
                                                   _hd231930232557_
                                                   _tl231929232559_
                                                   _e231934232562_
                                                   _hd231933232565_
                                                   _tl231932232567_))))
                                          (___match239513239514_
                                           _e231931232554_
                                           _hd231930232557_
                                           _tl231929232559_
                                           _e231934232562_
                                           _hd231933232565_
                                           _tl231932232567_))))
                                  (___match239513239514_
                                   _e231931232554_
                                   _hd231930232557_
                                   _tl231929232559_
                                   _e231934232562_
                                   _hd231933232565_
                                   _tl231932232567_))))
                          (___match239647239648_
                           _e231931232554_
                           _hd231930232557_
                           _tl231929232559_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239328239329_))
                  (let ((_e231922232771_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239328239329_))))
                    (let ((_tl231920232776_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231922232771_)))
                          (_hd231921232774_
                           (let ()
                             (declare (not safe))
                             (##car _e231922232771_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L232779_ _tl231920232776_))
                            (___kont239330239331_ _L232779_))
                          (___match239355239356_
                           _e231922232771_
                           _hd231921232774_
                           _tl231920232776_))))
                  (let () (declare (not safe)) (_g231917232113_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx231866_)
        (letrec ((_clause-e231868_
                  (lambda (_form231909_)
                    (let ((__obj241007
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
                       __obj241007
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form231909_))
                       (if (let ((__tmp241064
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp241064))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form231909_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form231909_))
                               '#f)
                           '#f))
                      __obj241007))))
          (let* ((_g231870231880_
                  (lambda (_g231871231877_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g231871231877_))))
                 (_g231869231906_
                  (lambda (_g231871231883_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g231871231883_))
                        (let ((_e231875231885_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g231871231883_))))
                          (let ((_hd231874231888_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231875231885_)))
                                (_tl231873231890_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231875231885_))))
                            ((lambda (_L231893_)
                               (let* ((_clauses231904_
                                       (map _clause-e231868_ _L231893_))
                                      (__obj241008
                                       (let ()
                                         (declare (not safe))
                                         (##structure
                                          gxc#!case-lambda::t
                                          '#f
                                          '#f))))
                                 (class-instance-init!
                                  __obj241008
                                  'case-lambda
                                  _clauses231904_)
                                 __obj241008))
                             _tl231873231890_)))
                        (let ()
                          (declare (not safe))
                          (_g231870231880_ _g231871231883_))))))
            (declare (not safe))
            (_g231869231906_ _stx231866_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx231798_)
        (let* ((_g231800231817_
                (lambda (_g231801231814_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231801231814_))))
               (_g231799231863_
                (lambda (_g231801231820_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231801231820_))
                      (let ((_e231806231822_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231801231820_))))
                        (let ((_hd231805231825_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231806231822_)))
                              (_tl231804231827_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231806231822_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231804231827_))
                              (let ((_e231809231830_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231804231827_))))
                                (let ((_hd231808231833_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231809231830_)))
                                      (_tl231807231835_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231809231830_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231807231835_))
                                      (let ((_e231812231838_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231807231835_))))
                                        (let ((_hd231811231841_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231812231838_)))
                                              (_tl231810231843_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231812231838_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231810231843_))
                                              ((lambda (_L231846_ _L231847_)
                                                 (let ((__tmp241065
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L231846_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp241065
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd231811231841_
                                               _hd231808231833_)
                                              (let ()
                                                (declare (not safe))
                                                (_g231800231817_
                                                 _g231801231820_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231800231817_ _g231801231820_)))))
                              (let ()
                                (declare (not safe))
                                (_g231800231817_ _g231801231820_)))))
                      (let ()
                        (declare (not safe))
                        (_g231800231817_ _g231801231820_))))))
          (declare (not safe))
          (_g231799231863_ _stx231798_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx231703_)
        (let* ((___stx239656239657_ _stx231703_)
               (_g231706231726_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239656239657_)))))
          (let ((___kont239658239659_
                 (lambda (_L231770_ _L231771_)
                   (let ((_type-e231788231790_
                          (let ((__tmp241066
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L231771_))))
                            (declare (not safe))
                            (table-ref
                             gxc#basic-expression-type-builtin
                             __tmp241066
                             '#f))))
                     (if _type-e231788231790_
                         (let ((_type-e231793_ _type-e231788231790_))
                           (_type-e231793_ _stx231703_ _L231770_))
                         '#f))))
                (___kont239660239661_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239656239657_))
                (let ((_e231712231738_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239656239657_))))
                  (let ((_tl231710231743_
                         (let () (declare (not safe)) (##cdr _e231712231738_)))
                        (_hd231711231741_
                         (let ()
                           (declare (not safe))
                           (##car _e231712231738_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl231710231743_))
                        (let ((_e231715231746_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231710231743_))))
                          (let ((_tl231713231751_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231715231746_)))
                                (_hd231714231749_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231715231746_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231714231749_))
                                (let ((_e231718231754_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231714231749_))))
                                  (let ((_tl231716231759_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231718231754_)))
                                        (_hd231717231757_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231718231754_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231717231757_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd231717231757_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231716231759_))
                                                (let ((_e231721231762_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231716231759_))))
                                                  (let ((_tl231719231767_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231721231762_)))
                                                        (_hd231720231765_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231721231762_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231719231767_))
                                                        (___kont239658239659_
                                                         _tl231713231751_
                                                         _hd231720231765_)
                                                        (___kont239660239661_))))
                                                (___kont239660239661_))
                                            (___kont239660239661_))
                                        (___kont239660239661_))))
                                (___kont239660239661_))))
                        (___kont239660239661_))))
                (___kont239660239661_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx231652_)
        (let* ((_g231654231667_
                (lambda (_g231655231664_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231655231664_))))
               (_g231653231700_
                (lambda (_g231655231670_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231655231670_))
                      (let ((_e231659231672_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231655231670_))))
                        (let ((_hd231658231675_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231659231672_)))
                              (_tl231657231677_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231659231672_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231657231677_))
                              (let ((_e231662231680_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231657231677_))))
                                (let ((_hd231661231683_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231662231680_)))
                                      (_tl231660231685_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231662231680_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl231660231685_))
                                      ((lambda (_L231688_)
                                         (let ((__tmp241067
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L231688_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp241067)))
                                       _hd231661231683_)
                                      (let ()
                                        (declare (not safe))
                                        (_g231654231667_ _g231655231670_)))))
                              (let ()
                                (declare (not safe))
                                (_g231654231667_ _g231655231670_)))))
                      (let ()
                        (declare (not safe))
                        (_g231654231667_ _g231655231670_))))))
          (declare (not safe))
          (_g231653231700_ _stx231652_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form230886_)
        (let* ((___stx239694239695_ _form230886_)
               (_g230891231048_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239694239695_)))))
          (let ((___kont239696239697_
                 (lambda (_L231572_ _L231573_ _L231574_) '#t))
                (___kont239702239703_
                 (lambda (_L231360_
                          _L231361_
                          _L231362_
                          _L231363_
                          _L231364_
                          _L231365_)
                   '#t))
                (___kont239708239709_
                 (lambda (_L231156_ _L231157_ _L231158_ _L231159_) '#t))
                (___kont239710239711_ (lambda () '#f)))
            (let* ((___match239835239836_
                    (lambda (_e231010231060_
                             _hd231009231063_
                             _tl231008231065_
                             _e231013231068_
                             _hd231012231071_
                             _tl231011231073_
                             _e231016231076_
                             _hd231015231079_
                             _tl231014231081_
                             _e231019231084_
                             _hd231018231087_
                             _tl231017231089_
                             _e231022231092_
                             _hd231021231095_
                             _tl231020231097_
                             _e231025231100_
                             _hd231024231103_
                             _tl231023231105_
                             _e231028231108_
                             _hd231027231111_
                             _tl231026231113_
                             _e231031231116_
                             _hd231030231119_
                             _tl231029231121_
                             _e231034231124_
                             _hd231033231127_
                             _tl231032231129_
                             _e231037231132_
                             _hd231036231135_
                             _tl231035231137_
                             _e231040231140_
                             _hd231039231143_
                             _tl231038231145_
                             _e231043231148_
                             _hd231042231151_
                             _tl231041231153_)
                      (let ((_L231156_ _hd231042231151_)
                            (_L231157_ _hd231033231127_)
                            (_L231158_ _hd231024231103_)
                            (_L231159_ _hd231009231063_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L231159_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L231158_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L231159_ _L231156_))
                                 (let ((__tmp241068
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L231157_
                                           _L231159_))))
                                   (declare (not safe))
                                   (not __tmp241068)))
                            (___kont239708239709_
                             _L231156_
                             _L231157_
                             _L231158_
                             _L231159_)
                            (___kont239710239711_)))))
                   (___match239807239808_
                    (lambda (_e231010231060_
                             _hd231009231063_
                             _tl231008231065_
                             _e231013231068_
                             _hd231012231071_
                             _tl231011231073_
                             _e231016231076_
                             _hd231015231079_
                             _tl231014231081_
                             _e231019231084_
                             _hd231018231087_
                             _tl231017231089_
                             _e231022231092_
                             _hd231021231095_
                             _tl231020231097_
                             _e231025231100_
                             _hd231024231103_
                             _tl231023231105_
                             _e231028231108_
                             _hd231027231111_
                             _tl231026231113_
                             _e231031231116_
                             _hd231030231119_
                             _tl231029231121_
                             _e231034231124_
                             _hd231033231127_
                             _tl231032231129_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl231026231113_))
                          (let ((_e231037231132_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl231026231113_))))
                            (let ((_tl231035231137_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231037231132_)))
                                  (_hd231036231135_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231037231132_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd231036231135_))
                                  (let ((_e231040231140_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd231036231135_))))
                                    (let ((_tl231038231145_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231040231140_)))
                                          (_hd231039231143_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231040231140_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd231039231143_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd231039231143_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl231038231145_))
                                                  (let ((_e231043231148_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl231038231145_))))
                                                    (let ((_tl231041231153_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231043231148_)))
                                                          (_hd231042231151_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231043231148_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl231041231153_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl231035231137_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl231011231073_))
                          (___match239835239836_
                           _e231010231060_
                           _hd231009231063_
                           _tl231008231065_
                           _e231013231068_
                           _hd231012231071_
                           _tl231011231073_
                           _e231016231076_
                           _hd231015231079_
                           _tl231014231081_
                           _e231019231084_
                           _hd231018231087_
                           _tl231017231089_
                           _e231022231092_
                           _hd231021231095_
                           _tl231020231097_
                           _e231025231100_
                           _hd231024231103_
                           _tl231023231105_
                           _e231028231108_
                           _hd231027231111_
                           _tl231026231113_
                           _e231031231116_
                           _hd231030231119_
                           _tl231029231121_
                           _e231034231124_
                           _hd231033231127_
                           _tl231032231129_
                           _e231037231132_
                           _hd231036231135_
                           _tl231035231137_
                           _e231040231140_
                           _hd231039231143_
                           _tl231038231145_
                           _e231043231148_
                           _hd231042231151_
                           _tl231041231153_)
                          (___kont239710239711_))
                      (___kont239710239711_))
                  (___kont239710239711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239710239711_))
                                              (___kont239710239711_))
                                          (___kont239710239711_))))
                                  (___kont239710239711_))))
                          (___kont239710239711_))))
                   (___match239737239738_
                    (lambda (_e230946231200_
                             _hd230945231203_
                             _tl230944231205_
                             ___splice239704239705_
                             _target230947231208_
                             _tl230949231210_)
                      (letrec ((_loop230950231213_
                                (lambda (_hd230948231216_ _arg230954231218_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230948231216_))
                                      (let ((_e230951231221_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230948231216_))))
                                        (let ((_lp-tl230953231226_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230951231221_)))
                                              (_lp-hd230952231224_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230951231221_))))
                                          (let ((__tmp241083
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd230952231224_
                                                         _arg230954231218_))))
                                            (declare (not safe))
                                            (_loop230950231213_
                                             _lp-tl230953231226_
                                             __tmp241083))))
                                      (let ((_arg230955231229_
                                             (reverse _arg230954231218_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230944231205_))
                                            (let ((_e230958231232_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230944231205_))))
                                              (let ((_tl230956231237_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230958231232_)))
                                                    (_hd230957231235_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230958231232_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd230957231235_))
                                                    (let ((_e230961231240_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd230957231235_))))
                                                      (let ((_tl230959231245_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230961231240_)))
                    (_hd230960231243_
                     (let () (declare (not safe)) (##car _e230961231240_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230960231243_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd230960231243_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230959231245_))
                            (let ((_e230964231248_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230959231245_))))
                              (let ((_tl230962231253_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230964231248_)))
                                    (_hd230963231251_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230964231248_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230963231251_))
                                    (let ((_e230967231256_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230963231251_))))
                                      (let ((_tl230965231261_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230967231256_)))
                                            (_hd230966231259_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230967231256_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd230966231259_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd230966231259_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl230965231261_))
                                                    (let ((_e230970231264_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl230965231261_))))
                                                      (let ((_tl230968231269_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230970231264_)))
                    (_hd230969231267_
                     (let () (declare (not safe)) (##car _e230970231264_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl230968231269_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl230962231253_))
                        (let ((_e230973231272_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl230962231253_))))
                          (let ((_tl230971231277_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e230973231272_)))
                                (_hd230972231275_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e230973231272_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd230972231275_))
                                (let ((_e230976231280_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd230972231275_))))
                                  (let ((_tl230974231285_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230976231280_)))
                                        (_hd230975231283_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230976231280_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd230975231283_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd230975231283_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl230974231285_))
                                                (let ((_e230979231288_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl230974231285_))))
                                                  (let ((_tl230977231293_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230979231288_)))
                                                        (_hd230978231291_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230979231288_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl230977231293_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl230971231277_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl230971231277_))
                              '1)
                        (let ((___splice239706239707_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl230971231277_
                                  '1))))
                          (let ((_tl230982231298_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239706239707_ '1)))
                                (_target230980231296_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239706239707_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl230982231298_))
                                (let ((_e230991231301_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl230982231298_))))
                                  (let ((_tl230989231306_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230991231301_)))
                                        (_hd230990231304_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230991231301_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd230990231304_))
                                        (let ((_e230994231309_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd230990231304_))))
                                          (let ((_tl230992231314_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e230994231309_)))
                                                (_hd230993231312_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e230994231309_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd230993231312_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd230993231312_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl230992231314_))
                                                        (let ((_e230997231317_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl230992231314_))))
                  (let ((_tl230995231322_
                         (let () (declare (not safe)) (##cdr _e230997231317_)))
                        (_hd230996231320_
                         (let ()
                           (declare (not safe))
                           (##car _e230997231317_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl230995231322_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl230989231306_))
                            (letrec ((_loop230983231325_
                                      (lambda (_hd230981231328_
                                               _xarg230987231330_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd230981231328_))
                                            (let ((_e230984231333_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd230981231328_))))
                                              (let ((_lp-tl230986231338_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230984231333_)))
                                                    (_lp-hd230985231336_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230984231333_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd230985231336_))
                                                    (let ((_e231000231341_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd230985231336_))))
                                                      (let ((_tl230998231346_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231000231341_)))
                    (_hd230999231344_
                     (let () (declare (not safe)) (##car _e231000231341_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230999231344_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd230999231344_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230998231346_))
                            (let ((_e231003231349_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230998231346_))))
                              (let ((_tl231001231354_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231003231349_)))
                                    (_hd231002231352_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231003231349_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl231001231354_))
                                    (let ((__tmp241082
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd231002231352_
                                                   _xarg230987231330_))))
                                      (declare (not safe))
                                      (_loop230983231325_
                                       _lp-tl230986231338_
                                       __tmp241082))
                                    (___match239807239808_
                                     _e230946231200_
                                     _hd230945231203_
                                     _tl230944231205_
                                     _e230958231232_
                                     _hd230957231235_
                                     _tl230956231237_
                                     _e230961231240_
                                     _hd230960231243_
                                     _tl230959231245_
                                     _e230964231248_
                                     _hd230963231251_
                                     _tl230962231253_
                                     _e230967231256_
                                     _hd230966231259_
                                     _tl230965231261_
                                     _e230970231264_
                                     _hd230969231267_
                                     _tl230968231269_
                                     _e230973231272_
                                     _hd230972231275_
                                     _tl230971231277_
                                     _e230976231280_
                                     _hd230975231283_
                                     _tl230974231285_
                                     _e230979231288_
                                     _hd230978231291_
                                     _tl230977231293_))))
                            (___match239807239808_
                             _e230946231200_
                             _hd230945231203_
                             _tl230944231205_
                             _e230958231232_
                             _hd230957231235_
                             _tl230956231237_
                             _e230961231240_
                             _hd230960231243_
                             _tl230959231245_
                             _e230964231248_
                             _hd230963231251_
                             _tl230962231253_
                             _e230967231256_
                             _hd230966231259_
                             _tl230965231261_
                             _e230970231264_
                             _hd230969231267_
                             _tl230968231269_
                             _e230973231272_
                             _hd230972231275_
                             _tl230971231277_
                             _e230976231280_
                             _hd230975231283_
                             _tl230974231285_
                             _e230979231288_
                             _hd230978231291_
                             _tl230977231293_))
                        (___match239807239808_
                         _e230946231200_
                         _hd230945231203_
                         _tl230944231205_
                         _e230958231232_
                         _hd230957231235_
                         _tl230956231237_
                         _e230961231240_
                         _hd230960231243_
                         _tl230959231245_
                         _e230964231248_
                         _hd230963231251_
                         _tl230962231253_
                         _e230967231256_
                         _hd230966231259_
                         _tl230965231261_
                         _e230970231264_
                         _hd230969231267_
                         _tl230968231269_
                         _e230973231272_
                         _hd230972231275_
                         _tl230971231277_
                         _e230976231280_
                         _hd230975231283_
                         _tl230974231285_
                         _e230979231288_
                         _hd230978231291_
                         _tl230977231293_))
                    (___match239807239808_
                     _e230946231200_
                     _hd230945231203_
                     _tl230944231205_
                     _e230958231232_
                     _hd230957231235_
                     _tl230956231237_
                     _e230961231240_
                     _hd230960231243_
                     _tl230959231245_
                     _e230964231248_
                     _hd230963231251_
                     _tl230962231253_
                     _e230967231256_
                     _hd230966231259_
                     _tl230965231261_
                     _e230970231264_
                     _hd230969231267_
                     _tl230968231269_
                     _e230973231272_
                     _hd230972231275_
                     _tl230971231277_
                     _e230976231280_
                     _hd230975231283_
                     _tl230974231285_
                     _e230979231288_
                     _hd230978231291_
                     _tl230977231293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239807239808_
                                                     _e230946231200_
                                                     _hd230945231203_
                                                     _tl230944231205_
                                                     _e230958231232_
                                                     _hd230957231235_
                                                     _tl230956231237_
                                                     _e230961231240_
                                                     _hd230960231243_
                                                     _tl230959231245_
                                                     _e230964231248_
                                                     _hd230963231251_
                                                     _tl230962231253_
                                                     _e230967231256_
                                                     _hd230966231259_
                                                     _tl230965231261_
                                                     _e230970231264_
                                                     _hd230969231267_
                                                     _tl230968231269_
                                                     _e230973231272_
                                                     _hd230972231275_
                                                     _tl230971231277_
                                                     _e230976231280_
                                                     _hd230975231283_
                                                     _tl230974231285_
                                                     _e230979231288_
                                                     _hd230978231291_
                                                     _tl230977231293_))))
                                            (let ((_xarg230988231357_
                                                   (reverse _xarg230987231330_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl230956231237_))
                                                  (let ((_L231360_
                                                         _hd230996231320_)
                                                        (_L231361_
                                                         _xarg230988231357_)
                                                        (_L231362_
                                                         _hd230978231291_)
                                                        (_L231363_
                                                         _hd230969231267_)
                                                        (_L231364_
                                                         _tl230949231210_)
                                                        (_L231365_
                                                         _arg230955231229_))
                                                    (if (and (let ((__tmp241080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp241081
                                   (lambda (_g231408231411_ _g231409231413_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g231408231411_
                                             _g231409231413_)))))
                              (declare (not safe))
                              (foldr1 __tmp241081 '() _L231365_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp241080))
                     (let () (declare (not safe)) (gx#identifier? _L231364_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L231363_ 'apply))
                     (fx= (length (let ((__tmp241078
                                         (lambda (_g231415231418_
                                                  _g231416231420_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g231415231418_
                                                   _g231416231420_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp241078 '() _L231365_)))
                          (length (let ((__tmp241079
                                         (lambda (_g231422231425_
                                                  _g231423231427_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g231422231425_
                                                   _g231423231427_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp241079 '() _L231361_))))
                     (let ((__tmp241076
                            (let ((__tmp241077
                                   (lambda (_g231429231432_ _g231430231434_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g231429231432_
                                             _g231430231434_)))))
                              (declare (not safe))
                              (foldr1 __tmp241077 '() _L231365_)))
                           (__tmp241074
                            (let ((__tmp241075
                                   (lambda (_g231436231439_ _g231437231441_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g231436231439_
                                             _g231437231441_)))))
                              (declare (not safe))
                              (foldr1 __tmp241075 '() _L231361_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp241076 __tmp241074))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L231364_ _L231360_))
                     (let ((__tmp241069
                            (let ((__tmp241073
                                   (lambda (_g231443231445_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g231443231445_
                                        _L231362_))))
                                  (__tmp241070
                                   (let ((__tmp241072
                                          (lambda (_g231447231450_
                                                   _g231448231452_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g231447231450_
                                                    _g231448231452_))))
                                         (__tmp241071
                                          (let ()
                                            (declare (not safe))
                                            (cons _L231364_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp241072
                                             __tmp241071
                                             _L231365_))))
                              (declare (not safe))
                              (find __tmp241073 __tmp241070))))
                       (declare (not safe))
                       (not __tmp241069)))
                (___kont239702239703_
                 _L231360_
                 _L231361_
                 _L231362_
                 _L231363_
                 _L231364_
                 _L231365_)
                (___match239807239808_
                 _e230946231200_
                 _hd230945231203_
                 _tl230944231205_
                 _e230958231232_
                 _hd230957231235_
                 _tl230956231237_
                 _e230961231240_
                 _hd230960231243_
                 _tl230959231245_
                 _e230964231248_
                 _hd230963231251_
                 _tl230962231253_
                 _e230967231256_
                 _hd230966231259_
                 _tl230965231261_
                 _e230970231264_
                 _hd230969231267_
                 _tl230968231269_
                 _e230973231272_
                 _hd230972231275_
                 _tl230971231277_
                 _e230976231280_
                 _hd230975231283_
                 _tl230974231285_
                 _e230979231288_
                 _hd230978231291_
                 _tl230977231293_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239807239808_
                                                   _e230946231200_
                                                   _hd230945231203_
                                                   _tl230944231205_
                                                   _e230958231232_
                                                   _hd230957231235_
                                                   _tl230956231237_
                                                   _e230961231240_
                                                   _hd230960231243_
                                                   _tl230959231245_
                                                   _e230964231248_
                                                   _hd230963231251_
                                                   _tl230962231253_
                                                   _e230967231256_
                                                   _hd230966231259_
                                                   _tl230965231261_
                                                   _e230970231264_
                                                   _hd230969231267_
                                                   _tl230968231269_
                                                   _e230973231272_
                                                   _hd230972231275_
                                                   _tl230971231277_
                                                   _e230976231280_
                                                   _hd230975231283_
                                                   _tl230974231285_
                                                   _e230979231288_
                                                   _hd230978231291_
                                                   _tl230977231293_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop230983231325_ _target230980231296_ '())))
                            (___match239807239808_
                             _e230946231200_
                             _hd230945231203_
                             _tl230944231205_
                             _e230958231232_
                             _hd230957231235_
                             _tl230956231237_
                             _e230961231240_
                             _hd230960231243_
                             _tl230959231245_
                             _e230964231248_
                             _hd230963231251_
                             _tl230962231253_
                             _e230967231256_
                             _hd230966231259_
                             _tl230965231261_
                             _e230970231264_
                             _hd230969231267_
                             _tl230968231269_
                             _e230973231272_
                             _hd230972231275_
                             _tl230971231277_
                             _e230976231280_
                             _hd230975231283_
                             _tl230974231285_
                             _e230979231288_
                             _hd230978231291_
                             _tl230977231293_))
                        (___match239807239808_
                         _e230946231200_
                         _hd230945231203_
                         _tl230944231205_
                         _e230958231232_
                         _hd230957231235_
                         _tl230956231237_
                         _e230961231240_
                         _hd230960231243_
                         _tl230959231245_
                         _e230964231248_
                         _hd230963231251_
                         _tl230962231253_
                         _e230967231256_
                         _hd230966231259_
                         _tl230965231261_
                         _e230970231264_
                         _hd230969231267_
                         _tl230968231269_
                         _e230973231272_
                         _hd230972231275_
                         _tl230971231277_
                         _e230976231280_
                         _hd230975231283_
                         _tl230974231285_
                         _e230979231288_
                         _hd230978231291_
                         _tl230977231293_))))
                (___match239807239808_
                 _e230946231200_
                 _hd230945231203_
                 _tl230944231205_
                 _e230958231232_
                 _hd230957231235_
                 _tl230956231237_
                 _e230961231240_
                 _hd230960231243_
                 _tl230959231245_
                 _e230964231248_
                 _hd230963231251_
                 _tl230962231253_
                 _e230967231256_
                 _hd230966231259_
                 _tl230965231261_
                 _e230970231264_
                 _hd230969231267_
                 _tl230968231269_
                 _e230973231272_
                 _hd230972231275_
                 _tl230971231277_
                 _e230976231280_
                 _hd230975231283_
                 _tl230974231285_
                 _e230979231288_
                 _hd230978231291_
                 _tl230977231293_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239807239808_
                                                     _e230946231200_
                                                     _hd230945231203_
                                                     _tl230944231205_
                                                     _e230958231232_
                                                     _hd230957231235_
                                                     _tl230956231237_
                                                     _e230961231240_
                                                     _hd230960231243_
                                                     _tl230959231245_
                                                     _e230964231248_
                                                     _hd230963231251_
                                                     _tl230962231253_
                                                     _e230967231256_
                                                     _hd230966231259_
                                                     _tl230965231261_
                                                     _e230970231264_
                                                     _hd230969231267_
                                                     _tl230968231269_
                                                     _e230973231272_
                                                     _hd230972231275_
                                                     _tl230971231277_
                                                     _e230976231280_
                                                     _hd230975231283_
                                                     _tl230974231285_
                                                     _e230979231288_
                                                     _hd230978231291_
                                                     _tl230977231293_))
                                                (___match239807239808_
                                                 _e230946231200_
                                                 _hd230945231203_
                                                 _tl230944231205_
                                                 _e230958231232_
                                                 _hd230957231235_
                                                 _tl230956231237_
                                                 _e230961231240_
                                                 _hd230960231243_
                                                 _tl230959231245_
                                                 _e230964231248_
                                                 _hd230963231251_
                                                 _tl230962231253_
                                                 _e230967231256_
                                                 _hd230966231259_
                                                 _tl230965231261_
                                                 _e230970231264_
                                                 _hd230969231267_
                                                 _tl230968231269_
                                                 _e230973231272_
                                                 _hd230972231275_
                                                 _tl230971231277_
                                                 _e230976231280_
                                                 _hd230975231283_
                                                 _tl230974231285_
                                                 _e230979231288_
                                                 _hd230978231291_
                                                 _tl230977231293_))))
                                        (___match239807239808_
                                         _e230946231200_
                                         _hd230945231203_
                                         _tl230944231205_
                                         _e230958231232_
                                         _hd230957231235_
                                         _tl230956231237_
                                         _e230961231240_
                                         _hd230960231243_
                                         _tl230959231245_
                                         _e230964231248_
                                         _hd230963231251_
                                         _tl230962231253_
                                         _e230967231256_
                                         _hd230966231259_
                                         _tl230965231261_
                                         _e230970231264_
                                         _hd230969231267_
                                         _tl230968231269_
                                         _e230973231272_
                                         _hd230972231275_
                                         _tl230971231277_
                                         _e230976231280_
                                         _hd230975231283_
                                         _tl230974231285_
                                         _e230979231288_
                                         _hd230978231291_
                                         _tl230977231293_))))
                                (___match239807239808_
                                 _e230946231200_
                                 _hd230945231203_
                                 _tl230944231205_
                                 _e230958231232_
                                 _hd230957231235_
                                 _tl230956231237_
                                 _e230961231240_
                                 _hd230960231243_
                                 _tl230959231245_
                                 _e230964231248_
                                 _hd230963231251_
                                 _tl230962231253_
                                 _e230967231256_
                                 _hd230966231259_
                                 _tl230965231261_
                                 _e230970231264_
                                 _hd230969231267_
                                 _tl230968231269_
                                 _e230973231272_
                                 _hd230972231275_
                                 _tl230971231277_
                                 _e230976231280_
                                 _hd230975231283_
                                 _tl230974231285_
                                 _e230979231288_
                                 _hd230978231291_
                                 _tl230977231293_))))
                        (___match239807239808_
                         _e230946231200_
                         _hd230945231203_
                         _tl230944231205_
                         _e230958231232_
                         _hd230957231235_
                         _tl230956231237_
                         _e230961231240_
                         _hd230960231243_
                         _tl230959231245_
                         _e230964231248_
                         _hd230963231251_
                         _tl230962231253_
                         _e230967231256_
                         _hd230966231259_
                         _tl230965231261_
                         _e230970231264_
                         _hd230969231267_
                         _tl230968231269_
                         _e230973231272_
                         _hd230972231275_
                         _tl230971231277_
                         _e230976231280_
                         _hd230975231283_
                         _tl230974231285_
                         _e230979231288_
                         _hd230978231291_
                         _tl230977231293_))
                    (___match239807239808_
                     _e230946231200_
                     _hd230945231203_
                     _tl230944231205_
                     _e230958231232_
                     _hd230957231235_
                     _tl230956231237_
                     _e230961231240_
                     _hd230960231243_
                     _tl230959231245_
                     _e230964231248_
                     _hd230963231251_
                     _tl230962231253_
                     _e230967231256_
                     _hd230966231259_
                     _tl230965231261_
                     _e230970231264_
                     _hd230969231267_
                     _tl230968231269_
                     _e230973231272_
                     _hd230972231275_
                     _tl230971231277_
                     _e230976231280_
                     _hd230975231283_
                     _tl230974231285_
                     _e230979231288_
                     _hd230978231291_
                     _tl230977231293_))
                (___kont239710239711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont239710239711_))
                                            (___kont239710239711_))
                                        (___kont239710239711_))))
                                (___kont239710239711_))))
                        (___kont239710239711_))
                    (___kont239710239711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239710239711_))
                                                (___kont239710239711_))
                                            (___kont239710239711_))))
                                    (___kont239710239711_))))
                            (___kont239710239711_))
                        (___kont239710239711_))
                    (___kont239710239711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239710239711_))))
                                            (___kont239710239711_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop230950231213_ _target230947231208_ '())))))
                   (___match239725239726_
                    (lambda (_e230898231460_
                             _hd230897231463_
                             _tl230896231465_
                             ___splice239698239699_
                             _target230899231468_
                             _tl230901231470_)
                      (letrec ((_loop230902231473_
                                (lambda (_hd230900231476_ _arg230906231478_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230900231476_))
                                      (let ((_e230903231481_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230900231476_))))
                                        (let ((_lp-tl230905231486_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230903231481_)))
                                              (_lp-hd230904231484_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230903231481_))))
                                          (let ((__tmp241097
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd230904231484_
                                                         _arg230906231478_))))
                                            (declare (not safe))
                                            (_loop230902231473_
                                             _lp-tl230905231486_
                                             __tmp241097))))
                                      (let ((_arg230907231489_
                                             (reverse _arg230906231478_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230896231465_))
                                            (let ((_e230910231492_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230896231465_))))
                                              (let ((_tl230908231497_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230910231492_)))
                                                    (_hd230909231495_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230910231492_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd230909231495_))
                                                    (let ((_e230913231500_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd230909231495_))))
                                                      (let ((_tl230911231505_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230913231500_)))
                    (_hd230912231503_
                     (let () (declare (not safe)) (##car _e230913231500_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230912231503_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd230912231503_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230911231505_))
                            (let ((_e230916231508_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230911231505_))))
                              (let ((_tl230914231513_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230916231508_)))
                                    (_hd230915231511_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230916231508_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230915231511_))
                                    (let ((_e230919231516_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230915231511_))))
                                      (let ((_tl230917231521_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230919231516_)))
                                            (_hd230918231519_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230919231516_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd230918231519_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd230918231519_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl230917231521_))
                                                    (let ((_e230922231524_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl230917231521_))))
                                                      (let ((_tl230920231529_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230922231524_)))
                    (_hd230921231527_
                     (let () (declare (not safe)) (##car _e230922231524_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl230920231529_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl230914231513_))
                        (let ((___splice239700239701_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl230914231513_
                                  '0))))
                          (let ((_tl230925231534_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239700239701_ '1)))
                                (_target230923231532_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239700239701_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl230925231534_))
                                (letrec ((_loop230926231537_
                                          (lambda (_hd230924231540_
                                                   _xarg230930231542_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd230924231540_))
                                                (let ((_e230927231545_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd230924231540_))))
                                                  (let ((_lp-tl230929231550_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230927231545_)))
                                                        (_lp-hd230928231548_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230927231545_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd230928231548_))
                                                        (let ((_e230934231553_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd230928231548_))))
                  (let ((_tl230932231558_
                         (let () (declare (not safe)) (##cdr _e230934231553_)))
                        (_hd230933231556_
                         (let ()
                           (declare (not safe))
                           (##car _e230934231553_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230933231556_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd230933231556_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl230932231558_))
                                (let ((_e230937231561_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl230932231558_))))
                                  (let ((_tl230935231566_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230937231561_)))
                                        (_hd230936231564_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230937231561_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl230935231566_))
                                        (let ((__tmp241096
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd230936231564_
                                                       _xarg230930231542_))))
                                          (declare (not safe))
                                          (_loop230926231537_
                                           _lp-tl230929231550_
                                           __tmp241096))
                                        (___match239737239738_
                                         _e230898231460_
                                         _hd230897231463_
                                         _tl230896231465_
                                         ___splice239698239699_
                                         _target230899231468_
                                         _tl230901231470_))))
                                (___match239737239738_
                                 _e230898231460_
                                 _hd230897231463_
                                 _tl230896231465_
                                 ___splice239698239699_
                                 _target230899231468_
                                 _tl230901231470_))
                            (___match239737239738_
                             _e230898231460_
                             _hd230897231463_
                             _tl230896231465_
                             ___splice239698239699_
                             _target230899231468_
                             _tl230901231470_))
                        (___match239737239738_
                         _e230898231460_
                         _hd230897231463_
                         _tl230896231465_
                         ___splice239698239699_
                         _target230899231468_
                         _tl230901231470_))))
                (___match239737239738_
                 _e230898231460_
                 _hd230897231463_
                 _tl230896231465_
                 ___splice239698239699_
                 _target230899231468_
                 _tl230901231470_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg230931231569_
                                                       (reverse _xarg230930231542_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230908231497_))
                                                      (let ((_L231572_
                                                             _xarg230931231569_)
                                                            (_L231573_
                                                             _hd230921231527_)
                                                            (_L231574_
                                                             _arg230907231489_))
                                                        (if (and (let ((__tmp241094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp241095
                                       (lambda (_g231602231605_
                                                _g231603231607_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g231602231605_
                                                 _g231603231607_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp241095 '() _L231574_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp241094))
                         (fx= (length (let ((__tmp241092
                                             (lambda (_g231609231612_
                                                      _g231610231614_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g231609231612_
                                                       _g231610231614_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp241092 '() _L231574_)))
                              (length (let ((__tmp241093
                                             (lambda (_g231616231619_
                                                      _g231617231621_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g231616231619_
                                                       _g231617231621_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp241093 '() _L231572_))))
                         (let ((__tmp241090
                                (let ((__tmp241091
                                       (lambda (_g231623231626_
                                                _g231624231628_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g231623231626_
                                                 _g231624231628_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp241091 '() _L231574_)))
                               (__tmp241088
                                (let ((__tmp241089
                                       (lambda (_g231630231633_
                                                _g231631231635_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g231630231633_
                                                 _g231631231635_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp241089 '() _L231572_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp241090
                                    __tmp241088))
                         (let ((__tmp241084
                                (let ((__tmp241087
                                       (lambda (_g231637231639_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g231637231639_
                                            _L231573_))))
                                      (__tmp241085
                                       (let ((__tmp241086
                                              (lambda (_g231641231644_
                                                       _g231642231646_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g231641231644_
                                                        _g231642231646_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp241086 '() _L231574_))))
                                  (declare (not safe))
                                  (find __tmp241087 __tmp241085))))
                           (declare (not safe))
                           (not __tmp241084)))
                    (___kont239696239697_ _L231572_ _L231573_ _L231574_)
                    (___match239737239738_
                     _e230898231460_
                     _hd230897231463_
                     _tl230896231465_
                     ___splice239698239699_
                     _target230899231468_
                     _tl230901231470_)))
              (___match239737239738_
               _e230898231460_
               _hd230897231463_
               _tl230896231465_
               ___splice239698239699_
               _target230899231468_
               _tl230901231470_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop230926231537_
                                     _target230923231532_
                                     '())))
                                (___match239737239738_
                                 _e230898231460_
                                 _hd230897231463_
                                 _tl230896231465_
                                 ___splice239698239699_
                                 _target230899231468_
                                 _tl230901231470_))))
                        (___match239737239738_
                         _e230898231460_
                         _hd230897231463_
                         _tl230896231465_
                         ___splice239698239699_
                         _target230899231468_
                         _tl230901231470_))
                    (___match239737239738_
                     _e230898231460_
                     _hd230897231463_
                     _tl230896231465_
                     ___splice239698239699_
                     _target230899231468_
                     _tl230901231470_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239737239738_
                                                     _e230898231460_
                                                     _hd230897231463_
                                                     _tl230896231465_
                                                     ___splice239698239699_
                                                     _target230899231468_
                                                     _tl230901231470_))
                                                (___match239737239738_
                                                 _e230898231460_
                                                 _hd230897231463_
                                                 _tl230896231465_
                                                 ___splice239698239699_
                                                 _target230899231468_
                                                 _tl230901231470_))
                                            (___match239737239738_
                                             _e230898231460_
                                             _hd230897231463_
                                             _tl230896231465_
                                             ___splice239698239699_
                                             _target230899231468_
                                             _tl230901231470_))))
                                    (___match239737239738_
                                     _e230898231460_
                                     _hd230897231463_
                                     _tl230896231465_
                                     ___splice239698239699_
                                     _target230899231468_
                                     _tl230901231470_))))
                            (___match239737239738_
                             _e230898231460_
                             _hd230897231463_
                             _tl230896231465_
                             ___splice239698239699_
                             _target230899231468_
                             _tl230901231470_))
                        (___match239737239738_
                         _e230898231460_
                         _hd230897231463_
                         _tl230896231465_
                         ___splice239698239699_
                         _target230899231468_
                         _tl230901231470_))
                    (___match239737239738_
                     _e230898231460_
                     _hd230897231463_
                     _tl230896231465_
                     ___splice239698239699_
                     _target230899231468_
                     _tl230901231470_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239737239738_
                                                     _e230898231460_
                                                     _hd230897231463_
                                                     _tl230896231465_
                                                     ___splice239698239699_
                                                     _target230899231468_
                                                     _tl230901231470_))))
                                            (___match239737239738_
                                             _e230898231460_
                                             _hd230897231463_
                                             _tl230896231465_
                                             ___splice239698239699_
                                             _target230899231468_
                                             _tl230901231470_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop230902231473_ _target230899231468_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239694239695_))
                  (let ((_e230898231460_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239694239695_))))
                    (let ((_tl230896231465_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230898231460_)))
                          (_hd230897231463_
                           (let ()
                             (declare (not safe))
                             (##car _e230898231460_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd230897231463_))
                          (let ((___splice239698239699_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd230897231463_
                                    '0))))
                            (let ((_tl230901231470_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice239698239699_ '1)))
                                  (_target230899231468_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice239698239699_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230901231470_))
                                  (___match239725239726_
                                   _e230898231460_
                                   _hd230897231463_
                                   _tl230896231465_
                                   ___splice239698239699_
                                   _target230899231468_
                                   _tl230901231470_)
                                  (___match239737239738_
                                   _e230898231460_
                                   _hd230897231463_
                                   _tl230896231465_
                                   ___splice239698239699_
                                   _target230899231468_
                                   _tl230901231470_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230896231465_))
                              (let ((_e231013231068_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230896231465_))))
                                (let ((_tl231011231073_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231013231068_)))
                                      (_hd231012231071_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231013231068_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd231012231071_))
                                      (let ((_e231016231076_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd231012231071_))))
                                        (let ((_tl231014231081_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231016231076_)))
                                              (_hd231015231079_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231016231076_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd231015231079_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd231015231079_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl231014231081_))
                                                      (let ((_e231019231084_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl231014231081_))))
                (let ((_tl231017231089_
                       (let () (declare (not safe)) (##cdr _e231019231084_)))
                      (_hd231018231087_
                       (let () (declare (not safe)) (##car _e231019231084_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd231018231087_))
                      (let ((_e231022231092_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd231018231087_))))
                        (let ((_tl231020231097_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231022231092_)))
                              (_hd231021231095_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231022231092_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd231021231095_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd231021231095_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231020231097_))
                                      (let ((_e231025231100_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231020231097_))))
                                        (let ((_tl231023231105_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231025231100_)))
                                              (_hd231024231103_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231025231100_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231023231105_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl231017231089_))
                                                  (let ((_e231028231108_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl231017231089_))))
                                                    (let ((_tl231026231113_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231028231108_)))
                                                          (_hd231027231111_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231028231108_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd231027231111_))
                                                          (let ((_e231031231116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd231027231111_))))
                    (let ((_tl231029231121_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231031231116_)))
                          (_hd231030231119_
                           (let ()
                             (declare (not safe))
                             (##car _e231031231116_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd231030231119_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd231030231119_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231029231121_))
                                  (let ((_e231034231124_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231029231121_))))
                                    (let ((_tl231032231129_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231034231124_)))
                                          (_hd231033231127_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231034231124_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231032231129_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl231026231113_))
                                              (let ((_e231037231132_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl231026231113_))))
                                                (let ((_tl231035231137_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e231037231132_)))
                                                      (_hd231036231135_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e231037231132_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd231036231135_))
                                                      (let ((_e231040231140_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd231036231135_))))
                (let ((_tl231038231145_
                       (let () (declare (not safe)) (##cdr _e231040231140_)))
                      (_hd231039231143_
                       (let () (declare (not safe)) (##car _e231040231140_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd231039231143_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd231039231143_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231038231145_))
                              (let ((_e231043231148_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231038231145_))))
                                (let ((_tl231041231153_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231043231148_)))
                                      (_hd231042231151_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231043231148_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl231041231153_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231035231137_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231011231073_))
                                              (___match239835239836_
                                               _e230898231460_
                                               _hd230897231463_
                                               _tl230896231465_
                                               _e231013231068_
                                               _hd231012231071_
                                               _tl231011231073_
                                               _e231016231076_
                                               _hd231015231079_
                                               _tl231014231081_
                                               _e231019231084_
                                               _hd231018231087_
                                               _tl231017231089_
                                               _e231022231092_
                                               _hd231021231095_
                                               _tl231020231097_
                                               _e231025231100_
                                               _hd231024231103_
                                               _tl231023231105_
                                               _e231028231108_
                                               _hd231027231111_
                                               _tl231026231113_
                                               _e231031231116_
                                               _hd231030231119_
                                               _tl231029231121_
                                               _e231034231124_
                                               _hd231033231127_
                                               _tl231032231129_
                                               _e231037231132_
                                               _hd231036231135_
                                               _tl231035231137_
                                               _e231040231140_
                                               _hd231039231143_
                                               _tl231038231145_
                                               _e231043231148_
                                               _hd231042231151_
                                               _tl231041231153_)
                                              (___kont239710239711_))
                                          (___kont239710239711_))
                                      (___kont239710239711_))))
                              (___kont239710239711_))
                          (___kont239710239711_))
                      (___kont239710239711_))))
              (___kont239710239711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont239710239711_))
                                          (___kont239710239711_))))
                                  (___kont239710239711_))
                              (___kont239710239711_))
                          (___kont239710239711_))))
                  (___kont239710239711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239710239711_))
                                              (___kont239710239711_))))
                                      (___kont239710239711_))
                                  (___kont239710239711_))
                              (___kont239710239711_))))
                      (___kont239710239711_))))
              (___kont239710239711_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239710239711_))
                                              (___kont239710239711_))))
                                      (___kont239710239711_))))
                              (___kont239710239711_)))))
                  (___kont239710239711_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form230354_)
        (let* ((___stx239838239839_ _form230354_)
               (_g230358230482_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239838239839_)))))
          (let ((___kont239840239841_
                 (lambda (_L230852_ _L230853_ _L230854_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L230853_))))
                (___kont239846239847_
                 (lambda (_L230700_ _L230701_ _L230702_ _L230703_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L230700_))))
                (___kont239850239851_
                 (lambda (_L230567_ _L230568_ _L230569_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L230567_)))))
            (let* ((___match239947239948_
                    (lambda (_e230450230487_
                             _hd230449230490_
                             _tl230448230492_
                             _e230453230495_
                             _hd230452230498_
                             _tl230451230500_
                             _e230456230503_
                             _hd230455230506_
                             _tl230454230508_
                             _e230459230511_
                             _hd230458230514_
                             _tl230457230516_
                             _e230462230519_
                             _hd230461230522_
                             _tl230460230524_
                             _e230465230527_
                             _hd230464230530_
                             _tl230463230532_
                             _e230468230535_
                             _hd230467230538_
                             _tl230466230540_
                             _e230471230543_
                             _hd230470230546_
                             _tl230469230548_
                             _e230474230551_
                             _hd230473230554_
                             _tl230472230556_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230466230540_))
                          (let ((_e230477230559_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230466230540_))))
                            (let ((_tl230475230564_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230477230559_)))
                                  (_hd230476230562_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230477230559_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230475230564_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230451230500_))
                                      (___kont239850239851_
                                       _hd230473230554_
                                       _hd230464230530_
                                       _hd230449230490_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230358230482_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230358230482_)))))
                          (let () (declare (not safe)) (_g230358230482_)))))
                   (___match239877239878_
                    (lambda (_e230411230604_
                             _hd230410230607_
                             _tl230409230609_
                             ___splice239848239849_
                             _target230412230612_
                             _tl230414230614_)
                      (letrec ((_loop230415230617_
                                (lambda (_hd230413230620_ _arg230419230622_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230413230620_))
                                      (let ((_e230416230625_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230413230620_))))
                                        (let ((_lp-tl230418230630_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230416230625_)))
                                              (_lp-hd230417230628_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230416230625_))))
                                          (let ((__tmp241098
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd230417230628_
                                                         _arg230419230622_))))
                                            (declare (not safe))
                                            (_loop230415230617_
                                             _lp-tl230418230630_
                                             __tmp241098))))
                                      (let ((_arg230420230633_
                                             (reverse _arg230419230622_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230409230609_))
                                            (let ((_e230423230636_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230409230609_))))
                                              (let ((_tl230421230641_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230423230636_)))
                                                    (_hd230422230639_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230423230636_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd230422230639_))
                                                    (let ((_e230426230644_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd230422230639_))))
                                                      (let ((_tl230424230649_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230426230644_)))
                    (_hd230425230647_
                     (let () (declare (not safe)) (##car _e230426230644_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230425230647_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd230425230647_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230424230649_))
                            (let ((_e230429230652_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230424230649_))))
                              (let ((_tl230427230657_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230429230652_)))
                                    (_hd230428230655_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230429230652_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230428230655_))
                                    (let ((_e230432230660_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230428230655_))))
                                      (let ((_tl230430230665_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230432230660_)))
                                            (_hd230431230663_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230432230660_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd230431230663_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd230431230663_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl230430230665_))
                                                    (let ((_e230435230668_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl230430230665_))))
                                                      (let ((_tl230433230673_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230435230668_)))
                    (_hd230434230671_
                     (let () (declare (not safe)) (##car _e230435230668_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl230433230673_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl230427230657_))
                        (let ((_e230438230676_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl230427230657_))))
                          (let ((_tl230436230681_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e230438230676_)))
                                (_hd230437230679_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e230438230676_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd230437230679_))
                                (let ((_e230441230684_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd230437230679_))))
                                  (let ((_tl230439230689_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230441230684_)))
                                        (_hd230440230687_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230441230684_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd230440230687_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd230440230687_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl230439230689_))
                                                (let ((_e230444230692_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl230439230689_))))
                                                  (let ((_tl230442230697_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230444230692_)))
                                                        (_hd230443230695_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230444230692_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl230442230697_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl230421230641_))
                                                            (___kont239846239847_
                                                             _hd230443230695_
                                                             _hd230434230671_
                                                             _tl230414230614_
                                                             _arg230420230633_)
                                                            (___match239947239948_
                                                             _e230411230604_
                                                             _hd230410230607_
                                                             _tl230409230609_
                                                             _e230423230636_
                                                             _hd230422230639_
                                                             _tl230421230641_
                                                             _e230426230644_
                                                             _hd230425230647_
                                                             _tl230424230649_
                                                             _e230429230652_
                                                             _hd230428230655_
                                                             _tl230427230657_
                                                             _e230432230660_
                                                             _hd230431230663_
                                                             _tl230430230665_
                                                             _e230435230668_
                                                             _hd230434230671_
                                                             _tl230433230673_
                                                             _e230438230676_
                                                             _hd230437230679_
                                                             _tl230436230681_
                                                             _e230441230684_
                                                             _hd230440230687_
                                                             _tl230439230689_
                                                             _e230444230692_
                                                             _hd230443230695_
                                                             _tl230442230697_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g230358230482_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230358230482_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g230358230482_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g230358230482_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g230358230482_)))))
                        (let () (declare (not safe)) (_g230358230482_)))
                    (let () (declare (not safe)) (_g230358230482_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g230358230482_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230358230482_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g230358230482_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g230358230482_)))))
                            (let () (declare (not safe)) (_g230358230482_)))
                        (let () (declare (not safe)) (_g230358230482_)))
                    (let () (declare (not safe)) (_g230358230482_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g230358230482_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g230358230482_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop230415230617_ _target230412230612_ '())))))
                   (___match239865239866_
                    (lambda (_e230365230740_
                             _hd230364230743_
                             _tl230363230745_
                             ___splice239842239843_
                             _target230366230748_
                             _tl230368230750_)
                      (letrec ((_loop230369230753_
                                (lambda (_hd230367230756_ _arg230373230758_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230367230756_))
                                      (let ((_e230370230761_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230367230756_))))
                                        (let ((_lp-tl230372230766_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230370230761_)))
                                              (_lp-hd230371230764_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230370230761_))))
                                          (let ((__tmp241100
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd230371230764_
                                                         _arg230373230758_))))
                                            (declare (not safe))
                                            (_loop230369230753_
                                             _lp-tl230372230766_
                                             __tmp241100))))
                                      (let ((_arg230374230769_
                                             (reverse _arg230373230758_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230363230745_))
                                            (let ((_e230377230772_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230363230745_))))
                                              (let ((_tl230375230777_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230377230772_)))
                                                    (_hd230376230775_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230377230772_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd230376230775_))
                                                    (let ((_e230380230780_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd230376230775_))))
                                                      (let ((_tl230378230785_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230380230780_)))
                    (_hd230379230783_
                     (let () (declare (not safe)) (##car _e230380230780_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230379230783_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd230379230783_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230378230785_))
                            (let ((_e230383230788_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230378230785_))))
                              (let ((_tl230381230793_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230383230788_)))
                                    (_hd230382230791_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230383230788_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230382230791_))
                                    (let ((_e230386230796_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230382230791_))))
                                      (let ((_tl230384230801_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230386230796_)))
                                            (_hd230385230799_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230386230796_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd230385230799_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd230385230799_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl230384230801_))
                                                    (let ((_e230389230804_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl230384230801_))))
                                                      (let ((_tl230387230809_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230389230804_)))
                    (_hd230388230807_
                     (let () (declare (not safe)) (##car _e230389230804_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl230387230809_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl230381230793_))
                        (let ((___splice239844239845_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl230381230793_
                                  '0))))
                          (let ((_tl230392230814_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239844239845_ '1)))
                                (_target230390230812_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239844239845_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl230392230814_))
                                (letrec ((_loop230393230817_
                                          (lambda (_hd230391230820_
                                                   _xarg230397230822_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd230391230820_))
                                                (let ((_e230394230825_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd230391230820_))))
                                                  (let ((_lp-tl230396230830_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230394230825_)))
                                                        (_lp-hd230395230828_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230394230825_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd230395230828_))
                                                        (let ((_e230401230833_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd230395230828_))))
                  (let ((_tl230399230838_
                         (let () (declare (not safe)) (##cdr _e230401230833_)))
                        (_hd230400230836_
                         (let ()
                           (declare (not safe))
                           (##car _e230401230833_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230400230836_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd230400230836_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl230399230838_))
                                (let ((_e230404230841_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl230399230838_))))
                                  (let ((_tl230402230846_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230404230841_)))
                                        (_hd230403230844_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230404230841_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl230402230846_))
                                        (let ((__tmp241099
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd230403230844_
                                                       _xarg230397230822_))))
                                          (declare (not safe))
                                          (_loop230393230817_
                                           _lp-tl230396230830_
                                           __tmp241099))
                                        (___match239877239878_
                                         _e230365230740_
                                         _hd230364230743_
                                         _tl230363230745_
                                         ___splice239842239843_
                                         _target230366230748_
                                         _tl230368230750_))))
                                (___match239877239878_
                                 _e230365230740_
                                 _hd230364230743_
                                 _tl230363230745_
                                 ___splice239842239843_
                                 _target230366230748_
                                 _tl230368230750_))
                            (___match239877239878_
                             _e230365230740_
                             _hd230364230743_
                             _tl230363230745_
                             ___splice239842239843_
                             _target230366230748_
                             _tl230368230750_))
                        (___match239877239878_
                         _e230365230740_
                         _hd230364230743_
                         _tl230363230745_
                         ___splice239842239843_
                         _target230366230748_
                         _tl230368230750_))))
                (___match239877239878_
                 _e230365230740_
                 _hd230364230743_
                 _tl230363230745_
                 ___splice239842239843_
                 _target230366230748_
                 _tl230368230750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg230398230849_
                                                       (reverse _xarg230397230822_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230375230777_))
                                                      (___kont239840239841_
                                                       _xarg230398230849_
                                                       _hd230388230807_
                                                       _arg230374230769_)
                                                      (___match239877239878_
                                                       _e230365230740_
                                                       _hd230364230743_
                                                       _tl230363230745_
                                                       ___splice239842239843_
                                                       _target230366230748_
                                                       _tl230368230750_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop230393230817_
                                     _target230390230812_
                                     '())))
                                (___match239877239878_
                                 _e230365230740_
                                 _hd230364230743_
                                 _tl230363230745_
                                 ___splice239842239843_
                                 _target230366230748_
                                 _tl230368230750_))))
                        (___match239877239878_
                         _e230365230740_
                         _hd230364230743_
                         _tl230363230745_
                         ___splice239842239843_
                         _target230366230748_
                         _tl230368230750_))
                    (___match239877239878_
                     _e230365230740_
                     _hd230364230743_
                     _tl230363230745_
                     ___splice239842239843_
                     _target230366230748_
                     _tl230368230750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239877239878_
                                                     _e230365230740_
                                                     _hd230364230743_
                                                     _tl230363230745_
                                                     ___splice239842239843_
                                                     _target230366230748_
                                                     _tl230368230750_))
                                                (___match239877239878_
                                                 _e230365230740_
                                                 _hd230364230743_
                                                 _tl230363230745_
                                                 ___splice239842239843_
                                                 _target230366230748_
                                                 _tl230368230750_))
                                            (___match239877239878_
                                             _e230365230740_
                                             _hd230364230743_
                                             _tl230363230745_
                                             ___splice239842239843_
                                             _target230366230748_
                                             _tl230368230750_))))
                                    (___match239877239878_
                                     _e230365230740_
                                     _hd230364230743_
                                     _tl230363230745_
                                     ___splice239842239843_
                                     _target230366230748_
                                     _tl230368230750_))))
                            (___match239877239878_
                             _e230365230740_
                             _hd230364230743_
                             _tl230363230745_
                             ___splice239842239843_
                             _target230366230748_
                             _tl230368230750_))
                        (___match239877239878_
                         _e230365230740_
                         _hd230364230743_
                         _tl230363230745_
                         ___splice239842239843_
                         _target230366230748_
                         _tl230368230750_))
                    (___match239877239878_
                     _e230365230740_
                     _hd230364230743_
                     _tl230363230745_
                     ___splice239842239843_
                     _target230366230748_
                     _tl230368230750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239877239878_
                                                     _e230365230740_
                                                     _hd230364230743_
                                                     _tl230363230745_
                                                     ___splice239842239843_
                                                     _target230366230748_
                                                     _tl230368230750_))))
                                            (___match239877239878_
                                             _e230365230740_
                                             _hd230364230743_
                                             _tl230363230745_
                                             ___splice239842239843_
                                             _target230366230748_
                                             _tl230368230750_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop230369230753_ _target230366230748_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239838239839_))
                  (let ((_e230365230740_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239838239839_))))
                    (let ((_tl230363230745_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230365230740_)))
                          (_hd230364230743_
                           (let ()
                             (declare (not safe))
                             (##car _e230365230740_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd230364230743_))
                          (let ((___splice239842239843_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd230364230743_
                                    '0))))
                            (let ((_tl230368230750_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice239842239843_ '1)))
                                  (_target230366230748_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice239842239843_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230368230750_))
                                  (___match239865239866_
                                   _e230365230740_
                                   _hd230364230743_
                                   _tl230363230745_
                                   ___splice239842239843_
                                   _target230366230748_
                                   _tl230368230750_)
                                  (___match239877239878_
                                   _e230365230740_
                                   _hd230364230743_
                                   _tl230363230745_
                                   ___splice239842239843_
                                   _target230366230748_
                                   _tl230368230750_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230363230745_))
                              (let ((_e230453230495_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230363230745_))))
                                (let ((_tl230451230500_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230453230495_)))
                                      (_hd230452230498_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230453230495_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230452230498_))
                                      (let ((_e230456230503_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230452230498_))))
                                        (let ((_tl230454230508_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230456230503_)))
                                              (_hd230455230506_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230456230503_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd230455230506_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd230455230506_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl230454230508_))
                                                      (let ((_e230459230511_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl230454230508_))))
                (let ((_tl230457230516_
                       (let () (declare (not safe)) (##cdr _e230459230511_)))
                      (_hd230458230514_
                       (let () (declare (not safe)) (##car _e230459230511_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd230458230514_))
                      (let ((_e230462230519_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd230458230514_))))
                        (let ((_tl230460230524_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230462230519_)))
                              (_hd230461230522_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230462230519_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd230461230522_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd230461230522_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230460230524_))
                                      (let ((_e230465230527_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230460230524_))))
                                        (let ((_tl230463230532_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230465230527_)))
                                              (_hd230464230530_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230465230527_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230463230532_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230457230516_))
                                                  (let ((_e230468230535_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230457230516_))))
                                                    (let ((_tl230466230540_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230468230535_)))
                                                          (_hd230467230538_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230468230535_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd230467230538_))
                                                          (let ((_e230471230543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd230467230538_))))
                    (let ((_tl230469230548_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230471230543_)))
                          (_hd230470230546_
                           (let ()
                             (declare (not safe))
                             (##car _e230471230543_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd230470230546_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd230470230546_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl230469230548_))
                                  (let ((_e230474230551_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl230469230548_))))
                                    (let ((_tl230472230556_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230474230551_)))
                                          (_hd230473230554_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230474230551_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230472230556_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl230466230540_))
                                              (let ((_e230477230559_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl230466230540_))))
                                                (let ((_tl230475230564_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230477230559_)))
                                                      (_hd230476230562_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230477230559_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230475230564_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230451230500_))
                                                          (___kont239850239851_
                                                           _hd230473230554_
                                                           _hd230464230530_
                                                           _hd230364230743_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g230358230482_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g230358230482_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g230358230482_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g230358230482_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230358230482_)))
                              (let () (declare (not safe)) (_g230358230482_)))
                          (let () (declare (not safe)) (_g230358230482_)))))
                  (let () (declare (not safe)) (_g230358230482_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230358230482_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230358230482_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230358230482_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230358230482_)))
                              (let ()
                                (declare (not safe))
                                (_g230358230482_)))))
                      (let () (declare (not safe)) (_g230358230482_)))))
              (let () (declare (not safe)) (_g230358230482_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230358230482_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230358230482_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230358230482_)))))
                              (let ()
                                (declare (not safe))
                                (_g230358230482_))))))
                  (let () (declare (not safe)) (_g230358230482_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form230158_)
        (let* ((_g230160230174_
                (lambda (_g230161230171_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230161230171_))))
               (_g230159230351_
                (lambda (_g230161230177_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230161230177_))
                      (let ((_e230166230179_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230161230177_))))
                        (let ((_hd230165230182_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230166230179_)))
                              (_tl230164230184_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230166230179_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230164230184_))
                              (let ((_e230169230187_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230164230184_))))
                                (let ((_hd230168230190_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230169230187_)))
                                      (_tl230167230192_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230169230187_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230167230192_))
                                      ((lambda (_L230195_ _L230196_)
                                         (let* ((___stx239960239961_ _L230196_)
                                                (_g230211230239_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx239960239961_)))))
                                           (let ((___kont239962239963_
                                                  (lambda (_L230330_)
                                                    (length (let ((__tmp241101
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g230340230343_ _g230341230345_)
                             (let ()
                               (declare (not safe))
                               (cons _g230340230343_ _g230341230345_)))))
                      (declare (not safe))
                      (foldr1 __tmp241101 '() _L230330_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont239966239967_
                                                  (lambda (_L230281_ _L230282_)
                                                    (let ((__tmp241102
                                                           (length (let ((__tmp241103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g230293230296_ _g230294230298_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g230293230296_
                                            _g230294230298_)))))
                             (declare (not safe))
                             (foldr1 __tmp241103 '() _L230282_)))))
              (declare (not safe))
              (cons __tmp241102 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont239970239971_
                                                  (lambda (_L230244_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match239985239986_
                                                     (lambda (___splice239968239969_
                                                              _target230225230257_
                                                              _tl230227230259_)
                                                       (letrec ((_loop230228230262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd230226230265_ _arg230232230267_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd230226230265_))
                               (let ((_e230229230270_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd230226230265_))))
                                 (let ((_lp-tl230231230275_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e230229230270_)))
                                       (_lp-hd230230230273_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e230229230270_))))
                                   (let ((__tmp241104
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd230230230273_
                                                  _arg230232230267_))))
                                     (declare (not safe))
                                     (_loop230228230262_
                                      _lp-tl230231230275_
                                      __tmp241104))))
                               (let ((_arg230233230278_
                                      (reverse _arg230232230267_)))
                                 (___kont239966239967_
                                  _tl230227230259_
                                  _arg230233230278_))))))
                 (let ()
                   (declare (not safe))
                   (_loop230228230262_ _target230225230257_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239979239980_
                                                     (lambda (___splice239964239965_
                                                              _target230214230306_
                                                              _tl230216230308_)
                                                       (letrec ((_loop230217230311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd230215230314_ _arg230221230316_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd230215230314_))
                               (let ((_e230218230319_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd230215230314_))))
                                 (let ((_lp-tl230220230324_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e230218230319_)))
                                       (_lp-hd230219230322_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e230218230319_))))
                                   (let ((__tmp241105
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd230219230322_
                                                  _arg230221230316_))))
                                     (declare (not safe))
                                     (_loop230217230311_
                                      _lp-tl230220230324_
                                      __tmp241105))))
                               (let ((_arg230222230327_
                                      (reverse _arg230221230316_)))
                                 (___kont239962239963_ _arg230222230327_))))))
                 (let ()
                   (declare (not safe))
                   (_loop230217230311_ _target230214230306_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx239960239961_))
                                                   (let ((___splice239964239965_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx239960239961_
                                                             '0))))
                                                     (let ((_tl230216230308_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice239964239965_
                                                               '1)))
                                                           (_target230214230306_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice239964239965_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl230216230308_))
                                                           (___match239979239980_
                                                            ___splice239964239965_
                                                            _target230214230306_
                                                            _tl230216230308_)
                                                           (___match239985239986_
                                                            ___splice239964239965_
                                                            _target230214230306_
                                                            _tl230216230308_))))
                                                   (___kont239970239971_
                                                    ___stx239960239961_))))))
                                       _hd230168230190_
                                       _hd230165230182_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230160230174_ _g230161230177_)))))
                              (let ()
                                (declare (not safe))
                                (_g230160230174_ _g230161230177_)))))
                      (let ()
                        (declare (not safe))
                        (_g230160230174_ _g230161230177_))))))
          (declare (not safe))
          (_g230159230351_ _form230158_))))
    (define gxc#lambda-expr?
      (lambda (_expr230111_)
        (let* ((___stx239988239989_ _expr230111_)
               (_g230114230124_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239988239989_)))))
          (let ((___kont239990239991_ (lambda (_L230144_) '#t))
                (___kont239992239993_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239988239989_))
                (let ((_e230119230136_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239988239989_))))
                  (let ((_tl230117230141_
                         (let () (declare (not safe)) (##cdr _e230119230136_)))
                        (_hd230118230139_
                         (let ()
                           (declare (not safe))
                           (##car _e230119230136_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230118230139_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd230118230139_))
                            (___kont239990239991_ _tl230117230141_)
                            (___kont239992239993_))
                        (___kont239992239993_))))
                (___kont239992239993_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr230064_)
        (let* ((___stx240006240007_ _expr230064_)
               (_g230067230077_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240006240007_)))))
          (let ((___kont240008240009_ (lambda (_L230097_) '#t))
                (___kont240010240011_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240006240007_))
                (let ((_e230072230089_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240006240007_))))
                  (let ((_tl230070230094_
                         (let () (declare (not safe)) (##cdr _e230072230089_)))
                        (_hd230071230092_
                         (let ()
                           (declare (not safe))
                           (##car _e230072230089_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230071230092_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd230071230092_))
                            (___kont240008240009_ _tl230070230094_)
                            (___kont240010240011_))
                        (___kont240010240011_))))
                (___kont240010240011_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr229933_)
        (let* ((___stx240024240025_ _expr229933_)
               (_g229936229966_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240024240025_)))))
          (let ((___kont240026240027_
                 (lambda (_L230034_ _L230035_ _L230036_)
                   (if (let () (declare (not safe)) (gx#identifier? _L230036_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L230035_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L230034_))
                           '#f)
                       '#f)))
                (___kont240028240029_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240024240025_))
                (let ((_e229943229978_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240024240025_))))
                  (let ((_tl229941229983_
                         (let () (declare (not safe)) (##cdr _e229943229978_)))
                        (_hd229942229981_
                         (let ()
                           (declare (not safe))
                           (##car _e229943229978_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd229942229981_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd229942229981_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229941229983_))
                                (let ((_e229946229986_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229941229983_))))
                                  (let ((_tl229944229991_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229946229986_)))
                                        (_hd229945229989_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229946229986_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd229945229989_))
                                        (let ((_e229949229994_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd229945229989_))))
                                          (let ((_tl229947229999_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229949229994_)))
                                                (_hd229948229997_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229949229994_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd229948229997_))
                                                (let ((_e229952230002_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd229948229997_))))
                                                  (let ((_tl229950230007_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229952230002_)))
                                                        (_hd229951230005_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229952230002_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229951230005_))
                                                        (let ((_e229955230010_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229951230005_))))
                  (let ((_tl229953230015_
                         (let () (declare (not safe)) (##cdr _e229955230010_)))
                        (_hd229954230013_
                         (let ()
                           (declare (not safe))
                           (##car _e229955230010_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl229953230015_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229950230007_))
                            (let ((_e229958230018_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229950230007_))))
                              (let ((_tl229956230023_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229958230018_)))
                                    (_hd229957230021_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229958230018_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl229956230023_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229947229999_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229944229991_))
                                            (let ((_e229961230026_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229944229991_))))
                                              (let ((_tl229959230031_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229961230026_)))
                                                    (_hd229960230029_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229961230026_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl229959230031_))
                                                    (___kont240026240027_
                                                     _hd229960230029_
                                                     _hd229957230021_
                                                     _hd229954230013_)
                                                    (___kont240028240029_))))
                                            (___kont240028240029_))
                                        (___kont240028240029_))
                                    (___kont240028240029_))))
                            (___kont240028240029_))
                        (___kont240028240029_))))
                (___kont240028240029_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240028240029_))))
                                        (___kont240028240029_))))
                                (___kont240028240029_))
                            (___kont240028240029_))
                        (___kont240028240029_))))
                (___kont240028240029_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr229258_)
        (let* ((___stx240086240087_ _expr229258_)
               (_g229261229419_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240086240087_)))))
          (let ((___kont240088240089_
                 (lambda (_L229807_
                          _L229808_
                          _L229809_
                          _L229810_
                          _L229811_
                          _L229812_
                          _L229813_
                          _L229814_
                          _L229815_
                          _L229816_
                          _L229817_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L229814_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L229810_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L229809_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L229817_
                                      _L229808_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L229816_
                                          _L229813_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L229811_
                                              _L229807_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L229815_
                                              _L229812_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont240090240091_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240086240087_))
                (let ((_e229276229431_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240086240087_))))
                  (let ((_tl229274229436_
                         (let () (declare (not safe)) (##cdr _e229276229431_)))
                        (_hd229275229434_
                         (let ()
                           (declare (not safe))
                           (##car _e229276229431_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd229275229434_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd229275229434_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229274229436_))
                                (let ((_e229279229439_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229274229436_))))
                                  (let ((_tl229277229444_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229279229439_)))
                                        (_hd229278229442_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229279229439_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd229278229442_))
                                        (let ((_e229282229447_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd229278229442_))))
                                          (let ((_tl229280229452_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229282229447_)))
                                                (_hd229281229450_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229282229447_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd229281229450_))
                                                (let ((_e229285229455_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd229281229450_))))
                                                  (let ((_tl229283229460_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229285229455_)))
                                                        (_hd229284229458_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229285229455_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229284229458_))
                                                        (let ((_e229288229463_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229284229458_))))
                  (let ((_tl229286229468_
                         (let () (declare (not safe)) (##cdr _e229288229463_)))
                        (_hd229287229466_
                         (let ()
                           (declare (not safe))
                           (##car _e229288229463_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl229286229468_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229283229460_))
                            (let ((_e229291229471_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229283229460_))))
                              (let ((_tl229289229476_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229291229471_)))
                                    (_hd229290229474_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229291229471_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd229290229474_))
                                    (let ((_e229294229479_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd229290229474_))))
                                      (let ((_tl229292229484_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229294229479_)))
                                            (_hd229293229482_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229294229479_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd229293229482_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd229293229482_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229292229484_))
                                                    (let ((_e229297229487_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229292229484_))))
                                                      (let ((_tl229295229492_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229297229487_)))
                    (_hd229296229490_
                     (let () (declare (not safe)) (##car _e229297229487_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd229296229490_))
                    (let ((_e229300229495_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd229296229490_))))
                      (let ((_tl229298229500_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229300229495_)))
                            (_hd229299229498_
                             (let ()
                               (declare (not safe))
                               (##car _e229300229495_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd229299229498_))
                            (let ((_e229303229503_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd229299229498_))))
                              (let ((_tl229301229508_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229303229503_)))
                                    (_hd229302229506_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229303229503_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd229302229506_))
                                    (let ((_e229306229511_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd229302229506_))))
                                      (let ((_tl229304229516_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229306229511_)))
                                            (_hd229305229514_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229306229511_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229304229516_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229301229508_))
                                                (let ((_e229309229519_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229301229508_))))
                                                  (let ((_tl229307229524_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229309229519_)))
                                                        (_hd229308229522_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229309229519_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl229307229524_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl229298229500_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl229295229492_))
                        (let ((_e229312229527_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229295229492_))))
                          (let ((_tl229310229532_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229312229527_)))
                                (_hd229311229530_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229312229527_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd229311229530_))
                                (let ((_e229315229535_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd229311229530_))))
                                  (let ((_tl229313229540_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229315229535_)))
                                        (_hd229314229538_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229315229535_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd229314229538_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd229314229538_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229313229540_))
                                                (let ((_e229318229543_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229313229540_))))
                                                  (let ((_tl229316229548_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229318229543_)))
                                                        (_hd229317229546_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229318229543_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229317229546_))
                                                        (let ((_e229321229551_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229317229546_))))
                  (let ((_tl229319229556_
                         (let () (declare (not safe)) (##cdr _e229321229551_)))
                        (_hd229320229554_
                         (let ()
                           (declare (not safe))
                           (##car _e229321229551_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl229316229548_))
                        (let ((_e229324229559_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229316229548_))))
                          (let ((_tl229322229564_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229324229559_)))
                                (_hd229323229562_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229324229559_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd229323229562_))
                                (let ((_e229327229567_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd229323229562_))))
                                  (let ((_tl229325229572_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229327229567_)))
                                        (_hd229326229570_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229327229567_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd229326229570_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd229326229570_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229325229572_))
                                                (let ((_e229330229575_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229325229572_))))
                                                  (let ((_tl229328229580_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229330229575_)))
                                                        (_hd229329229578_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229330229575_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229329229578_))
                                                        (let ((_e229333229583_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229329229578_))))
                  (let ((_tl229331229588_
                         (let () (declare (not safe)) (##cdr _e229333229583_)))
                        (_hd229332229586_
                         (let ()
                           (declare (not safe))
                           (##car _e229333229583_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd229332229586_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd229332229586_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229331229588_))
                                (let ((_e229336229591_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229331229588_))))
                                  (let ((_tl229334229596_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229336229591_)))
                                        (_hd229335229594_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229336229591_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229334229596_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229328229580_))
                                            (let ((_e229339229599_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229328229580_))))
                                              (let ((_tl229337229604_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229339229599_)))
                                                    (_hd229338229602_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229339229599_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd229338229602_))
                                                    (let ((_e229342229607_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd229338229602_))))
                                                      (let ((_tl229340229612_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229342229607_)))
                    (_hd229341229610_
                     (let () (declare (not safe)) (##car _e229342229607_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd229341229610_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd229341229610_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229340229612_))
                            (let ((_e229345229615_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229340229612_))))
                              (let ((_tl229343229620_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229345229615_)))
                                    (_hd229344229618_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229345229615_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl229343229620_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl229337229604_))
                                        (let ((_e229348229623_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl229337229604_))))
                                          (let ((_tl229346229628_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229348229623_)))
                                                (_hd229347229626_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229348229623_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd229347229626_))
                                                (let ((_e229351229631_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd229347229626_))))
                                                  (let ((_tl229349229636_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229351229631_)))
                                                        (_hd229350229634_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229351229631_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd229350229634_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd229350229634_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl229349229636_))
                        (let ((_e229354229639_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229349229636_))))
                          (let ((_tl229352229644_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229354229639_)))
                                (_hd229353229642_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229354229639_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl229352229644_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl229322229564_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229310229532_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229289229476_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229280229452_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229277229444_))
                                                    (let ((_e229357229647_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229277229444_))))
                                                      (let ((_tl229355229652_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229357229647_)))
                    (_hd229356229650_
                     (let () (declare (not safe)) (##car _e229357229647_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd229356229650_))
                    (let ((_e229360229655_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd229356229650_))))
                      (let ((_tl229358229660_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229360229655_)))
                            (_hd229359229658_
                             (let ()
                               (declare (not safe))
                               (##car _e229360229655_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd229359229658_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd229359229658_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl229358229660_))
                                    (let ((_e229363229663_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl229358229660_))))
                                      (let ((_tl229361229668_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229363229663_)))
                                            (_hd229362229666_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229363229663_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229361229668_))
                                            (let ((_e229366229671_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229361229668_))))
                                              (let ((_tl229364229676_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229366229671_)))
                                                    (_hd229365229674_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229366229671_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd229365229674_))
                                                    (let ((_e229369229679_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd229365229674_))))
                                                      (let ((_tl229367229684_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229369229679_)))
                    (_hd229368229682_
                     (let () (declare (not safe)) (##car _e229369229679_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd229368229682_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd229368229682_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229367229684_))
                            (let ((_e229372229687_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229367229684_))))
                              (let ((_tl229370229692_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229372229687_)))
                                    (_hd229371229690_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229372229687_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd229371229690_))
                                    (let ((_e229375229695_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd229371229690_))))
                                      (let ((_tl229373229700_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229375229695_)))
                                            (_hd229374229698_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229375229695_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd229374229698_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd229374229698_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229373229700_))
                                                    (let ((_e229378229703_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229373229700_))))
                                                      (let ((_tl229376229708_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229378229703_)))
                    (_hd229377229706_
                     (let () (declare (not safe)) (##car _e229378229703_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl229376229708_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl229370229692_))
                        (let ((_e229381229711_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229370229692_))))
                          (let ((_tl229379229716_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229381229711_)))
                                (_hd229380229714_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229381229711_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd229380229714_))
                                (let ((_e229384229719_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd229380229714_))))
                                  (let ((_tl229382229724_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229384229719_)))
                                        (_hd229383229722_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229384229719_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd229383229722_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd229383229722_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229382229724_))
                                                (let ((_e229387229727_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229382229724_))))
                                                  (let ((_tl229385229732_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229387229727_)))
                                                        (_hd229386229730_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229387229727_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl229385229732_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl229379229716_))
                                                            (let ((_e229390229735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl229379229716_))))
                      (let ((_tl229388229740_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229390229735_)))
                            (_hd229389229738_
                             (let ()
                               (declare (not safe))
                               (##car _e229390229735_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd229389229738_))
                            (let ((_e229393229743_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd229389229738_))))
                              (let ((_tl229391229748_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229393229743_)))
                                    (_hd229392229746_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229393229743_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd229392229746_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd229392229746_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229391229748_))
                                            (let ((_e229396229751_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229391229748_))))
                                              (let ((_tl229394229756_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229396229751_)))
                                                    (_hd229395229754_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229396229751_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl229394229756_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl229388229740_))
                                                        (let ((_e229399229759_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl229388229740_))))
                  (let ((_tl229397229764_
                         (let () (declare (not safe)) (##cdr _e229399229759_)))
                        (_hd229398229762_
                         (let ()
                           (declare (not safe))
                           (##car _e229399229759_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd229398229762_))
                        (let ((_e229402229767_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd229398229762_))))
                          (let ((_tl229400229772_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229402229767_)))
                                (_hd229401229770_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229402229767_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd229401229770_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd229401229770_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl229400229772_))
                                        (let ((_e229405229775_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl229400229772_))))
                                          (let ((_tl229403229780_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229405229775_)))
                                                (_hd229404229778_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229405229775_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229403229780_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229397229764_))
                                                    (let ((_e229408229783_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229397229764_))))
                                                      (let ((_tl229406229788_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229408229783_)))
                    (_hd229407229786_
                     (let () (declare (not safe)) (##car _e229408229783_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd229407229786_))
                    (let ((_e229411229791_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd229407229786_))))
                      (let ((_tl229409229796_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229411229791_)))
                            (_hd229410229794_
                             (let ()
                               (declare (not safe))
                               (##car _e229411229791_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd229410229794_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd229410229794_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl229409229796_))
                                    (let ((_e229414229799_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl229409229796_))))
                                      (let ((_tl229412229804_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229414229799_)))
                                            (_hd229413229802_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229414229799_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229412229804_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229406229788_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl229364229676_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl229355229652_))
                                                        (___kont240088240089_
                                                         _hd229413229802_
                                                         _hd229404229778_
                                                         _hd229386229730_
                                                         _hd229377229706_
                                                         _hd229362229666_
                                                         _hd229353229642_
                                                         _hd229344229618_
                                                         _hd229335229594_
                                                         _hd229320229554_
                                                         _hd229305229514_
                                                         _hd229287229466_)
                                                        (___kont240090240091_))
                                                    (___kont240090240091_))
                                                (___kont240090240091_))
                                            (___kont240090240091_))))
                                    (___kont240090240091_))
                                (___kont240090240091_))
                            (___kont240090240091_))))
                    (___kont240090240091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240090240091_))
                                                (___kont240090240091_))))
                                        (___kont240090240091_))
                                    (___kont240090240091_))
                                (___kont240090240091_))))
                        (___kont240090240091_))))
                (___kont240090240091_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240090240091_))))
                                            (___kont240090240091_))
                                        (___kont240090240091_))
                                    (___kont240090240091_))))
                            (___kont240090240091_))))
                    (___kont240090240091_))
                (___kont240090240091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240090240091_))
                                            (___kont240090240091_))
                                        (___kont240090240091_))))
                                (___kont240090240091_))))
                        (___kont240090240091_))
                    (___kont240090240091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240090240091_))
                                                (___kont240090240091_))
                                            (___kont240090240091_))))
                                    (___kont240090240091_))))
                            (___kont240090240091_))
                        (___kont240090240091_))
                    (___kont240090240091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240090240091_))))
                                            (___kont240090240091_))))
                                    (___kont240090240091_))
                                (___kont240090240091_))
                            (___kont240090240091_))))
                    (___kont240090240091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240090240091_))
                                                (___kont240090240091_))
                                            (___kont240090240091_))
                                        (___kont240090240091_))
                                    (___kont240090240091_))
                                (___kont240090240091_))))
                        (___kont240090240091_))
                    (___kont240090240091_))
                (___kont240090240091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240090240091_))))
                                        (___kont240090240091_))
                                    (___kont240090240091_))))
                            (___kont240090240091_))
                        (___kont240090240091_))
                    (___kont240090240091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240090240091_))))
                                            (___kont240090240091_))
                                        (___kont240090240091_))))
                                (___kont240090240091_))
                            (___kont240090240091_))
                        (___kont240090240091_))))
                (___kont240090240091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240090240091_))
                                            (___kont240090240091_))
                                        (___kont240090240091_))))
                                (___kont240090240091_))))
                        (___kont240090240091_))))
                (___kont240090240091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240090240091_))
                                            (___kont240090240091_))
                                        (___kont240090240091_))))
                                (___kont240090240091_))))
                        (___kont240090240091_))
                    (___kont240090240091_))
                (___kont240090240091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240090240091_))
                                            (___kont240090240091_))))
                                    (___kont240090240091_))))
                            (___kont240090240091_))))
                    (___kont240090240091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240090240091_))
                                                (___kont240090240091_))
                                            (___kont240090240091_))))
                                    (___kont240090240091_))))
                            (___kont240090240091_))
                        (___kont240090240091_))))
                (___kont240090240091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240090240091_))))
                                        (___kont240090240091_))))
                                (___kont240090240091_))
                            (___kont240090240091_))
                        (___kont240090240091_))))
                (___kont240090240091_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx229000_ _id229001_ _clauses229002_ _gensym?229003_)
        (let _lp229005_ ((_rest229007_ _clauses229002_)
                         (_ids229008_ '())
                         (_impls229009_ '())
                         (_clauses229010_ '()))
          (let* ((_rest229011229019_ _rest229007_)
                 (_else229013229027_
                  (lambda ()
                    (values (reverse _ids229008_)
                            (reverse _impls229009_)
                            (reverse _clauses229010_))))
                 (_K229015229232_
                  (lambda (_rest229030_ _clause229031_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause229031_))
                        (let ((__tmp241161
                               (let ()
                                 (declare (not safe))
                                 (cons _clause229031_ _clauses229010_))))
                          (declare (not safe))
                          (_lp229005_
                           _rest229030_
                           _ids229008_
                           _impls229009_
                           __tmp241161))
                        (let* ((_g229033229044_
                                (lambda (_g229034229041_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g229034229041_))))
                               (_g229032229229_
                                (lambda (_g229034229047_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g229034229047_))
                                      (let ((_e229039229049_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g229034229047_))))
                                        (let ((_hd229038229052_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229039229049_)))
                                              (_tl229037229054_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229039229049_))))
                                          ((lambda (_L229057_ _L229058_)
                                             (let* ((_id229075_
                                                     (let ((__tmp241108
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id229001_)))
                                                           (__tmp241107
                                                            (length _clauses229010_))
                                                           (__tmp241106
                                                            (if _gensym?229003_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp241108
                                                        '"__"
                                                        __tmp241107
                                                        __tmp241106)))
                                                    (_id229077_
                                                     (let ((__tmp241109
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx229000_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id229075_
                                                        __tmp241109)))
                                                    (_impl229079_
                                                     (let ((__tmp241110
                                                            (let ((__tmp241112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp241111
                           (let ()
                             (declare (not safe))
                             (cons _L229058_ _L229057_))))
                      (declare (not safe))
                      (cons __tmp241112 __tmp241111))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp241110 _stx229000_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause229226_
                                                     (let* ((___stx240470240471_
                                                             _L229058_)
                                                            (_g229083229111_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx240470240471_)))))
               (let ((___kont240472240473_
                      (lambda (_L229205_)
                        (let ((__tmp241113
                               (let ((__tmp241114
                                      (let ((__tmp241115
                                             (let ((__tmp241116
                                                    (let ((__tmp241122
                                                           (let ((__tmp241123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id229077_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp241123)))
                  (__tmp241117
                   (let ((__tmp241118
                          (lambda (_g229215229218_ _g229216229220_)
                            (let ((__tmp241119
                                   (let ((__tmp241121
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp241120
                                          (let ()
                                            (declare (not safe))
                                            (cons _g229215229218_ '()))))
                                     (declare (not safe))
                                     (cons __tmp241121 __tmp241120))))
                              (declare (not safe))
                              (cons __tmp241119 _g229216229220_)))))
                     (declare (not safe))
                     (foldr1 __tmp241118 '() _L229205_))))
              (declare (not safe))
              (cons __tmp241122 __tmp241117))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp241116))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp241115
                                         _stx229000_))))
                                 (declare (not safe))
                                 (cons __tmp241114 '()))))
                          (declare (not safe))
                          (cons _L229058_ __tmp241113))))
                     (___kont240476240477_
                      (lambda (_L229156_ _L229157_)
                        (let ((__tmp241124
                               (let ((__tmp241125
                                      (let ((__tmp241126
                                             (let ((__tmp241127
                                                    (let ((__tmp241141
                                                           (let ((__tmp241142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp241142)))
                  (__tmp241128
                   (let ((__tmp241139
                          (let ((__tmp241140
                                 (let ()
                                   (declare (not safe))
                                   (cons _id229077_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp241140)))
                         (__tmp241129
                          (let ((__tmp241135
                                 (let ((__tmp241136
                                        (let ((__tmp241138
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp241137
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L229156_ '()))))
                                          (declare (not safe))
                                          (cons __tmp241138 __tmp241137))))
                                   (declare (not safe))
                                   (cons __tmp241136 '())))
                                (__tmp241130
                                 (let ((__tmp241131
                                        (lambda (_g229168229171_
                                                 _g229169229173_)
                                          (let ((__tmp241132
                                                 (let ((__tmp241134
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp241133
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g229168229171_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp241134
                                                         __tmp241133))))
                                            (declare (not safe))
                                            (cons __tmp241132
                                                  _g229169229173_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp241131 '() _L229157_))))
                            (declare (not safe))
                            (foldr1 cons __tmp241135 __tmp241130))))
                     (declare (not safe))
                     (cons __tmp241139 __tmp241129))))
              (declare (not safe))
              (cons __tmp241141 __tmp241128))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp241127))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp241126
                                         _stx229000_))))
                                 (declare (not safe))
                                 (cons __tmp241125 '()))))
                          (declare (not safe))
                          (cons _L229058_ __tmp241124))))
                     (___kont240480240481_
                      (lambda (_L229116_)
                        (let ((__tmp241143
                               (let ((__tmp241144
                                      (let ((__tmp241145
                                             (let ((__tmp241146
                                                    (let ((__tmp241154
                                                           (let ((__tmp241155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp241155)))
                  (__tmp241147
                   (let ((__tmp241152
                          (let ((__tmp241153
                                 (let ()
                                   (declare (not safe))
                                   (cons _id229077_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp241153)))
                         (__tmp241148
                          (let ((__tmp241149
                                 (let ((__tmp241151
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp241150
                                        (let ()
                                          (declare (not safe))
                                          (cons _L229116_ '()))))
                                   (declare (not safe))
                                   (cons __tmp241151 __tmp241150))))
                            (declare (not safe))
                            (cons __tmp241149 '()))))
                     (declare (not safe))
                     (cons __tmp241152 __tmp241148))))
              (declare (not safe))
              (cons __tmp241154 __tmp241147))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp241146))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp241145
                                         _stx229000_))))
                                 (declare (not safe))
                                 (cons __tmp241144 '()))))
                          (declare (not safe))
                          (cons _L229058_ __tmp241143)))))
                 (let* ((___match240495240496_
                         (lambda (___splice240478240479_
                                  _target229097229132_
                                  _tl229099229134_)
                           (letrec ((_loop229100229137_
                                     (lambda (_hd229098229140_
                                              _arg229104229142_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd229098229140_))
                                           (let ((_e229101229145_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd229098229140_))))
                                             (let ((_lp-tl229103229150_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e229101229145_)))
                                                   (_lp-hd229102229148_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e229101229145_))))
                                               (let ((__tmp241156
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd229102229148_
                                                              _arg229104229142_))))
                                                 (declare (not safe))
                                                 (_loop229100229137_
                                                  _lp-tl229103229150_
                                                  __tmp241156))))
                                           (let ((_arg229105229153_
                                                  (reverse _arg229104229142_)))
                                             (___kont240476240477_
                                              _tl229099229134_
                                              _arg229105229153_))))))
                             (let ()
                               (declare (not safe))
                               (_loop229100229137_
                                _target229097229132_
                                '())))))
                        (___match240489240490_
                         (lambda (___splice240474240475_
                                  _target229086229181_
                                  _tl229088229183_)
                           (letrec ((_loop229089229186_
                                     (lambda (_hd229087229189_
                                              _arg229093229191_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd229087229189_))
                                           (let ((_e229090229194_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd229087229189_))))
                                             (let ((_lp-tl229092229199_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e229090229194_)))
                                                   (_lp-hd229091229197_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e229090229194_))))
                                               (let ((__tmp241157
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd229091229197_
                                                              _arg229093229191_))))
                                                 (declare (not safe))
                                                 (_loop229089229186_
                                                  _lp-tl229092229199_
                                                  __tmp241157))))
                                           (let ((_arg229094229202_
                                                  (reverse _arg229093229191_)))
                                             (___kont240472240473_
                                              _arg229094229202_))))))
                             (let ()
                               (declare (not safe))
                               (_loop229089229186_
                                _target229086229181_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx240470240471_))
                       (let ((___splice240474240475_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx240470240471_
                                 '0))))
                         (let ((_tl229088229183_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice240474240475_ '1)))
                               (_target229086229181_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice240474240475_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229088229183_))
                               (___match240489240490_
                                ___splice240474240475_
                                _target229086229181_
                                _tl229088229183_)
                               (___match240495240496_
                                ___splice240474240475_
                                _target229086229181_
                                _tl229088229183_))))
                       (___kont240480240481_ ___stx240470240471_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp241160
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id229077_
                                                              _ids229008_)))
                                                     (__tmp241159
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl229079_
                                                              _impls229009_)))
                                                     (__tmp241158
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause229226_
                                                              _clauses229010_))))
                                                 (declare (not safe))
                                                 (_lp229005_
                                                  _rest229030_
                                                  __tmp241160
                                                  __tmp241159
                                                  __tmp241158))))
                                           _tl229037229054_
                                           _hd229038229052_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g229033229044_ _g229034229047_))))))
                          (declare (not safe))
                          (_g229032229229_ _clause229031_))))))
            (if (let () (declare (not safe)) (##pair? _rest229011229019_))
                (let ((_hd229016229235_
                       (let ()
                         (declare (not safe))
                         (##car _rest229011229019_)))
                      (_tl229017229237_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest229011229019_))))
                  (let* ((_clause229240_ _hd229016229235_)
                         (_rest229242_ _tl229017229237_))
                    (declare (not safe))
                    (_K229015229232_ _rest229242_ _clause229240_)))
                (let () (declare (not safe)) (_else229013229027_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx229247_ _id229248_ _clauses229249_)
        (let ((_gensym?229251_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx229247_
           _id229248_
           _clauses229249_
           _gensym?229251_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g241163_
        (let ((_g241162_ (let () (declare (not safe)) (##length _g241163_))))
          (cond ((let () (declare (not safe)) (##fx= _g241162_ 3))
                 (apply (lambda (_stx229247_ _id229248_ _clauses229249_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx229247_
                             _id229248_
                             _clauses229249_)))
                        _g241163_))
                ((let () (declare (not safe)) (##fx= _g241162_ 4))
                 (apply (lambda (_stx229253_
                                 _id229254_
                                 _clauses229255_
                                 _gensym?229256_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx229253_
                             _id229254_
                             _clauses229255_
                             _gensym?229256_)))
                        _g241163_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g241163_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx228277_)
        (letrec ((_case-lambda-clause-def228279_
                  (lambda (_id228996_ _impl228997_)
                    (let ((__tmp241164
                           (let ((__tmp241165
                                  (let ((__tmp241168
                                         (let ()
                                           (declare (not safe))
                                           (cons _id228996_ '())))
                                        (__tmp241166
                                         (let ((__tmp241167
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl228997_))))
                                           (declare (not safe))
                                           (cons __tmp241167 '()))))
                                    (declare (not safe))
                                    (cons __tmp241168 __tmp241166))))
                             (declare (not safe))
                             (cons '%#define-values __tmp241165))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp241164 _stx228277_))))
                 (_opt-lambda-dispatch-name228280_
                  (lambda (_id228992_)
                    (if (uninterned-symbol? _id228992_)
                        (let ((_str228994_ (symbol->string _id228992_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str228994_))
                              '"%"
                              _id228992_))
                        _id228992_)))
                 (_kw-lambda-dispatch-name228281_
                  (lambda (_id228987_ _name228988_)
                    (if (uninterned-symbol? _id228987_)
                        (let ((_str228990_ (symbol->string _id228987_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str228990_))
                              _name228988_
                              _id228987_))
                        _id228987_))))
          (let* ((___stx240518240519_ _stx228277_)
                 (_g228286228345_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx240518240519_)))))
            (let ((___kont240520240521_
                   (lambda (_L228896_ _L228897_)
                     (let* ((___stx240498240499_ _L228896_)
                            (_g228914228928_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx240498240499_)))))
                       (let ((___kont240500240501_
                              (lambda (_L228972_) _stx228277_))
                             (___kont240502240503_
                              (lambda (_L228941_)
                                (let ((_g241169_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx228277_
                                          _L228897_
                                          _L228941_))))
                                  (begin
                                    (let ((_g241170_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g241169_)
                                                 (##vector-length _g241169_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g241170_ 3)))
                                          (error "Context expects 3 values"
                                                 _g241170_)))
                                    (let ((_ids228951_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g241169_ 0)))
                                          (_impls228952_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g241169_ 1)))
                                          (_clauses228953_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g241169_ 2))))
                                      (let* ((_g241171_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids228951_))
                                             (_defs228956_
                                              (map _case-lambda-clause-def228279_
                                                   _ids228951_
                                                   _impls228952_)))
                                        (let ((__tmp241173
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L228897_)))
                                              (__tmp241172
                                               (map gxc#identifier-symbol
                                                    _ids228951_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp241173
                                           '" => "
                                           __tmp241172))
                                        (let ((__tmp241174
                                               (let ((__tmp241175
                                                      (let ((__tmp241176
                                                             (let ((__tmp241177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp241178
                                   (let ((__tmp241179
                                          (let ((__tmp241184
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L228897_ '())))
                                                (__tmp241180
                                                 (let ((__tmp241181
                                                        (let ((__tmp241183
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses228953_)))
                      (__tmp241182
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp241183 __tmp241182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp241181 '()))))
                                            (declare (not safe))
                                            (cons __tmp241184 __tmp241180))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp241179))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp241178
                               _stx228277_))))
                       (declare (not safe))
                       (cons __tmp241177 '()))))
                (declare (not safe))
                (foldr1 cons __tmp241176 _defs228956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp241175))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp241174
                                           _stx228277_)))))))))
                         (let ((___match240509240510_
                                (lambda (_e228919228964_
                                         _hd228918228967_
                                         _tl228917228969_)
                                  (let ((_L228972_ _tl228917228969_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L228972_))
                                        (___kont240500240501_ _L228972_)
                                        (___kont240502240503_
                                         _tl228917228969_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx240498240499_))
                               (let ((_e228919228964_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx240498240499_))))
                                 (let ((_tl228917228969_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e228919228964_)))
                                       (_hd228918228967_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e228919228964_))))
                                   (___match240509240510_
                                    _e228919228964_
                                    _hd228918228967_
                                    _tl228917228969_)))
                               (let ()
                                 (declare (not safe))
                                 (_g228914228928_))))))))
                  (___kont240522240523_
                   (lambda (_L228714_ _L228715_)
                     (let* ((_g228731228761_
                             (lambda (_g228732228758_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g228732228758_))))
                            (_g228730228856_
                             (lambda (_g228732228764_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g228732228764_))
                                   (let ((_e228738228766_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g228732228764_))))
                                     (let ((_hd228737228769_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e228738228766_)))
                                           (_tl228736228771_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e228738228766_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl228736228771_))
                                           (let ((_e228741228774_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl228736228771_))))
                                             (let ((_hd228740228777_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e228741228774_)))
                                                   (_tl228739228779_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e228741228774_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd228740228777_))
                                                   (let ((_e228744228782_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd228740228777_))))
                                                     (let ((_hd228743228785_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228744228782_)))
                                                           (_tl228742228787_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228744228782_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd228743228785_))
                                                           (let ((_e228747228790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd228743228785_))))
                     (let ((_hd228746228793_
                            (let ()
                              (declare (not safe))
                              (##car _e228747228790_)))
                           (_tl228745228795_
                            (let ()
                              (declare (not safe))
                              (##cdr _e228747228790_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd228746228793_))
                           (let ((_e228750228798_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd228746228793_))))
                             (let ((_hd228749228801_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e228750228798_)))
                                   (_tl228748228803_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e228750228798_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl228748228803_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl228745228795_))
                                       (let ((_e228753228806_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl228745228795_))))
                                         (let ((_hd228752228809_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228753228806_)))
                                               (_tl228751228811_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228753228806_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl228751228811_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl228742228787_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl228739228779_))
                                                       (let ((_e228756228814_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl228739228779_))))
                 (let ((_hd228755228817_
                        (let () (declare (not safe)) (##car _e228756228814_)))
                       (_tl228754228819_
                        (let () (declare (not safe)) (##cdr _e228756228814_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl228754228819_))
                       ((lambda (_L228822_ _L228823_ _L228824_)
                          (let* ((_lambda-id228848_
                                  (let ((__tmp241187
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L228715_)))
                                        (__tmp241185
                                         (let ((__tmp241186
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L228824_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name228280_
                                            __tmp241186))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp241187
                                     '"__"
                                     __tmp241185)))
                                 (_lambda-id228850_
                                  (let ((__tmp241188
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx228277_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id228848_
                                     __tmp241188)))
                                 (_g241189_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id228850_)))
                                 (_new-case-lambda-expr228853_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L228822_
                                     _L228824_
                                     _lambda-id228850_))))
                            (let ((__tmp241191
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L228715_)))
                                  (__tmp241190
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id228850_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp241191
                               '" => "
                               __tmp241190))
                            (let ((__tmp241192
                                   (let ((__tmp241193
                                          (let ((__tmp241201
                                                 (let ((__tmp241202
                                                        (let ((__tmp241203
                                                               (let ((__tmp241206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id228850_ '())))
                             (__tmp241204
                              (let ((__tmp241205
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L228823_))))
                                (declare (not safe))
                                (cons __tmp241205 '()))))
                         (declare (not safe))
                         (cons __tmp241206 __tmp241204))))
                  (declare (not safe))
                  (cons '%#define-values __tmp241203))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp241202
                                                    _stx228277_)))
                                                (__tmp241194
                                                 (let ((__tmp241195
                                                        (let ((__tmp241196
                                                               (let ((__tmp241197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp241198
                                     (let ((__tmp241200
                                            (let ()
                                              (declare (not safe))
                                              (cons _L228715_ '())))
                                           (__tmp241199
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr228853_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp241200 __tmp241199))))
                                (declare (not safe))
                                (cons '%#define-values __tmp241198))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp241197 _stx228277_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp241196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp241195 '()))))
                                            (declare (not safe))
                                            (cons __tmp241201 __tmp241194))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp241193))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp241192
                               _stx228277_))))
                        _hd228755228817_
                        _hd228752228809_
                        _hd228749228801_)
                       (let ()
                         (declare (not safe))
                         (_g228731228761_ _g228732228764_)))))
               (let () (declare (not safe)) (_g228731228761_ _g228732228764_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228731228761_
                                                      _g228732228764_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228731228761_
                                                  _g228732228764_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g228731228761_ _g228732228764_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g228731228761_ _g228732228764_)))))
                           (let ()
                             (declare (not safe))
                             (_g228731228761_ _g228732228764_)))))
                   (let ()
                     (declare (not safe))
                     (_g228731228761_ _g228732228764_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228731228761_
                                                      _g228732228764_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g228731228761_
                                              _g228732228764_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g228731228761_ _g228732228764_))))))
                       (declare (not safe))
                       (_g228730228856_ _L228714_))))
                  (___kont240524240525_
                   (lambda (_L228428_ _L228429_)
                     (let* ((_g228445228498_
                             (lambda (_g228446228495_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g228446228495_))))
                            (_g228444228674_
                             (lambda (_g228446228501_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g228446228501_))
                                   (let ((_e228454228503_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g228446228501_))))
                                     (let ((_hd228453228506_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e228454228503_)))
                                           (_tl228452228508_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e228454228503_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl228452228508_))
                                           (let ((_e228457228511_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl228452228508_))))
                                             (let ((_hd228456228514_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e228457228511_)))
                                                   (_tl228455228516_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e228457228511_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd228456228514_))
                                                   (let ((_e228460228519_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd228456228514_))))
                                                     (let ((_hd228459228522_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228460228519_)))
                                                           (_tl228458228524_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228460228519_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd228459228522_))
                                                           (let ((_e228463228527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd228459228522_))))
                     (let ((_hd228462228530_
                            (let ()
                              (declare (not safe))
                              (##car _e228463228527_)))
                           (_tl228461228532_
                            (let ()
                              (declare (not safe))
                              (##cdr _e228463228527_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd228462228530_))
                           (let ((_e228466228535_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd228462228530_))))
                             (let ((_hd228465228538_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e228466228535_)))
                                   (_tl228464228540_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e228466228535_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl228464228540_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl228461228532_))
                                       (let ((_e228469228543_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl228461228532_))))
                                         (let ((_hd228468228546_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228469228543_)))
                                               (_tl228467228548_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228469228543_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd228468228546_))
                                               (let ((_e228472228551_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd228468228546_))))
                                                 (let ((_hd228471228554_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e228472228551_)))
                                                       (_tl228470228556_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e228472228551_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl228470228556_))
                                                       (let ((_e228475228559_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl228470228556_))))
                 (let ((_hd228474228562_
                        (let () (declare (not safe)) (##car _e228475228559_)))
                       (_tl228473228564_
                        (let () (declare (not safe)) (##cdr _e228475228559_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd228474228562_))
                       (let ((_e228478228567_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd228474228562_))))
                         (let ((_hd228477228570_
                                (let ()
                                  (declare (not safe))
                                  (##car _e228478228567_)))
                               (_tl228476228572_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e228478228567_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd228477228570_))
                               (let ((_e228481228575_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd228477228570_))))
                                 (let ((_hd228480228578_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e228481228575_)))
                                       (_tl228479228580_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e228481228575_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd228480228578_))
                                       (let ((_e228484228583_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd228480228578_))))
                                         (let ((_hd228483228586_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228484228583_)))
                                               (_tl228482228588_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228484228583_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl228482228588_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl228479228580_))
                                                   (let ((_e228487228591_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl228479228580_))))
                                                     (let ((_hd228486228594_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228487228591_)))
                                                           (_tl228485228596_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228487228591_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl228485228596_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl228476228572_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl228473228564_))
                           (let ((_e228490228599_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl228473228564_))))
                             (let ((_hd228489228602_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e228490228599_)))
                                   (_tl228488228604_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e228490228599_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl228488228604_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl228467228548_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl228458228524_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl228455228516_))
                                               (let ((_e228493228607_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl228455228516_))))
                                                 (let ((_hd228492228610_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e228493228607_)))
                                                       (_tl228491228612_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e228493228607_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl228491228612_))
                                                       ((lambda (_L228615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L228616_
                         _L228617_
                         _L228618_
                         _L228619_)
                  (let* ((_get-kws-id228659_
                          (let ((__tmp241209
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L228429_)))
                                (__tmp241207
                                 (let ((__tmp241208
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L228619_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name228281_
                                    __tmp241208
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp241209 '"__" __tmp241207)))
                         (_get-kws-id228661_
                          (let ((__tmp241210
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx228277_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id228659_
                             __tmp241210)))
                         (_main-id228663_
                          (let ((__tmp241213
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L228429_)))
                                (__tmp241211
                                 (let ((__tmp241212
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L228618_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name228281_
                                    __tmp241212
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp241213 '"__" __tmp241211)))
                         (_main-id228665_
                          (let ((__tmp241214
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx228277_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id228663_
                             __tmp241214)))
                         (_g241215_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id228661_)))
                         (_g241216_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id228665_)))
                         (_new-kw-dispatch228669_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L228615_
                             _L228619_
                             _get-kws-id228661_)))
                         (_new-get-kws228671_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L228616_
                             _L228618_
                             _main-id228665_))))
                    (let ((__tmp241219
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L228429_)))
                          (__tmp241218
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id228661_)))
                          (__tmp241217
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id228665_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp241219
                       '" => "
                       __tmp241218
                       '" => "
                       __tmp241217))
                    (let ((__tmp241220
                           (let ((__tmp241221
                                  (let ((__tmp241234
                                         (let ((__tmp241235
                                                (let ((__tmp241236
                                                       (let ((__tmp241237
                                                              (let ((__tmp241239
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id228665_ '())))
                            (__tmp241238
                             (let ()
                               (declare (not safe))
                               (cons _L228617_ '()))))
                        (declare (not safe))
                        (cons __tmp241239 __tmp241238))))
                 (declare (not safe))
                 (cons '%#define-values __tmp241237))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241236
                                                   _stx228277_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp241235)))
                                        (__tmp241222
                                         (let ((__tmp241229
                                                (let ((__tmp241230
                                                       (let ((__tmp241231
                                                              (let ((__tmp241233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id228661_ '())))
                            (__tmp241232
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws228671_ '()))))
                        (declare (not safe))
                        (cons __tmp241233 __tmp241232))))
                 (declare (not safe))
                 (cons '%#define-values __tmp241231))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241230
                                                   _stx228277_)))
                                               (__tmp241223
                                                (let ((__tmp241224
                                                       (let ((__tmp241225
                                                              (let ((__tmp241226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp241228
                                    (let ()
                                      (declare (not safe))
                                      (cons _L228429_ '())))
                                   (__tmp241227
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch228669_ '()))))
                               (declare (not safe))
                               (cons __tmp241228 __tmp241227))))
                        (declare (not safe))
                        (cons '%#define-values __tmp241226))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp241225 _stx228277_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp241224 '()))))
                                           (declare (not safe))
                                           (cons __tmp241229 __tmp241223))))
                                    (declare (not safe))
                                    (cons __tmp241234 __tmp241222))))
                             (declare (not safe))
                             (cons '%#begin __tmp241221))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp241220 _stx228277_))))
                _hd228492228610_
                _hd228489228602_
                _hd228486228594_
                _hd228483228586_
                _hd228465228538_)
               (let ()
                 (declare (not safe))
                 (_g228445228498_ _g228446228501_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228445228498_
                                                  _g228446228501_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g228445228498_
                                              _g228446228501_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g228445228498_ _g228446228501_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g228445228498_ _g228446228501_)))))
                           (let ()
                             (declare (not safe))
                             (_g228445228498_ _g228446228501_)))
                       (let ()
                         (declare (not safe))
                         (_g228445228498_ _g228446228501_)))
                   (let ()
                     (declare (not safe))
                     (_g228445228498_ _g228446228501_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228445228498_
                                                      _g228446228501_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228445228498_
                                                  _g228446228501_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g228445228498_ _g228446228501_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g228445228498_ _g228446228501_)))))
                       (let ()
                         (declare (not safe))
                         (_g228445228498_ _g228446228501_)))))
               (let ()
                 (declare (not safe))
                 (_g228445228498_ _g228446228501_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228445228498_
                                                  _g228446228501_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g228445228498_ _g228446228501_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g228445228498_ _g228446228501_)))))
                           (let ()
                             (declare (not safe))
                             (_g228445228498_ _g228446228501_)))))
                   (let ()
                     (declare (not safe))
                     (_g228445228498_ _g228446228501_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228445228498_
                                                      _g228446228501_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g228445228498_
                                              _g228446228501_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g228445228498_ _g228446228501_))))))
                       (declare (not safe))
                       (_g228444228674_ _L228428_))))
                  (___kont240526240527_
                   (lambda (_L228374_ _L228375_)
                     (let ((__tmp241240
                            (let ((__tmp241241
                                   (let ((__tmp241242
                                          (let ((__tmp241243
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L228374_))))
                                            (declare (not safe))
                                            (cons __tmp241243 '()))))
                                     (declare (not safe))
                                     (cons _L228375_ __tmp241242))))
                              (declare (not safe))
                              (cons '%#define-values __tmp241241))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp241240 _stx228277_)))))
              (let* ((___match240611240612_
                      (lambda (_e228320228396_
                               _hd228319228399_
                               _tl228318228401_
                               _e228323228404_
                               _hd228322228407_
                               _tl228321228409_
                               _e228326228412_
                               _hd228325228415_
                               _tl228324228417_
                               _e228329228420_
                               _hd228328228423_
                               _tl228327228425_)
                        (let ((_L228428_ _hd228328228423_)
                              (_L228429_ _hd228325228415_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L228429_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L228428_)))
                              (___kont240524240525_ _L228428_ _L228429_)
                              (___kont240526240527_
                               _hd228328228423_
                               _hd228322228407_)))))
                     (___match240583240584_
                      (lambda (_e228306228682_
                               _hd228305228685_
                               _tl228304228687_
                               _e228309228690_
                               _hd228308228693_
                               _tl228307228695_
                               _e228312228698_
                               _hd228311228701_
                               _tl228310228703_
                               _e228315228706_
                               _hd228314228709_
                               _tl228313228711_)
                        (let ((_L228714_ _hd228314228709_)
                              (_L228715_ _hd228311228701_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L228715_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L228714_)))
                              (___kont240522240523_ _L228714_ _L228715_)
                              (___match240611240612_
                               _e228306228682_
                               _hd228305228685_
                               _tl228304228687_
                               _e228309228690_
                               _hd228308228693_
                               _tl228307228695_
                               _e228312228698_
                               _hd228311228701_
                               _tl228310228703_
                               _e228315228706_
                               _hd228314228709_
                               _tl228313228711_)))))
                     (___match240555240556_
                      (lambda (_e228292228864_
                               _hd228291228867_
                               _tl228290228869_
                               _e228295228872_
                               _hd228294228875_
                               _tl228293228877_
                               _e228298228880_
                               _hd228297228883_
                               _tl228296228885_
                               _e228301228888_
                               _hd228300228891_
                               _tl228299228893_)
                        (let ((_L228896_ _hd228300228891_)
                              (_L228897_ _hd228297228883_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L228897_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L228896_)))
                              (___kont240520240521_ _L228896_ _L228897_)
                              (___match240583240584_
                               _e228292228864_
                               _hd228291228867_
                               _tl228290228869_
                               _e228295228872_
                               _hd228294228875_
                               _tl228293228877_
                               _e228298228880_
                               _hd228297228883_
                               _tl228296228885_
                               _e228301228888_
                               _hd228300228891_
                               _tl228299228893_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx240518240519_))
                    (let ((_e228292228864_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx240518240519_))))
                      (let ((_tl228290228869_
                             (let ()
                               (declare (not safe))
                               (##cdr _e228292228864_)))
                            (_hd228291228867_
                             (let ()
                               (declare (not safe))
                               (##car _e228292228864_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl228290228869_))
                            (let ((_e228295228872_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl228290228869_))))
                              (let ((_tl228293228877_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e228295228872_)))
                                    (_hd228294228875_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e228295228872_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd228294228875_))
                                    (let ((_e228298228880_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd228294228875_))))
                                      (let ((_tl228296228885_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e228298228880_)))
                                            (_hd228297228883_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e228298228880_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl228296228885_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl228293228877_))
                                                (let ((_e228301228888_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl228293228877_))))
                                                  (let ((_tl228299228893_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e228301228888_)))
                                                        (_hd228300228891_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e228301228888_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl228299228893_))
                                                        (___match240555240556_
                                                         _e228292228864_
                                                         _hd228291228867_
                                                         _tl228290228869_
                                                         _e228295228872_
                                                         _hd228294228875_
                                                         _tl228293228877_
                                                         _e228298228880_
                                                         _hd228297228883_
                                                         _tl228296228885_
                                                         _e228301228888_
                                                         _hd228300228891_
                                                         _tl228299228893_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g228286228345_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228286228345_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl228293228877_))
                                                (let ((_e228340228366_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl228293228877_))))
                                                  (let ((_tl228338228371_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e228340228366_)))
                                                        (_hd228339228369_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e228340228366_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl228338228371_))
                                                        (___kont240526240527_
                                                         _hd228339228369_
                                                         _hd228294228875_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g228286228345_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228286228345_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl228293228877_))
                                        (let ((_e228340228366_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl228293228877_))))
                                          (let ((_tl228338228371_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e228340228366_)))
                                                (_hd228339228369_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e228340228366_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl228338228371_))
                                                (___kont240526240527_
                                                 _hd228339228369_
                                                 _hd228294228875_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228286228345_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g228286228345_))))))
                            (let () (declare (not safe)) (_g228286228345_)))))
                    (let () (declare (not safe)) (_g228286228345_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx227209_)
        (letrec* ((_bind-e__238914238915_
                   (lambda (_id228261_ _expr228262_ _compile?228263_)
                     (let ((__tmp241246
                            (let ()
                              (declare (not safe))
                              (cons _id228261_ '())))
                           (__tmp241244
                            (let ((__tmp241245
                                   (if _compile?228263_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr228262_))
                                       _expr228262_)))
                              (declare (not safe))
                              (cons __tmp241245 '()))))
                       (declare (not safe))
                       (cons __tmp241246 __tmp241244))))
                  (_bind-e__0__238916238917_
                   (lambda (_id228268_ _expr228269_)
                     (let ((_compile?228271_ '#t))
                       (declare (not safe))
                       (_bind-e__238914238915_
                        _id228268_
                        _expr228269_
                        _compile?228271_))))
                  (_bind-e227211_
                   (lambda _g241248_
                     (let ((_g241247_
                            (let ()
                              (declare (not safe))
                              (##length _g241248_))))
                       (cond ((let () (declare (not safe)) (##fx= _g241247_ 2))
                              (apply (lambda (_id228268_ _expr228269_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__238916238917_
                                          _id228268_
                                          _expr228269_)))
                                     _g241248_))
                             ((let () (declare (not safe)) (##fx= _g241247_ 3))
                              (apply (lambda (_id228273_
                                              _expr228274_
                                              _compile?228275_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__238914238915_
                                          _id228273_
                                          _expr228274_
                                          _compile?228275_)))
                                     _g241248_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g241248_))))))
                  (_compile-bindings227212_
                   (lambda (_bindings227845_)
                     (let _lp227847_ ((_rest227849_ _bindings227845_)
                                      (_lift1227850_ '())
                                      (_lift2227851_ '())
                                      (_bind227852_ '()))
                       (let* ((_rest227853227861_ _rest227849_)
                              (_else227855227869_
                               (lambda ()
                                 (values (reverse _lift1227850_)
                                         (reverse _lift2227851_)
                                         (reverse _bind227852_))))
                              (_K227857228248_
                               (lambda (_rest227872_ _hd227873_)
                                 (let* ((___stx240654240655_ _hd227873_)
                                        (_g227877227913_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx240654240655_)))))
                                   (let ((___kont240656240657_
                                          (lambda (_L228155_ _L228156_)
                                            (let* ((___stx240634240635_
                                                    _L228155_)
                                                   (_g228171228185_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx240634240635_)))))
                                              (let ((___kont240636240637_
                                                     (lambda (_L228233_)
                                                       (let ((__tmp241249
                                                              (let ((__tmp241250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__238914238915_
                                _L228156_
                                _L228155_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp241250 _bind227852_))))
                 (declare (not safe))
                 (_lp227847_
                  _rest227872_
                  _lift1227850_
                  _lift2227851_
                  __tmp241249))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240638240639_
                                                     (lambda (_L228198_)
                                                       (let ((_g241251_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx227209_
                         _L228156_
                         _L228198_
                         '#t))))
                 (begin
                   (let ((_g241252_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g241251_)
                                (##vector-length _g241251_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g241252_ 3)))
                         (error "Context expects 3 values" _g241252_)))
                   (let ((_ids228208_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241251_ 0)))
                         (_impls228209_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241251_ 1)))
                         (_clauses228210_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241251_ 2))))
                     (let* ((_g241253_
                             (for-each gx#core-bind-runtime! _ids228208_))
                            (_xbind228213_
                             (map _bind-e227211_ _ids228208_ _impls228209_))
                            (_expr*228215_
                             (let ((__tmp241255
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses228210_)))
                                   (__tmp241254
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp241255
                                __tmp241254)))
                            (_bind*228217_
                             (let ()
                               (declare (not safe))
                               (_bind-e__238914238915_
                                _L228156_
                                _expr*228215_
                                '#f))))
                       (let ((__tmp241257
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L228156_)))
                             (__tmp241256
                              (map gxc#identifier-symbol _ids228208_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp241257
                          '" => "
                          __tmp241256))
                       (let ((__tmp241259
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2227851_ _xbind228213_)))
                             (__tmp241258
                              (let ()
                                (declare (not safe))
                                (cons _bind*228217_ _bind227852_))))
                         (declare (not safe))
                         (_lp227847_
                          _rest227872_
                          _lift1227850_
                          __tmp241259
                          __tmp241258)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match240645240646_
                                                       (lambda (_e228176228225_
                                                                _hd228175228228_
                                                                _tl228174228230_)
                                                         (let ((_L228233_
                                                                _tl228174228230_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L228233_))
                       (___kont240636240637_ _L228233_)
                       (___kont240638240639_ _tl228174228230_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx240634240635_))
                                                      (let ((_e228176228225_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx240634240635_))))
                (let ((_tl228174228230_
                       (let () (declare (not safe)) (##cdr _e228176228225_)))
                      (_hd228175228228_
                       (let () (declare (not safe)) (##car _e228176228225_))))
                  (___match240645240646_
                   _e228176228225_
                   _hd228175228228_
                   _tl228174228230_)))
              (let () (declare (not safe)) (_g228171228185_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont240658240659_
                                          (lambda (_L227983_ _L227984_)
                                            (let* ((_g227998228028_
                                                    (lambda (_g227999228025_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g227999228025_))))
                                                   (_g227997228123_
                                                    (lambda (_g227999228031_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g227999228031_))
                                                          (let ((_e228005228033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g227999228031_))))
                    (let ((_hd228004228036_
                           (let ()
                             (declare (not safe))
                             (##car _e228005228033_)))
                          (_tl228003228038_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228005228033_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl228003228038_))
                          (let ((_e228008228041_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl228003228038_))))
                            (let ((_hd228007228044_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228008228041_)))
                                  (_tl228006228046_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228008228041_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd228007228044_))
                                  (let ((_e228011228049_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd228007228044_))))
                                    (let ((_hd228010228052_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228011228049_)))
                                          (_tl228009228054_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228011228049_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd228010228052_))
                                          (let ((_e228014228057_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd228010228052_))))
                                            (let ((_hd228013228060_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228014228057_)))
                                                  (_tl228012228062_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228014228057_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd228013228060_))
                                                  (let ((_e228017228065_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd228013228060_))))
                                                    (let ((_hd228016228068_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e228017228065_)))
                                                          (_tl228015228070_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e228017228065_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl228015228070_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl228012228062_))
                      (let ((_e228020228073_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl228012228062_))))
                        (let ((_hd228019228076_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228020228073_)))
                              (_tl228018228078_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228020228073_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl228018228078_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl228009228054_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228006228046_))
                                      (let ((_e228023228081_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228006228046_))))
                                        (let ((_hd228022228084_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228023228081_)))
                                              (_tl228021228086_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228023228081_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228021228086_))
                                              ((lambda (_L228089_
                                                        _L228090_
                                                        _L228091_)
                                                 (let* ((_lambda-id228115_
                                                         (let ((__tmp241261
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L227984_)))
                       (__tmp241260 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp241261 __tmp241260)))
                (_lambda-id228117_
                 (let ((__tmp241262
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx227209_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id228115_ __tmp241262)))
                (_g241263_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id228117_)))
                (_new-case-lambda-expr228120_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L228089_
                    _L228091_
                    _lambda-id228117_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp241265
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L227984_)))
                                                         (__tmp241264
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id228117_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp241265
                                                      '" => "
                                                      __tmp241264))
                                                   (let ((__tmp241268
                                                          (let ((__tmp241269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__238914238915_
                            _L227984_
                            _new-case-lambda-expr228120_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp241269 _rest227872_)))
                 (__tmp241266
                  (let ((__tmp241267
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__238916238917_
                            _lambda-id228117_
                            _L228090_))))
                    (declare (not safe))
                    (cons __tmp241267 _lift1227850_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp227847_
                                                      __tmp241268
                                                      __tmp241266
                                                      _lift2227851_
                                                      _bind227852_))))
                                               _hd228022228084_
                                               _hd228019228076_
                                               _hd228016228068_)
                                              (let ()
                                                (declare (not safe))
                                                (_g227998228028_
                                                 _g227999228031_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227998228028_ _g227999228031_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g227998228028_ _g227999228031_)))
                              (let ()
                                (declare (not safe))
                                (_g227998228028_ _g227999228031_)))))
                      (let ()
                        (declare (not safe))
                        (_g227998228028_ _g227999228031_)))
                  (let ()
                    (declare (not safe))
                    (_g227998228028_ _g227999228031_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g227998228028_
                                                     _g227999228031_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g227998228028_
                                             _g227999228031_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g227998228028_ _g227999228031_)))))
                          (let ()
                            (declare (not safe))
                            (_g227998228028_ _g227999228031_)))))
                  (let ()
                    (declare (not safe))
                    (_g227998228028_ _g227999228031_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g227997228123_ _L227983_))))
                                         (___kont240660240661_
                                          (lambda (_L227934_ _L227935_)
                                            (let ((__tmp241270
                                                   (let ((__tmp241271
                                                          (let ((__tmp241272
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241273
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L227934_))))
                           (declare (not safe))
                           (cons __tmp241273 '()))))
                    (declare (not safe))
                    (cons _L227935_ __tmp241272))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241271
                                                           _bind227852_))))
                                              (declare (not safe))
                                              (_lp227847_
                                               _rest227872_
                                               _lift1227850_
                                               _lift2227851_
                                               __tmp241270)))))
                                     (let* ((___match240705240706_
                                             (lambda (_e227894227959_
                                                      _hd227893227962_
                                                      _tl227892227964_
                                                      _e227897227967_
                                                      _hd227896227970_
                                                      _tl227895227972_
                                                      _e227900227975_
                                                      _hd227899227978_
                                                      _tl227898227980_)
                                               (let ((_L227983_
                                                      _hd227899227978_)
                                                     (_L227984_
                                                      _hd227896227970_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L227984_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L227983_)))
                                                     (___kont240658240659_
                                                      _L227983_
                                                      _L227984_)
                                                     (___kont240660240661_
                                                      _hd227899227978_
                                                      _hd227893227962_)))))
                                            (___match240683240684_
                                             (lambda (_e227883228131_
                                                      _hd227882228134_
                                                      _tl227881228136_
                                                      _e227886228139_
                                                      _hd227885228142_
                                                      _tl227884228144_
                                                      _e227889228147_
                                                      _hd227888228150_
                                                      _tl227887228152_)
                                               (let ((_L228155_
                                                      _hd227888228150_)
                                                     (_L228156_
                                                      _hd227885228142_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L228156_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L228155_)))
                                                     (___kont240656240657_
                                                      _L228155_
                                                      _L228156_)
                                                     (___match240705240706_
                                                      _e227883228131_
                                                      _hd227882228134_
                                                      _tl227881228136_
                                                      _e227886228139_
                                                      _hd227885228142_
                                                      _tl227884228144_
                                                      _e227889228147_
                                                      _hd227888228150_
                                                      _tl227887228152_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx240654240655_))
                                           (let ((_e227883228131_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx240654240655_))))
                                             (let ((_tl227881228136_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e227883228131_)))
                                                   (_hd227882228134_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e227883228131_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd227882228134_))
                                                   (let ((_e227886228139_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd227882228134_))))
                                                     (let ((_tl227884228144_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e227886228139_)))
                                                           (_hd227885228142_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e227886228139_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl227884228144_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl227881228136_))
                       (let ((_e227889228147_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl227881228136_))))
                         (let ((_tl227887228152_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e227889228147_)))
                               (_hd227888228150_
                                (let ()
                                  (declare (not safe))
                                  (##car _e227889228147_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl227887228152_))
                               (___match240683240684_
                                _e227883228131_
                                _hd227882228134_
                                _tl227881228136_
                                _e227886228139_
                                _hd227885228142_
                                _tl227884228144_
                                _e227889228147_
                                _hd227888228150_
                                _tl227887228152_)
                               (let ()
                                 (declare (not safe))
                                 (_g227877227913_)))))
                       (let () (declare (not safe)) (_g227877227913_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl227881228136_))
                       (let ((_e227908227926_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl227881228136_))))
                         (let ((_tl227906227931_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e227908227926_)))
                               (_hd227907227929_
                                (let ()
                                  (declare (not safe))
                                  (##car _e227908227926_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl227906227931_))
                               (___kont240660240661_
                                _hd227907227929_
                                _hd227882228134_)
                               (let ()
                                 (declare (not safe))
                                 (_g227877227913_)))))
                       (let () (declare (not safe)) (_g227877227913_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl227881228136_))
                                                       (let ((_e227908227926_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl227881228136_))))
                 (let ((_tl227906227931_
                        (let () (declare (not safe)) (##cdr _e227908227926_)))
                       (_hd227907227929_
                        (let () (declare (not safe)) (##car _e227908227926_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl227906227931_))
                       (___kont240660240661_ _hd227907227929_ _hd227882228134_)
                       (let () (declare (not safe)) (_g227877227913_)))))
               (let () (declare (not safe)) (_g227877227913_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g227877227913_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest227853227861_))
                             (let ((_hd227858228251_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest227853227861_)))
                                   (_tl227859228253_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest227853227861_))))
                               (let* ((_hd228256_ _hd227858228251_)
                                      (_rest228258_ _tl227859228253_))
                                 (declare (not safe))
                                 (_K227857228248_ _rest228258_ _hd228256_)))
                             (let ()
                               (declare (not safe))
                               (_else227855227869_)))))))
                  (_lift-kw-lambda?227213_
                   (lambda (_bind227769_)
                     (let* ((___stx240722240723_ _bind227769_)
                            (_g227772227789_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx240722240723_)))))
                       (let ((___kont240724240725_
                              (lambda (_L227825_ _L227826_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L227826_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L227825_))
                                    '#f)))
                             (___kont240726240727_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx240722240723_))
                             (let ((_e227778227801_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx240722240723_))))
                               (let ((_tl227776227806_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e227778227801_)))
                                     (_hd227777227804_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e227778227801_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd227777227804_))
                                     (let ((_e227781227809_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd227777227804_))))
                                       (let ((_tl227779227814_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e227781227809_)))
                                             (_hd227780227812_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e227781227809_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl227779227814_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl227776227806_))
                                                 (let ((_e227784227817_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl227776227806_))))
                                                   (let ((_tl227782227822_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e227784227817_)))
                                                         (_hd227783227820_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e227784227817_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl227782227822_))
                                                         (___kont240724240725_
                                                          _hd227783227820_
                                                          _hd227780227812_)
                                                         (___kont240726240727_))))
                                                 (___kont240726240727_))
                                             (___kont240726240727_))))
                                     (___kont240726240727_))))
                             (___kont240726240727_))))))
                  (_lift-kw-lambda-bindings227214_
                   (lambda (_bindings227381_)
                     (let _lp227383_ ((_rest227385_ _bindings227381_)
                                      (_lift1227386_ '())
                                      (_lift2227387_ '())
                                      (_bind227388_ '()))
                       (let* ((_rest227389227397_ _rest227385_)
                              (_else227391227405_
                               (lambda ()
                                 (values (reverse _lift1227386_)
                                         (reverse _lift2227387_)
                                         (reverse _bind227388_))))
                              (_K227393227757_
                               (lambda (_rest227408_ _hd227409_)
                                 (let* ((___stx240752240753_ _hd227409_)
                                        (_g227412227437_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx240752240753_)))))
                                   (let ((___kont240754240755_
                                          (lambda (_L227507_ _L227508_)
                                            (let* ((_g227522227575_
                                                    (lambda (_g227523227572_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g227523227572_))))
                                                   (_g227521227751_
                                                    (lambda (_g227523227578_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g227523227578_))
                                                          (let ((_e227531227580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g227523227578_))))
                    (let ((_hd227530227583_
                           (let ()
                             (declare (not safe))
                             (##car _e227531227580_)))
                          (_tl227529227585_
                           (let ()
                             (declare (not safe))
                             (##cdr _e227531227580_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl227529227585_))
                          (let ((_e227534227588_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl227529227585_))))
                            (let ((_hd227533227591_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e227534227588_)))
                                  (_tl227532227593_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e227534227588_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd227533227591_))
                                  (let ((_e227537227596_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd227533227591_))))
                                    (let ((_hd227536227599_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227537227596_)))
                                          (_tl227535227601_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227537227596_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd227536227599_))
                                          (let ((_e227540227604_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd227536227599_))))
                                            (let ((_hd227539227607_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e227540227604_)))
                                                  (_tl227538227609_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e227540227604_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd227539227607_))
                                                  (let ((_e227543227612_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd227539227607_))))
                                                    (let ((_hd227542227615_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227543227612_)))
                                                          (_tl227541227617_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227543227612_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl227541227617_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl227538227609_))
                      (let ((_e227546227620_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl227538227609_))))
                        (let ((_hd227545227623_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227546227620_)))
                              (_tl227544227625_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227546227620_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd227545227623_))
                              (let ((_e227549227628_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd227545227623_))))
                                (let ((_hd227548227631_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227549227628_)))
                                      (_tl227547227633_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227549227628_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227547227633_))
                                      (let ((_e227552227636_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227547227633_))))
                                        (let ((_hd227551227639_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227552227636_)))
                                              (_tl227550227641_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227552227636_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd227551227639_))
                                              (let ((_e227555227644_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd227551227639_))))
                                                (let ((_hd227554227647_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e227555227644_)))
                                                      (_tl227553227649_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e227555227644_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd227554227647_))
                                                      (let ((_e227558227652_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd227554227647_))))
                (let ((_hd227557227655_
                       (let () (declare (not safe)) (##car _e227558227652_)))
                      (_tl227556227657_
                       (let () (declare (not safe)) (##cdr _e227558227652_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd227557227655_))
                      (let ((_e227561227660_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd227557227655_))))
                        (let ((_hd227560227663_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227561227660_)))
                              (_tl227559227665_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227561227660_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl227559227665_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl227556227657_))
                                  (let ((_e227564227668_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl227556227657_))))
                                    (let ((_hd227563227671_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227564227668_)))
                                          (_tl227562227673_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227564227668_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl227562227673_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227553227649_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl227550227641_))
                                                  (let ((_e227567227676_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl227550227641_))))
                                                    (let ((_hd227566227679_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227567227676_)))
                                                          (_tl227565227681_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227567227676_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl227565227681_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl227544227625_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl227535227601_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227532227593_))
                              (let ((_e227570227684_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227532227593_))))
                                (let ((_hd227569227687_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227570227684_)))
                                      (_tl227568227689_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227570227684_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl227568227689_))
                                      ((lambda (_L227692_
                                                _L227693_
                                                _L227694_
                                                _L227695_
                                                _L227696_)
                                         (let* ((_get-kws-id227736_
                                                 (let ((__tmp241275
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L227508_)))
                                                       (__tmp241274
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241275
                                                    __tmp241274)))
                                                (_get-kws-id227738_
                                                 (let ((__tmp241276
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx227209_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id227736_
                                                    __tmp241276)))
                                                (_main-id227740_
                                                 (let ((__tmp241278
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L227508_)))
                                                       (__tmp241277
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241278
                                                    __tmp241277)))
                                                (_main-id227742_
                                                 (let ((__tmp241279
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx227209_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id227740_
                                                    __tmp241279)))
                                                (_g241280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id227738_)))
                                                (_g241281_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id227742_)))
                                                (_new-kw-dispatch227746_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L227692_
                                                    _L227696_
                                                    _get-kws-id227738_)))
                                                (_new-get-kws227748_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L227693_
                                                    _L227695_
                                                    _main-id227742_))))
                                           (let ((__tmp241284
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L227508_)))
                                                 (__tmp241283
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id227738_)))
                                                 (__tmp241282
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id227742_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp241284
                                              '" => "
                                              __tmp241283
                                              '" => "
                                              __tmp241282))
                                           (let ((__tmp241289
                                                  (let ((__tmp241290
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__238914238915_
                                                            _main-id227742_
                                                            _L227694_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp241290
                                                          _lift1227386_)))
                                                 (__tmp241287
                                                  (let ((__tmp241288
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__238914238915_
                                                            _get-kws-id227738_
                                                            _new-get-kws227748_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp241288
                                                          _lift2227387_)))
                                                 (__tmp241285
                                                  (let ((__tmp241286
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__238914238915_
                                                            _L227508_
                                                            _new-kw-dispatch227746_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp241286
                                                          _bind227388_))))
                                             (declare (not safe))
                                             (_lp227383_
                                              _rest227408_
                                              __tmp241289
                                              __tmp241287
                                              __tmp241285))))
                                       _hd227569227687_
                                       _hd227566227679_
                                       _hd227563227671_
                                       _hd227560227663_
                                       _hd227542227615_)
                                      (let ()
                                        (declare (not safe))
                                        (_g227522227575_ _g227523227578_)))))
                              (let ()
                                (declare (not safe))
                                (_g227522227575_ _g227523227578_)))
                          (let ()
                            (declare (not safe))
                            (_g227522227575_ _g227523227578_)))
                      (let ()
                        (declare (not safe))
                        (_g227522227575_ _g227523227578_)))
                  (let ()
                    (declare (not safe))
                    (_g227522227575_ _g227523227578_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g227522227575_
                                                     _g227523227578_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g227522227575_
                                                 _g227523227578_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g227522227575_
                                             _g227523227578_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g227522227575_ _g227523227578_)))
                              (let ()
                                (declare (not safe))
                                (_g227522227575_ _g227523227578_)))))
                      (let ()
                        (declare (not safe))
                        (_g227522227575_ _g227523227578_)))))
              (let ()
                (declare (not safe))
                (_g227522227575_ _g227523227578_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g227522227575_
                                                 _g227523227578_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227522227575_ _g227523227578_)))))
                              (let ()
                                (declare (not safe))
                                (_g227522227575_ _g227523227578_)))))
                      (let ()
                        (declare (not safe))
                        (_g227522227575_ _g227523227578_)))
                  (let ()
                    (declare (not safe))
                    (_g227522227575_ _g227523227578_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g227522227575_
                                                     _g227523227578_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g227522227575_
                                             _g227523227578_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g227522227575_ _g227523227578_)))))
                          (let ()
                            (declare (not safe))
                            (_g227522227575_ _g227523227578_)))))
                  (let ()
                    (declare (not safe))
                    (_g227522227575_ _g227523227578_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g227521227751_ _L227507_))))
                                         (___kont240756240757_
                                          (lambda (_L227458_ _L227459_)
                                            (let ((__tmp241291
                                                   (let ((__tmp241292
                                                          (let ((__tmp241293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L227458_ '()))))
                    (declare (not safe))
                    (cons _L227459_ __tmp241293))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241292
                                                           _bind227388_))))
                                              (declare (not safe))
                                              (_lp227383_
                                               _rest227408_
                                               _lift1227386_
                                               _lift2227387_
                                               __tmp241291)))))
                                     (let ((___match240779240780_
                                            (lambda (_e227418227483_
                                                     _hd227417227486_
                                                     _tl227416227488_
                                                     _e227421227491_
                                                     _hd227420227494_
                                                     _tl227419227496_
                                                     _e227424227499_
                                                     _hd227423227502_
                                                     _tl227422227504_)
                                              (let ((_L227507_
                                                     _hd227423227502_)
                                                    (_L227508_
                                                     _hd227420227494_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L227508_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L227507_)))
                                                    (___kont240754240755_
                                                     _L227507_
                                                     _L227508_)
                                                    (___kont240756240757_
                                                     _hd227423227502_
                                                     _hd227417227486_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx240752240753_))
                                           (let ((_e227418227483_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx240752240753_))))
                                             (let ((_tl227416227488_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e227418227483_)))
                                                   (_hd227417227486_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e227418227483_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd227417227486_))
                                                   (let ((_e227421227491_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd227417227486_))))
                                                     (let ((_tl227419227496_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e227421227491_)))
                                                           (_hd227420227494_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e227421227491_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl227419227496_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl227416227488_))
                       (let ((_e227424227499_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl227416227488_))))
                         (let ((_tl227422227504_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e227424227499_)))
                               (_hd227423227502_
                                (let ()
                                  (declare (not safe))
                                  (##car _e227424227499_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl227422227504_))
                               (___match240779240780_
                                _e227418227483_
                                _hd227417227486_
                                _tl227416227488_
                                _e227421227491_
                                _hd227420227494_
                                _tl227419227496_
                                _e227424227499_
                                _hd227423227502_
                                _tl227422227504_)
                               (let ()
                                 (declare (not safe))
                                 (_g227412227437_)))))
                       (let () (declare (not safe)) (_g227412227437_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl227416227488_))
                       (let ((_e227432227450_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl227416227488_))))
                         (let ((_tl227430227455_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e227432227450_)))
                               (_hd227431227453_
                                (let ()
                                  (declare (not safe))
                                  (##car _e227432227450_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl227430227455_))
                               (___kont240756240757_
                                _hd227431227453_
                                _hd227417227486_)
                               (let ()
                                 (declare (not safe))
                                 (_g227412227437_)))))
                       (let () (declare (not safe)) (_g227412227437_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl227416227488_))
                                                       (let ((_e227432227450_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl227416227488_))))
                 (let ((_tl227430227455_
                        (let () (declare (not safe)) (##cdr _e227432227450_)))
                       (_hd227431227453_
                        (let () (declare (not safe)) (##car _e227432227450_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl227430227455_))
                       (___kont240756240757_ _hd227431227453_ _hd227417227486_)
                       (let () (declare (not safe)) (_g227412227437_)))))
               (let () (declare (not safe)) (_g227412227437_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g227412227437_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest227389227397_))
                             (let ((_hd227394227760_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest227389227397_)))
                                   (_tl227395227762_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest227389227397_))))
                               (let* ((_hd227765_ _hd227394227760_)
                                      (_rest227767_ _tl227395227762_))
                                 (declare (not safe))
                                 (_K227393227757_ _rest227767_ _hd227765_)))
                             (let ()
                               (declare (not safe))
                               (_else227391227405_))))))))
          (let* ((___stx240796240797_ _stx227209_)
                 (_g227217227243_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx240796240797_)))))
            (let ((___kont240798240799_
                   (lambda (_L227303_ _L227304_)
                     (let ((__tmp241295
                            (lambda ()
                              (if (let ((__tmp241322
                                         (let ((__tmp241323
                                                (lambda (_g227332227335_
                                                         _g227333227337_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g227332227335_
                                                          _g227333227337_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp241323
                                                   '()
                                                   _L227304_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?227213_
                                            __tmp241322))
                                  (let ((_g241309_
                                         (let ((__tmp241311
                                                (let ((__tmp241312
                                                       (lambda (_g227339227342_
                                                                _g227340227344_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g227339227342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g227340227344_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp241312
                                                          '()
                                                          _L227304_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings227214_
                                            __tmp241311))))
                                    (begin
                                      (let ((_g241310_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g241309_)
                                                   (##vector-length _g241309_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g241310_ 3)))
                                            (error "Context expects 3 values"
                                                   _g241310_)))
                                      (let ((_lift1227347_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241309_ 0)))
                                            (_lift2227348_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241309_ 1)))
                                            (_hd227349_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241309_ 2))))
                                        (let* ((_expr227351_
                                                (let ((__tmp241313
                                                       (let ((__tmp241314
                                                              (let ((__tmp241315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L227303_ '()))))
                        (declare (not safe))
                        (cons _hd227349_ __tmp241315))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241314))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241313
                                                   _stx227209_)))
                                               (_expr227353_
                                                (let ((__tmp241316
                                                       (let ((__tmp241317
                                                              (let ((__tmp241318
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr227351_ '()))))
                        (declare (not safe))
                        (cons _lift2227348_ __tmp241318))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241317))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241316
                                                   _stx227209_)))
                                               (_expr227355_
                                                (let ((__tmp241319
                                                       (let ((__tmp241320
                                                              (let ((__tmp241321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr227353_ '()))))
                        (declare (not safe))
                        (cons _lift1227347_ __tmp241321))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241320))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241319
                                                   _stx227209_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr227355_))))))
                                  (let ((_g241296_
                                         (let ((__tmp241298
                                                (let ((__tmp241299
                                                       (lambda (_g227357227360_
                                                                _g227358227362_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g227357227360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g227358227362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp241299
                                                          '()
                                                          _L227304_))))
                                           (declare (not safe))
                                           (_compile-bindings227212_
                                            __tmp241298))))
                                    (begin
                                      (let ((_g241297_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g241296_)
                                                   (##vector-length _g241296_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g241297_ 3)))
                                            (error "Context expects 3 values"
                                                   _g241297_)))
                                      (let ((_lift1227365_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241296_ 0)))
                                            (_lift2227366_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241296_ 1)))
                                            (_hd227367_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241296_ 2))))
                                        (let* ((_body227369_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L227303_)))
                                               (_expr227371_
                                                (let ((__tmp241300
                                                       (let ((__tmp241301
                                                              (let ((__tmp241302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body227369_ '()))))
                        (declare (not safe))
                        (cons _hd227367_ __tmp241302))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241301))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241300
                                                   _stx227209_)))
                                               (_expr227373_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2227366_))
                                                    _expr227371_
                                                    (let ((__tmp241303
                                                           (let ((__tmp241304
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241305
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr227371_ '()))))
                            (declare (not safe))
                            (cons _lift2227366_ __tmp241305))))
                     (declare (not safe))
                     (cons '%#let-values __tmp241304))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp241303 _stx227209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr227375_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1227365_))
                                                    _expr227373_
                                                    (let ((__tmp241306
                                                           (let ((__tmp241307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241308
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr227373_ '()))))
                            (declare (not safe))
                            (cons _lift1227365_ __tmp241308))))
                     (declare (not safe))
                     (cons '%#let-values __tmp241307))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp241306 _stx227209_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr227375_)))))))
                           (__tmp241294
                            (let ((__obj241009
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj241009)
                              __obj241009)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp241295
                        gx#current-expander-context
                        __tmp241294))))
                  (___kont240802240803_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx227209_)))))
              (let ((___match240823240824_
                     (lambda (_e227223227255_
                              _hd227222227258_
                              _tl227221227260_
                              _e227226227263_
                              _hd227225227266_
                              _tl227224227268_
                              ___splice240800240801_
                              _target227227227271_
                              _tl227229227273_)
                       (letrec ((_loop227230227276_
                                 (lambda (_hd227228227279_ _bind227234227281_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd227228227279_))
                                       (let ((_e227231227284_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd227228227279_))))
                                         (let ((_lp-tl227233227289_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e227231227284_)))
                                               (_lp-hd227232227287_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e227231227284_))))
                                           (let ((__tmp241326
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd227232227287_
                                                          _bind227234227281_))))
                                             (declare (not safe))
                                             (_loop227230227276_
                                              _lp-tl227233227289_
                                              __tmp241326))))
                                       (let ((_bind227235227292_
                                              (reverse _bind227234227281_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl227224227268_))
                                             (let ((_e227238227295_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl227224227268_))))
                                               (let ((_tl227236227300_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e227238227295_)))
                                                     (_hd227237227298_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e227238227295_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl227236227300_))
                                                     (let ((_L227303_
                                                            _hd227237227298_)
                                                           (_L227304_
                                                            _bind227235227292_))
                                                       (if (let ((__tmp241324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241325
                                 (lambda (_g227324227327_ _g227325227329_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g227324227327_ _g227325227329_)))))
                            (declare (not safe))
                            (foldr1 __tmp241325 '() _L227304_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp241324))
                   (___kont240798240799_ _L227303_ _L227304_)
                   (___kont240802240803_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont240802240803_))))
                                             (___kont240802240803_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop227230227276_ _target227227227271_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx240796240797_))
                    (let ((_e227223227255_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx240796240797_))))
                      (let ((_tl227221227260_
                             (let ()
                               (declare (not safe))
                               (##cdr _e227223227255_)))
                            (_hd227222227258_
                             (let ()
                               (declare (not safe))
                               (##car _e227223227255_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl227221227260_))
                            (let ((_e227226227263_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl227221227260_))))
                              (let ((_tl227224227268_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e227226227263_)))
                                    (_hd227225227266_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e227226227263_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd227225227266_))
                                    (let ((___splice240800240801_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd227225227266_
                                              '0))))
                                      (let ((_tl227229227273_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice240800240801_
                                                '1)))
                                            (_target227227227271_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice240800240801_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl227229227273_))
                                            (___match240823240824_
                                             _e227223227255_
                                             _hd227222227258_
                                             _tl227221227260_
                                             _e227226227263_
                                             _hd227225227266_
                                             _tl227224227268_
                                             ___splice240800240801_
                                             _target227227227271_
                                             _tl227229227273_)
                                            (___kont240802240803_))))
                                    (___kont240802240803_))))
                            (___kont240802240803_))))
                    (___kont240802240803_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx226353_)
        (letrec* ((_bind-e__238919238920_
                   (lambda (_id227193_ _expr227194_ _compile?227195_)
                     (let ((__tmp241329
                            (let ()
                              (declare (not safe))
                              (cons _id227193_ '())))
                           (__tmp241327
                            (let ((__tmp241328
                                   (if _compile?227195_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr227194_))
                                       _expr227194_)))
                              (declare (not safe))
                              (cons __tmp241328 '()))))
                       (declare (not safe))
                       (cons __tmp241329 __tmp241327))))
                  (_bind-e__0__238921238922_
                   (lambda (_id227200_ _expr227201_)
                     (let ((_compile?227203_ '#t))
                       (declare (not safe))
                       (_bind-e__238919238920_
                        _id227200_
                        _expr227201_
                        _compile?227203_))))
                  (_bind-e226355_
                   (lambda _g241331_
                     (let ((_g241330_
                            (let ()
                              (declare (not safe))
                              (##length _g241331_))))
                       (cond ((let () (declare (not safe)) (##fx= _g241330_ 2))
                              (apply (lambda (_id227200_ _expr227201_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__238921238922_
                                          _id227200_
                                          _expr227201_)))
                                     _g241331_))
                             ((let () (declare (not safe)) (##fx= _g241330_ 3))
                              (apply (lambda (_id227205_
                                              _expr227206_
                                              _compile?227207_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__238919238920_
                                          _id227205_
                                          _expr227206_
                                          _compile?227207_)))
                                     _g241331_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g241331_))))))
                  (_compile-bindings226356_
                   (lambda (_rest226491_)
                     (let _lp226493_ ((_rest226495_ _rest226491_)
                                      (_bind226496_ '()))
                       (let* ((_rest226497226505_ _rest226495_)
                              (_else226499226513_
                               (lambda () (reverse _bind226496_)))
                              (_K226501227180_
                               (lambda (_rest226516_ _hd226517_)
                                 (let* ((___stx240846240847_ _hd226517_)
                                        (_g226522226569_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx240846240847_)))))
                                   (let ((___kont240848240849_
                                          (lambda (_L227087_ _L227088_)
                                            (let* ((___stx240826240827_
                                                    _L227087_)
                                                   (_g227103227117_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx240826240827_)))))
                                              (let ((___kont240828240829_
                                                     (lambda (_L227165_)
                                                       (let ((__tmp241332
                                                              (let ((__tmp241333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__238919238920_
                                _L227088_
                                _L227087_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp241333 _bind226496_))))
                 (declare (not safe))
                 (_lp226493_ _rest226516_ __tmp241332))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240830240831_
                                                     (lambda (_L227130_)
                                                       (let ((_g241334_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx226353_
                         _L227088_
                         _L227130_
                         '#t))))
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
                         (error "Context expects 3 values" _g241335_)))
                   (let ((_ids227140_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241334_ 0)))
                         (_impls227141_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241334_ 1)))
                         (_clauses227142_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241334_ 2))))
                     (let* ((_g241336_
                             (for-each gx#core-bind-runtime! _ids227140_))
                            (_xbind227145_
                             (map _bind-e226355_ _ids227140_ _impls227141_))
                            (_expr*227147_
                             (let ((__tmp241338
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses227142_)))
                                   (__tmp241337
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp241338
                                __tmp241337)))
                            (_bind*227149_
                             (let ()
                               (declare (not safe))
                               (_bind-e__238919238920_
                                _L227088_
                                _expr*227147_
                                '#f))))
                       (let ((__tmp241340
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L227088_)))
                             (__tmp241339
                              (map gxc#identifier-symbol _ids227140_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp241340
                          '" => "
                          __tmp241339))
                       (let ((__tmp241341
                              (let ((__tmp241342
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind226496_
                                               _xbind227145_))))
                                (declare (not safe))
                                (cons _bind*227149_ __tmp241342))))
                         (declare (not safe))
                         (_lp226493_ _rest226516_ __tmp241341)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match240837240838_
                                                       (lambda (_e227108227157_
                                                                _hd227107227160_
                                                                _tl227106227162_)
                                                         (let ((_L227165_
                                                                _tl227106227162_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L227165_))
                       (___kont240828240829_ _L227165_)
                       (___kont240830240831_ _tl227106227162_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx240826240827_))
                                                      (let ((_e227108227157_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx240826240827_))))
                (let ((_tl227106227162_
                       (let () (declare (not safe)) (##cdr _e227108227157_)))
                      (_hd227107227160_
                       (let () (declare (not safe)) (##car _e227108227157_))))
                  (___match240837240838_
                   _e227108227157_
                   _hd227107227160_
                   _tl227106227162_)))
              (let () (declare (not safe)) (_g227103227117_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont240850240851_
                                          (lambda (_L226915_ _L226916_)
                                            (let* ((_g226930226960_
                                                    (lambda (_g226931226957_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g226931226957_))))
                                                   (_g226929227055_
                                                    (lambda (_g226931226963_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g226931226963_))
                                                          (let ((_e226937226965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g226931226963_))))
                    (let ((_hd226936226968_
                           (let ()
                             (declare (not safe))
                             (##car _e226937226965_)))
                          (_tl226935226970_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226937226965_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl226935226970_))
                          (let ((_e226940226973_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl226935226970_))))
                            (let ((_hd226939226976_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226940226973_)))
                                  (_tl226938226978_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226940226973_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd226939226976_))
                                  (let ((_e226943226981_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd226939226976_))))
                                    (let ((_hd226942226984_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226943226981_)))
                                          (_tl226941226986_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226943226981_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd226942226984_))
                                          (let ((_e226946226989_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd226942226984_))))
                                            (let ((_hd226945226992_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e226946226989_)))
                                                  (_tl226944226994_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e226946226989_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd226945226992_))
                                                  (let ((_e226949226997_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd226945226992_))))
                                                    (let ((_hd226948227000_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e226949226997_)))
                                                          (_tl226947227002_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e226949226997_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl226947227002_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl226944226994_))
                      (let ((_e226952227005_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl226944226994_))))
                        (let ((_hd226951227008_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226952227005_)))
                              (_tl226950227010_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226952227005_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl226950227010_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl226941226986_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl226938226978_))
                                      (let ((_e226955227013_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl226938226978_))))
                                        (let ((_hd226954227016_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226955227013_)))
                                              (_tl226953227018_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226955227013_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl226953227018_))
                                              ((lambda (_L227021_
                                                        _L227022_
                                                        _L227023_)
                                                 (let* ((_lambda-id227047_
                                                         (let ((__tmp241344
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L226916_)))
                       (__tmp241343 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp241344 __tmp241343)))
                (_lambda-id227049_
                 (let ((__tmp241345
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx226353_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id227047_ __tmp241345)))
                (_g241346_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id227049_)))
                (_new-case-lambda-expr227052_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L227021_
                    _L227023_
                    _lambda-id227049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp241348
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L226916_)))
                                                         (__tmp241347
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id227049_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp241348
                                                      '" => "
                                                      __tmp241347))
                                                   (let ((__tmp241351
                                                          (let ((__tmp241352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__238919238920_
                            _L226916_
                            _new-case-lambda-expr227052_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp241352 _rest226516_)))
                 (__tmp241349
                  (let ((__tmp241350
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__238921238922_
                            _lambda-id227049_
                            _L227022_))))
                    (declare (not safe))
                    (cons __tmp241350 _bind226496_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp226493_
                                                      __tmp241351
                                                      __tmp241349))))
                                               _hd226954227016_
                                               _hd226951227008_
                                               _hd226948227000_)
                                              (let ()
                                                (declare (not safe))
                                                (_g226930226960_
                                                 _g226931226963_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g226930226960_ _g226931226963_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g226930226960_ _g226931226963_)))
                              (let ()
                                (declare (not safe))
                                (_g226930226960_ _g226931226963_)))))
                      (let ()
                        (declare (not safe))
                        (_g226930226960_ _g226931226963_)))
                  (let ()
                    (declare (not safe))
                    (_g226930226960_ _g226931226963_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226930226960_
                                                     _g226931226963_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g226930226960_
                                             _g226931226963_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226930226960_ _g226931226963_)))))
                          (let ()
                            (declare (not safe))
                            (_g226930226960_ _g226931226963_)))))
                  (let ()
                    (declare (not safe))
                    (_g226930226960_ _g226931226963_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g226929227055_ _L226915_))))
                                         (___kont240852240853_
                                          (lambda (_L226639_ _L226640_)
                                            (let* ((_g226654226707_
                                                    (lambda (_g226655226704_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g226655226704_))))
                                                   (_g226653226883_
                                                    (lambda (_g226655226710_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g226655226710_))
                                                          (let ((_e226663226712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g226655226710_))))
                    (let ((_hd226662226715_
                           (let ()
                             (declare (not safe))
                             (##car _e226663226712_)))
                          (_tl226661226717_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226663226712_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl226661226717_))
                          (let ((_e226666226720_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl226661226717_))))
                            (let ((_hd226665226723_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226666226720_)))
                                  (_tl226664226725_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226666226720_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd226665226723_))
                                  (let ((_e226669226728_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd226665226723_))))
                                    (let ((_hd226668226731_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226669226728_)))
                                          (_tl226667226733_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226669226728_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd226668226731_))
                                          (let ((_e226672226736_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd226668226731_))))
                                            (let ((_hd226671226739_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e226672226736_)))
                                                  (_tl226670226741_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e226672226736_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd226671226739_))
                                                  (let ((_e226675226744_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd226671226739_))))
                                                    (let ((_hd226674226747_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e226675226744_)))
                                                          (_tl226673226749_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e226675226744_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl226673226749_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl226670226741_))
                      (let ((_e226678226752_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl226670226741_))))
                        (let ((_hd226677226755_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226678226752_)))
                              (_tl226676226757_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226678226752_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd226677226755_))
                              (let ((_e226681226760_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd226677226755_))))
                                (let ((_hd226680226763_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226681226760_)))
                                      (_tl226679226765_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226681226760_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl226679226765_))
                                      (let ((_e226684226768_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl226679226765_))))
                                        (let ((_hd226683226771_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226684226768_)))
                                              (_tl226682226773_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226684226768_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd226683226771_))
                                              (let ((_e226687226776_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd226683226771_))))
                                                (let ((_hd226686226779_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e226687226776_)))
                                                      (_tl226685226781_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e226687226776_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd226686226779_))
                                                      (let ((_e226690226784_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd226686226779_))))
                (let ((_hd226689226787_
                       (let () (declare (not safe)) (##car _e226690226784_)))
                      (_tl226688226789_
                       (let () (declare (not safe)) (##cdr _e226690226784_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd226689226787_))
                      (let ((_e226693226792_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd226689226787_))))
                        (let ((_hd226692226795_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226693226792_)))
                              (_tl226691226797_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226693226792_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl226691226797_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl226688226789_))
                                  (let ((_e226696226800_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl226688226789_))))
                                    (let ((_hd226695226803_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226696226800_)))
                                          (_tl226694226805_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226696226800_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl226694226805_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl226685226781_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl226682226773_))
                                                  (let ((_e226699226808_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl226682226773_))))
                                                    (let ((_hd226698226811_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e226699226808_)))
                                                          (_tl226697226813_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e226699226808_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl226697226813_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl226676226757_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl226667226733_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226664226725_))
                              (let ((_e226702226816_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl226664226725_))))
                                (let ((_hd226701226819_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226702226816_)))
                                      (_tl226700226821_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226702226816_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226700226821_))
                                      ((lambda (_L226824_
                                                _L226825_
                                                _L226826_
                                                _L226827_
                                                _L226828_)
                                         (let* ((_get-kws-id226868_
                                                 (let ((__tmp241354
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L226640_)))
                                                       (__tmp241353
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241354
                                                    __tmp241353)))
                                                (_get-kws-id226870_
                                                 (let ((__tmp241355
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx226353_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id226868_
                                                    __tmp241355)))
                                                (_main-id226872_
                                                 (let ((__tmp241357
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L226640_)))
                                                       (__tmp241356
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241357
                                                    __tmp241356)))
                                                (_main-id226874_
                                                 (let ((__tmp241358
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx226353_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id226872_
                                                    __tmp241358)))
                                                (_g241359_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id226870_)))
                                                (_g241360_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id226874_)))
                                                (_new-kw-dispatch226878_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L226824_
                                                    _L226828_
                                                    _get-kws-id226870_)))
                                                (_new-get-kws226880_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L226825_
                                                    _L226827_
                                                    _main-id226874_))))
                                           (let ((__tmp241363
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L226640_)))
                                                 (__tmp241362
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id226870_)))
                                                 (__tmp241361
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id226874_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp241363
                                              '" => "
                                              __tmp241362
                                              '" => "
                                              __tmp241361))
                                           (let ((__tmp241364
                                                  (let ((__tmp241369
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__238919238920_
                                                            _main-id226874_
                                                            _L226826_
                                                            '#f)))
                                                        (__tmp241365
                                                         (let ((__tmp241368
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__238919238920_
                           _get-kws-id226870_
                           _new-get-kws226880_
                           '#f)))
                       (__tmp241366
                        (let ((__tmp241367
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__238919238920_
                                  _L226640_
                                  _new-kw-dispatch226878_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp241367 _rest226516_))))
                   (declare (not safe))
                   (cons __tmp241368 __tmp241366))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp241369
                                                          __tmp241365))))
                                             (declare (not safe))
                                             (_lp226493_
                                              __tmp241364
                                              _bind226496_))))
                                       _hd226701226819_
                                       _hd226698226811_
                                       _hd226695226803_
                                       _hd226692226795_
                                       _hd226674226747_)
                                      (let ()
                                        (declare (not safe))
                                        (_g226654226707_ _g226655226710_)))))
                              (let ()
                                (declare (not safe))
                                (_g226654226707_ _g226655226710_)))
                          (let ()
                            (declare (not safe))
                            (_g226654226707_ _g226655226710_)))
                      (let ()
                        (declare (not safe))
                        (_g226654226707_ _g226655226710_)))
                  (let ()
                    (declare (not safe))
                    (_g226654226707_ _g226655226710_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226654226707_
                                                     _g226655226710_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g226654226707_
                                                 _g226655226710_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g226654226707_
                                             _g226655226710_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226654226707_ _g226655226710_)))
                              (let ()
                                (declare (not safe))
                                (_g226654226707_ _g226655226710_)))))
                      (let ()
                        (declare (not safe))
                        (_g226654226707_ _g226655226710_)))))
              (let ()
                (declare (not safe))
                (_g226654226707_ _g226655226710_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g226654226707_
                                                 _g226655226710_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g226654226707_ _g226655226710_)))))
                              (let ()
                                (declare (not safe))
                                (_g226654226707_ _g226655226710_)))))
                      (let ()
                        (declare (not safe))
                        (_g226654226707_ _g226655226710_)))
                  (let ()
                    (declare (not safe))
                    (_g226654226707_ _g226655226710_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226654226707_
                                                     _g226655226710_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g226654226707_
                                             _g226655226710_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226654226707_ _g226655226710_)))))
                          (let ()
                            (declare (not safe))
                            (_g226654226707_ _g226655226710_)))))
                  (let ()
                    (declare (not safe))
                    (_g226654226707_ _g226655226710_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g226653226883_ _L226639_))))
                                         (___kont240854240855_
                                          (lambda (_L226590_ _L226591_)
                                            (let ((__tmp241370
                                                   (let ((__tmp241371
                                                          (let ((__tmp241372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241373
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L226590_))))
                           (declare (not safe))
                           (cons __tmp241373 '()))))
                    (declare (not safe))
                    (cons _L226591_ __tmp241372))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241371
                                                           _bind226496_))))
                                              (declare (not safe))
                                              (_lp226493_
                                               _rest226516_
                                               __tmp241370)))))
                                     (let* ((___match240921240922_
                                             (lambda (_e226550226615_
                                                      _hd226549226618_
                                                      _tl226548226620_
                                                      _e226553226623_
                                                      _hd226552226626_
                                                      _tl226551226628_
                                                      _e226556226631_
                                                      _hd226555226634_
                                                      _tl226554226636_)
                                               (let ((_L226639_
                                                      _hd226555226634_)
                                                     (_L226640_
                                                      _hd226552226626_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L226640_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L226639_)))
                                                     (___kont240852240853_
                                                      _L226639_
                                                      _L226640_)
                                                     (___kont240854240855_
                                                      _hd226555226634_
                                                      _hd226549226618_)))))
                                            (___match240899240900_
                                             (lambda (_e226539226891_
                                                      _hd226538226894_
                                                      _tl226537226896_
                                                      _e226542226899_
                                                      _hd226541226902_
                                                      _tl226540226904_
                                                      _e226545226907_
                                                      _hd226544226910_
                                                      _tl226543226912_)
                                               (let ((_L226915_
                                                      _hd226544226910_)
                                                     (_L226916_
                                                      _hd226541226902_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L226916_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L226915_)))
                                                     (___kont240850240851_
                                                      _L226915_
                                                      _L226916_)
                                                     (___match240921240922_
                                                      _e226539226891_
                                                      _hd226538226894_
                                                      _tl226537226896_
                                                      _e226542226899_
                                                      _hd226541226902_
                                                      _tl226540226904_
                                                      _e226545226907_
                                                      _hd226544226910_
                                                      _tl226543226912_)))))
                                            (___match240877240878_
                                             (lambda (_e226528227063_
                                                      _hd226527227066_
                                                      _tl226526227068_
                                                      _e226531227071_
                                                      _hd226530227074_
                                                      _tl226529227076_
                                                      _e226534227079_
                                                      _hd226533227082_
                                                      _tl226532227084_)
                                               (let ((_L227087_
                                                      _hd226533227082_)
                                                     (_L227088_
                                                      _hd226530227074_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L227088_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L227087_)))
                                                     (___kont240848240849_
                                                      _L227087_
                                                      _L227088_)
                                                     (___match240899240900_
                                                      _e226528227063_
                                                      _hd226527227066_
                                                      _tl226526227068_
                                                      _e226531227071_
                                                      _hd226530227074_
                                                      _tl226529227076_
                                                      _e226534227079_
                                                      _hd226533227082_
                                                      _tl226532227084_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx240846240847_))
                                           (let ((_e226528227063_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx240846240847_))))
                                             (let ((_tl226526227068_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e226528227063_)))
                                                   (_hd226527227066_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e226528227063_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd226527227066_))
                                                   (let ((_e226531227071_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd226527227066_))))
                                                     (let ((_tl226529227076_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e226531227071_)))
                                                           (_hd226530227074_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e226531227071_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl226529227076_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl226526227068_))
                       (let ((_e226534227079_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl226526227068_))))
                         (let ((_tl226532227084_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e226534227079_)))
                               (_hd226533227082_
                                (let ()
                                  (declare (not safe))
                                  (##car _e226534227079_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl226532227084_))
                               (___match240877240878_
                                _e226528227063_
                                _hd226527227066_
                                _tl226526227068_
                                _e226531227071_
                                _hd226530227074_
                                _tl226529227076_
                                _e226534227079_
                                _hd226533227082_
                                _tl226532227084_)
                               (let ()
                                 (declare (not safe))
                                 (_g226522226569_)))))
                       (let () (declare (not safe)) (_g226522226569_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl226526227068_))
                       (let ((_e226564226582_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl226526227068_))))
                         (let ((_tl226562226587_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e226564226582_)))
                               (_hd226563226585_
                                (let ()
                                  (declare (not safe))
                                  (##car _e226564226582_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl226562226587_))
                               (___kont240854240855_
                                _hd226563226585_
                                _hd226527227066_)
                               (let ()
                                 (declare (not safe))
                                 (_g226522226569_)))))
                       (let () (declare (not safe)) (_g226522226569_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl226526227068_))
                                                       (let ((_e226564226582_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl226526227068_))))
                 (let ((_tl226562226587_
                        (let () (declare (not safe)) (##cdr _e226564226582_)))
                       (_hd226563226585_
                        (let () (declare (not safe)) (##car _e226564226582_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl226562226587_))
                       (___kont240854240855_ _hd226563226585_ _hd226527227066_)
                       (let () (declare (not safe)) (_g226522226569_)))))
               (let () (declare (not safe)) (_g226522226569_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g226522226569_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest226497226505_))
                             (let ((_hd226502227183_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest226497226505_)))
                                   (_tl226503227185_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest226497226505_))))
                               (let* ((_hd227188_ _hd226502227183_)
                                      (_rest227190_ _tl226503227185_))
                                 (declare (not safe))
                                 (_K226501227180_ _rest227190_ _hd227188_)))
                             (let ()
                               (declare (not safe))
                               (_else226499226513_))))))))
          (let* ((___stx240938240939_ _stx226353_)
                 (_g226359226386_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx240938240939_)))))
            (let ((___kont240940240941_
                   (lambda (_L226446_ _L226447_ _L226448_)
                     (let ((__tmp241375
                            (lambda ()
                              (let ((_hd226485_
                                     (let ((__tmp241376
                                            (let ((__tmp241377
                                                   (lambda (_g226477226480_
                                                            _g226478226482_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g226477226480_
                                                             _g226478226482_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp241377
                                                      '()
                                                      _L226447_))))
                                       (declare (not safe))
                                       (_compile-bindings226356_ __tmp241376)))
                                    (_body226486_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L226446_))))
                                (let ((__tmp241378
                                       (let ((__tmp241379
                                              (let ((__tmp241380
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body226486_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd226485_
                                                      __tmp241380))))
                                         (declare (not safe))
                                         (cons _L226448_ __tmp241379))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp241378
                                   _stx226353_)))))
                           (__tmp241374
                            (let ((__obj241010
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj241010)
                              __obj241010)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp241375
                        gx#current-expander-context
                        __tmp241374))))
                  (___kont240944240945_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx226353_)))))
              (let ((___match240965240966_
                     (lambda (_e226366226398_
                              _hd226365226401_
                              _tl226364226403_
                              _e226369226406_
                              _hd226368226409_
                              _tl226367226411_
                              ___splice240942240943_
                              _target226370226414_
                              _tl226372226416_)
                       (letrec ((_loop226373226419_
                                 (lambda (_hd226371226422_ _bind226377226424_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd226371226422_))
                                       (let ((_e226374226427_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd226371226422_))))
                                         (let ((_lp-tl226376226432_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e226374226427_)))
                                               (_lp-hd226375226430_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e226374226427_))))
                                           (let ((__tmp241383
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd226375226430_
                                                          _bind226377226424_))))
                                             (declare (not safe))
                                             (_loop226373226419_
                                              _lp-tl226376226432_
                                              __tmp241383))))
                                       (let ((_bind226378226435_
                                              (reverse _bind226377226424_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl226367226411_))
                                             (let ((_e226381226438_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl226367226411_))))
                                               (let ((_tl226379226443_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e226381226438_)))
                                                     (_hd226380226441_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e226381226438_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl226379226443_))
                                                     (let ((_L226446_
                                                            _hd226380226441_)
                                                           (_L226447_
                                                            _bind226378226435_)
                                                           (_L226448_
                                                            _hd226365226401_))
                                                       (if (let ((__tmp241381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241382
                                 (lambda (_g226469226472_ _g226470226474_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g226469226472_ _g226470226474_)))))
                            (declare (not safe))
                            (foldr1 __tmp241382 '() _L226447_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp241381))
                   (___kont240940240941_ _L226446_ _L226447_ _L226448_)
                   (___kont240944240945_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont240944240945_))))
                                             (___kont240944240945_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop226373226419_ _target226370226414_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx240938240939_))
                    (let ((_e226366226398_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx240938240939_))))
                      (let ((_tl226364226403_
                             (let ()
                               (declare (not safe))
                               (##cdr _e226366226398_)))
                            (_hd226365226401_
                             (let ()
                               (declare (not safe))
                               (##car _e226366226398_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl226364226403_))
                            (let ((_e226369226406_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl226364226403_))))
                              (let ((_tl226367226411_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e226369226406_)))
                                    (_hd226368226409_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e226369226406_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd226368226409_))
                                    (let ((___splice240942240943_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd226368226409_
                                              '0))))
                                      (let ((_tl226372226416_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice240942240943_
                                                '1)))
                                            (_target226370226414_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice240942240943_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl226372226416_))
                                            (___match240965240966_
                                             _e226366226398_
                                             _hd226365226401_
                                             _tl226364226403_
                                             _e226369226406_
                                             _hd226368226409_
                                             _tl226367226411_
                                             ___splice240942240943_
                                             _target226370226414_
                                             _tl226372226416_)
                                            (___kont240944240945_))))
                                    (___kont240944240945_))))
                            (___kont240944240945_))))
                    (___kont240944240945_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind226271_)
        (let* ((___stx240968240969_ _bind226271_)
               (_g226274226291_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240968240969_)))))
          (let ((___kont240970240971_
                 (lambda (_L226327_ _L226328_)
                   (if (let () (declare (not safe)) (gx#identifier? _L226328_))
                       (let ((_$e226344_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L226327_))))
                         (if _$e226344_
                             _$e226344_
                             (let ((_$e226347_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L226327_))))
                               (if _$e226347_
                                   _$e226347_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L226327_))))))
                       '#f)))
                (___kont240972240973_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240968240969_))
                (let ((_e226280226303_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240968240969_))))
                  (let ((_tl226278226308_
                         (let () (declare (not safe)) (##cdr _e226280226303_)))
                        (_hd226279226306_
                         (let ()
                           (declare (not safe))
                           (##car _e226280226303_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd226279226306_))
                        (let ((_e226283226311_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd226279226306_))))
                          (let ((_tl226281226316_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e226283226311_)))
                                (_hd226282226314_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e226283226311_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl226281226316_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl226278226308_))
                                    (let ((_e226286226319_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl226278226308_))))
                                      (let ((_tl226284226324_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e226286226319_)))
                                            (_hd226285226322_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e226286226319_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl226284226324_))
                                            (___kont240970240971_
                                             _hd226285226322_
                                             _hd226282226314_)
                                            (___kont240972240973_))))
                                    (___kont240972240973_))
                                (___kont240972240973_))))
                        (___kont240972240973_))))
                (___kont240972240973_))))))))
