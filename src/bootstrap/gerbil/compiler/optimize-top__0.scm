(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1708387689)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl125657_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp127750 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl125657_ __tmp127750))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125657_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125657_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125657_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125657_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl125657_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx125640_ . _args125642_)
        (let ((__tmp127752
               (lambda ()
                 (declare (not safe))
                 (if (null? _args125642_)
                     (gxc#compile-e__0 _stx125640_)
                     (let ((_arg1125647_ (car _args125642_))
                           (_rest125649_ (cdr _args125642_)))
                       (if (null? _rest125649_)
                           (gxc#compile-e__1 _stx125640_ _arg1125647_)
                           (let ((_arg2125652_ (car _rest125649_))
                                 (_rest125654_ (cdr _rest125649_)))
                             (if (null? _rest125654_)
                                 (gxc#compile-e__2
                                  _stx125640_
                                  _arg1125647_
                                  _arg2125652_)
                                 (apply gxc#compile-e
                                        _stx125640_
                                        _arg1125647_
                                        _arg2125652_
                                        _rest125654_))))))))
              (__tmp127751 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp127752
           gxc#current-compile-methods
           __tmp127751))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl125637_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp127753 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl125637_ __tmp127753))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125637_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125637_ '%#call gxc#basic-expression-type-call%))
           _tbl125637_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx125620_ . _args125622_)
        (let ((__tmp127755
               (lambda ()
                 (declare (not safe))
                 (if (null? _args125622_)
                     (gxc#compile-e__0 _stx125620_)
                     (let ((_arg1125627_ (car _args125622_))
                           (_rest125629_ (cdr _args125622_)))
                       (if (null? _rest125629_)
                           (gxc#compile-e__1 _stx125620_ _arg1125627_)
                           (let ((_arg2125632_ (car _rest125629_))
                                 (_rest125634_ (cdr _rest125629_)))
                             (if (null? _rest125634_)
                                 (gxc#compile-e__2
                                  _stx125620_
                                  _arg1125627_
                                  _arg2125632_)
                                 (apply gxc#compile-e
                                        _stx125620_
                                        _arg1125627_
                                        _arg2125632_
                                        _rest125634_))))))))
              (__tmp127754 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp127755
           gxc#current-compile-methods
           __tmp127754))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl125617_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp127756 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl125617_ __tmp127756))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125617_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125617_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125617_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125617_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125617_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125617_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125617_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125617_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125617_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125617_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125617_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125617_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125617_ '%#set! gxc#collect-body-setq%))
           _tbl125617_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx125600_ . _args125602_)
        (let ((__tmp127758
               (lambda ()
                 (declare (not safe))
                 (if (null? _args125602_)
                     (gxc#compile-e__0 _stx125600_)
                     (let ((_arg1125607_ (car _args125602_))
                           (_rest125609_ (cdr _args125602_)))
                       (if (null? _rest125609_)
                           (gxc#compile-e__1 _stx125600_ _arg1125607_)
                           (let ((_arg2125612_ (car _rest125609_))
                                 (_rest125614_ (cdr _rest125609_)))
                             (if (null? _rest125614_)
                                 (gxc#compile-e__2
                                  _stx125600_
                                  _arg1125607_
                                  _arg2125612_)
                                 (apply gxc#compile-e
                                        _stx125600_
                                        _arg1125607_
                                        _arg2125612_
                                        _rest125614_))))))))
              (__tmp127757 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp127758
           gxc#current-compile-methods
           __tmp127757))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl125597_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp127759 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl125597_ __tmp127759))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125597_ '%#begin gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125597_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125597_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125597_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125597_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125597_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125597_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125597_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125597_ '%#ref gxc#basic-expression-type-ref%))
           _tbl125597_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx125580_ . _args125582_)
        (let ((__tmp127761
               (lambda ()
                 (declare (not safe))
                 (if (null? _args125582_)
                     (gxc#compile-e__0 _stx125580_)
                     (let ((_arg1125587_ (car _args125582_))
                           (_rest125589_ (cdr _args125582_)))
                       (if (null? _rest125589_)
                           (gxc#compile-e__1 _stx125580_ _arg1125587_)
                           (let ((_arg2125592_ (car _rest125589_))
                                 (_rest125594_ (cdr _rest125589_)))
                             (if (null? _rest125594_)
                                 (gxc#compile-e__2
                                  _stx125580_
                                  _arg1125587_
                                  _arg2125592_)
                                 (apply gxc#compile-e
                                        _stx125580_
                                        _arg1125587_
                                        _arg2125592_
                                        _rest125594_))))))))
              (__tmp127760 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp127761
           gxc#current-compile-methods
           __tmp127760))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl125577_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp127762 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl125577_ __tmp127762))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125577_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125577_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125577_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125577_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl125577_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx125560_ . _args125562_)
        (let ((__tmp127764
               (lambda ()
                 (declare (not safe))
                 (if (null? _args125562_)
                     (gxc#compile-e__0 _stx125560_)
                     (let ((_arg1125567_ (car _args125562_))
                           (_rest125569_ (cdr _args125562_)))
                       (if (null? _rest125569_)
                           (gxc#compile-e__1 _stx125560_ _arg1125567_)
                           (let ((_arg2125572_ (car _rest125569_))
                                 (_rest125574_ (cdr _rest125569_)))
                             (if (null? _rest125574_)
                                 (gxc#compile-e__2
                                  _stx125560_
                                  _arg1125567_
                                  _arg2125572_)
                                 (apply gxc#compile-e
                                        _stx125560_
                                        _arg1125567_
                                        _arg2125572_
                                        _rest125574_))))))))
              (__tmp127763 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp127764
           gxc#current-compile-methods
           __tmp127763))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx125463_)
        (let* ((___stx125670125671_ _stx125463_)
               (_g125466125486_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125670125671_)))))
          (let ((___kont125672125673_
                 (lambda (_L125530_ _L125531_)
                   (let ((_sym125549_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125531_))))
                     (if (let ((__tmp127765 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp127765 _sym125549_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym125549_))
                         (let ((_type125550125552_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L125530_))))
                           (if _type125550125552_
                               (let ((_type125555_ _type125550125552_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym125549_
                                  _type125555_))
                               '#f))))))
                (___kont125674125675_ (lambda () '#!void)))
            (let ((___match125703125704_
                   (lambda (_e125472125498_
                            _hd125471125501_
                            _tl125470125503_
                            _e125475125506_
                            _hd125474125509_
                            _tl125473125511_
                            _e125478125514_
                            _hd125477125517_
                            _tl125476125519_
                            _e125481125522_
                            _hd125480125525_
                            _tl125479125527_)
                     (let ((_L125530_ _hd125480125525_)
                           (_L125531_ _hd125477125517_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L125531_))
                           (___kont125672125673_ _L125530_ _L125531_)
                           (___kont125674125675_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx125670125671_))
                  (let ((_e125472125498_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx125670125671_))))
                    (let ((_tl125470125503_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125472125498_)))
                          (_hd125471125501_
                           (let ()
                             (declare (not safe))
                             (##car _e125472125498_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125470125503_))
                          (let ((_e125475125506_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125470125503_))))
                            (let ((_tl125473125511_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125475125506_)))
                                  (_hd125474125509_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125475125506_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125474125509_))
                                  (let ((_e125478125514_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125474125509_))))
                                    (let ((_tl125476125519_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125478125514_)))
                                          (_hd125477125517_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125478125514_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125476125519_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125473125511_))
                                              (let ((_e125481125522_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125473125511_))))
                                                (let ((_tl125479125527_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125481125522_)))
                                                      (_hd125480125525_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125481125522_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125479125527_))
                                                      (___match125703125704_
                                                       _e125472125498_
                                                       _hd125471125501_
                                                       _tl125470125503_
                                                       _e125475125506_
                                                       _hd125474125509_
                                                       _tl125473125511_
                                                       _e125478125514_
                                                       _hd125477125517_
                                                       _tl125476125519_
                                                       _e125481125522_
                                                       _hd125480125525_
                                                       _tl125479125527_)
                                                      (___kont125674125675_))))
                                              (___kont125674125675_))
                                          (___kont125674125675_))))
                                  (___kont125674125675_))))
                          (___kont125674125675_))))
                  (___kont125674125675_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx125319_)
        (let* ((___stx125706125707_ _stx125319_)
               (_g125322125353_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125706125707_)))))
          (let ((___kont125708125709_
                 (lambda (_L125435_ _L125436_)
                   (let ((_sym125452_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125436_))))
                     (if (let ((__tmp127766 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp127766 _sym125452_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym125452_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym125452_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym125452_))
                             (let ((_type125453125455_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L125435_))))
                               (if _type125453125455_
                                   (let ((_type125458_ _type125453125455_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym125452_
                                      _type125458_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L125435_)))))
                (___kont125710125711_
                 (lambda (_L125382_ _L125383_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L125382_)))))
            (let ((___match125739125740_
                   (lambda (_e125328125403_
                            _hd125327125406_
                            _tl125326125408_
                            _e125331125411_
                            _hd125330125414_
                            _tl125329125416_
                            _e125334125419_
                            _hd125333125422_
                            _tl125332125424_
                            _e125337125427_
                            _hd125336125430_
                            _tl125335125432_)
                     (let ((_L125435_ _hd125336125430_)
                           (_L125436_ _hd125333125422_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L125436_))
                           (___kont125708125709_ _L125435_ _L125436_)
                           (___kont125710125711_
                            _hd125336125430_
                            _hd125330125414_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx125706125707_))
                  (let ((_e125328125403_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx125706125707_))))
                    (let ((_tl125326125408_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125328125403_)))
                          (_hd125327125406_
                           (let ()
                             (declare (not safe))
                             (##car _e125328125403_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125326125408_))
                          (let ((_e125331125411_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125326125408_))))
                            (let ((_tl125329125416_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125331125411_)))
                                  (_hd125330125414_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125331125411_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125330125414_))
                                  (let ((_e125334125419_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125330125414_))))
                                    (let ((_tl125332125424_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125334125419_)))
                                          (_hd125333125422_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125334125419_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125332125424_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125329125416_))
                                              (let ((_e125337125427_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125329125416_))))
                                                (let ((_tl125335125432_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125337125427_)))
                                                      (_hd125336125430_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125337125427_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125335125432_))
                                                      (___match125739125740_
                                                       _e125328125403_
                                                       _hd125327125406_
                                                       _tl125326125408_
                                                       _e125331125411_
                                                       _hd125330125414_
                                                       _tl125329125416_
                                                       _e125334125419_
                                                       _hd125333125422_
                                                       _tl125332125424_
                                                       _e125337125427_
                                                       _hd125336125430_
                                                       _tl125335125432_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125322125353_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125322125353_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125329125416_))
                                              (let ((_e125348125374_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125329125416_))))
                                                (let ((_tl125346125379_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125348125374_)))
                                                      (_hd125347125377_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125348125374_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125346125379_))
                                                      (___kont125710125711_
                                                       _hd125347125377_
                                                       _hd125330125414_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125322125353_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125322125353_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125329125416_))
                                      (let ((_e125348125374_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125329125416_))))
                                        (let ((_tl125346125379_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125348125374_)))
                                              (_hd125347125377_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125348125374_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125346125379_))
                                              (___kont125710125711_
                                               _hd125347125377_
                                               _hd125330125414_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125322125353_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125322125353_))))))
                          (let () (declare (not safe)) (_g125322125353_)))))
                  (let () (declare (not safe)) (_g125322125353_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx125104_)
        (letrec ((_collect-e125106_
                  (lambda (_hd125263_ _expr125264_)
                    (let* ((___stx125762125763_ _hd125263_)
                           (_g125267125277_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx125762125763_)))))
                      (let ((___kont125764125765_
                             (lambda (_L125297_)
                               (let ((_sym125308_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L125297_))))
                                 (if (let ((__tmp127767
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp127767 _sym125308_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym125308_))
                                     (let ((_type125309125311_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr125264_))))
                                       (if _type125309125311_
                                           (let ((_type125314_
                                                  _type125309125311_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym125308_
                                              _type125314_
                                              '#t))
                                           '#f))))))
                            (___kont125766125767_ (lambda () '#!void)))
                        (let ((___match125775125776_
                               (lambda (_e125272125289_
                                        _hd125271125292_
                                        _tl125270125294_)
                                 (let ((_L125297_ _hd125271125292_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L125297_))
                                       (___kont125764125765_ _L125297_)
                                       (___kont125766125767_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx125762125763_))
                              (let ((_e125272125289_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx125762125763_))))
                                (let ((_tl125270125294_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125272125289_)))
                                      (_hd125271125292_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125272125289_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125270125294_))
                                      (___match125775125776_
                                       _e125272125289_
                                       _hd125271125292_
                                       _tl125270125294_)
                                      (___kont125766125767_))))
                              (___kont125766125767_))))))))
          (let* ((_g125108125143_
                  (lambda (_g125109125140_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g125109125140_))))
                 (_g125107125260_
                  (lambda (_g125109125146_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g125109125146_))
                        (let ((_e125115125148_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g125109125146_))))
                          (let ((_hd125114125151_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125115125148_)))
                                (_tl125113125153_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125115125148_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125113125153_))
                                (let ((_e125118125156_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125113125153_))))
                                  (let ((_hd125117125159_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125118125156_)))
                                        (_tl125116125161_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125118125156_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd125117125159_))
                                        (let ((_g127768_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd125117125159_
                                                  '0))))
                                          (begin
                                            (let ((_g127769_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g127768_)
                                                         (##vector-length
                                                          _g127768_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g127769_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g127769_)))
                                            (let ((_target125119125164_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g127768_
                                                      0)))
                                                  (_tl125121125166_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g127768_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125121125166_))
                                                  (letrec ((_loop125122125169_
                                                            (lambda (_hd125120125172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr125126125174_
                             _hd125127125176_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125120125172_))
                          (let ((_e125123125179_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125120125172_))))
                            (let ((_lp-hd125124125182_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125123125179_)))
                                  (_lp-tl125125125184_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125123125179_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd125124125182_))
                                  (let ((_e125132125187_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd125124125182_))))
                                    (let ((_hd125131125190_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125132125187_)))
                                          (_tl125130125192_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125132125187_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125130125192_))
                                          (let ((_e125135125195_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125130125192_))))
                                            (let ((_hd125134125198_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125135125195_)))
                                                  (_tl125133125200_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125135125195_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125133125200_))
                                                  (let ((__tmp127774
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd125134125198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr125126125174_)))
                (__tmp127773
                 (let ()
                   (declare (not safe))
                   (cons _hd125131125190_ _hd125127125176_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop125122125169_
                                                     _lp-tl125125125184_
                                                     __tmp127774
                                                     __tmp127773))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125108125143_
                                                     _g125109125146_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125108125143_
                                             _g125109125146_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125108125143_ _g125109125146_)))))
                          (let ((_expr125128125203_
                                 (reverse _expr125126125174_))
                                (_hd125129125205_ (reverse _hd125127125176_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125116125161_))
                                (let ((_e125138125208_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125116125161_))))
                                  (let ((_hd125137125211_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125138125208_)))
                                        (_tl125136125213_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125138125208_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl125136125213_))
                                        ((lambda (_L125216_
                                                  _L125217_
                                                  _L125218_)
                                           (for-each
                                            _collect-e125106_
                                            (let ((__tmp127770
                                                   (lambda (_g125238125241_
                                                            _g125239125243_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125238125241_
                                                             _g125239125243_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp127770
                                                      '()
                                                      _L125218_))
                                            (let ((__tmp127771
                                                   (lambda (_g125245125248_
                                                            _g125246125250_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125245125248_
                                                             _g125246125250_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp127771
                                                      '()
                                                      _L125217_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp127772
                                                   (lambda (_g125252125255_
                                                            _g125253125257_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125252125255_
                                                             _g125253125257_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp127772
                                                      '()
                                                      _L125217_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L125216_)))
                                         _hd125137125211_
                                         _expr125128125203_
                                         _hd125129125205_)
                                        (let ()
                                          (declare (not safe))
                                          (_g125108125143_ _g125109125146_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125108125143_ _g125109125146_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop125122125169_
                                                       _target125119125164_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125108125143_
                                                     _g125109125146_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g125108125143_ _g125109125146_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125108125143_ _g125109125146_)))))
                        (let ()
                          (declare (not safe))
                          (_g125108125143_ _g125109125146_))))))
            (declare (not safe))
            (_g125107125260_ _stx125104_)))))
    (define gxc#collect-type-call%
      (lambda (_stx124596_)
        (let* ((___stx125778125779_ _stx124596_)
               (_g124600124715_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125778125779_)))))
          (let ((___kont125780125781_
                 (lambda (_L125054_ _L125055_ _L125056_ _L125057_ _L125058_)
                   (let ((__tmp127778
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125057_)))
                         (__tmp127777
                          (let () (declare (not safe)) (gx#stx-e _L125056_)))
                         (__tmp127776
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125055_)))
                         (__tmp127775
                          (let () (declare (not safe)) (gx#stx-e _L125054_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp127778
                      __tmp127777
                      __tmp127776
                      __tmp127775))))
                (___kont125782125783_
                 (lambda (_L124882_ _L124883_ _L124884_ _L124885_)
                   (let ((__tmp127781
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124884_)))
                         (__tmp127780
                          (let () (declare (not safe)) (gx#stx-e _L124883_)))
                         (__tmp127779
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124882_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp127781
                      __tmp127780
                      __tmp127779
                      '#f))))
                (___kont125784125785_
                 (lambda (_L124752_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp127782
                           (lambda (_g124765124768_ _g124766124770_)
                             (let ()
                               (declare (not safe))
                               (cons _g124765124768_ _g124766124770_)))))
                      (declare (not safe))
                      (foldr1 __tmp127782 '() _L124752_))))))
            (let* ((___match126035126036_
                    (lambda (_e124701124720_
                             _hd124700124723_
                             _tl124699124725_
                             ___splice125786125787_
                             _target124702124728_
                             _tl124704124730_)
                      (letrec ((_loop124705124733_
                                (lambda (_hd124703124736_ _expr124709124738_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124703124736_))
                                      (let ((_e124706124741_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124703124736_))))
                                        (let ((_lp-tl124708124746_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124706124741_)))
                                              (_lp-hd124707124744_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124706124741_))))
                                          (let ((__tmp127783
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124707124744_
                                                         _expr124709124738_))))
                                            (declare (not safe))
                                            (_loop124705124733_
                                             _lp-tl124708124746_
                                             __tmp127783))))
                                      (let ((_expr124710124749_
                                             (reverse _expr124709124738_)))
                                        (___kont125784125785_
                                         _expr124710124749_))))))
                        (let ()
                          (declare (not safe))
                          (_loop124705124733_ _target124702124728_ '())))))
                   (___match125915125916_
                    (lambda (_e124609124926_
                             _hd124608124929_
                             _tl124607124931_
                             _e124612124934_
                             _hd124611124937_
                             _tl124610124939_
                             _e124615124942_
                             _hd124614124945_
                             _tl124613124947_
                             _e124618124950_
                             _hd124617124953_
                             _tl124616124955_
                             _e124621124958_
                             _hd124620124961_
                             _tl124619124963_
                             _e124624124966_
                             _hd124623124969_
                             _tl124622124971_
                             _e124627124974_
                             _hd124626124977_
                             _tl124625124979_
                             _e124630124982_
                             _hd124629124985_
                             _tl124628124987_
                             _e124633124990_
                             _hd124632124993_
                             _tl124631124995_
                             _e124636124998_
                             _hd124635125001_
                             _tl124634125003_
                             _e124639125006_
                             _hd124638125009_
                             _tl124637125011_
                             _e124642125014_
                             _hd124641125017_
                             _tl124640125019_
                             _e124645125022_
                             _hd124644125025_
                             _tl124643125027_
                             _e124648125030_
                             _hd124647125033_
                             _tl124646125035_
                             _e124651125038_
                             _hd124650125041_
                             _tl124649125043_
                             _e124654125046_
                             _hd124653125049_
                             _tl124652125051_)
                      (let ((_L125054_ _hd124653125049_)
                            (_L125055_ _hd124644125025_)
                            (_L125056_ _hd124635125001_)
                            (_L125057_ _hd124626124977_)
                            (_L125058_ _hd124617124953_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L125058_
                               'bind-method!))
                            (___kont125780125781_
                             _L125054_
                             _L125055_
                             _L125056_
                             _L125057_
                             _L125058_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl124607124931_))
                                (let ((___splice125786125787_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl124607124931_
                                          '0))))
                                  (let ((_tl124704124730_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice125786125787_
                                            '1)))
                                        (_target124702124728_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice125786125787_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124704124730_))
                                        (___match126035126036_
                                         _e124609124926_
                                         _hd124608124929_
                                         _tl124607124931_
                                         ___splice125786125787_
                                         _target124702124728_
                                         _tl124704124730_)
                                        (let ()
                                          (declare (not safe))
                                          (_g124600124715_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g124600124715_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx125778125779_))
                  (let ((_e124609124926_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx125778125779_))))
                    (let ((_tl124607124931_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124609124926_)))
                          (_hd124608124929_
                           (let ()
                             (declare (not safe))
                             (##car _e124609124926_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124607124931_))
                          (let ((_e124612124934_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124607124931_))))
                            (let ((_tl124610124939_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124612124934_)))
                                  (_hd124611124937_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124612124934_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd124611124937_))
                                  (let ((_e124615124942_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd124611124937_))))
                                    (let ((_tl124613124947_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124615124942_)))
                                          (_hd124614124945_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124615124942_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd124614124945_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd124614124945_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124613124947_))
                                                  (let ((_e124618124950_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124613124947_))))
                                                    (let ((_tl124616124955_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124618124950_)))
                                                          (_hd124617124953_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124618124950_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124616124955_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl124610124939_))
                      (let ((_e124621124958_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124610124939_))))
                        (let ((_tl124619124963_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124621124958_)))
                              (_hd124620124961_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124621124958_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd124620124961_))
                              (let ((_e124624124966_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd124620124961_))))
                                (let ((_tl124622124971_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124624124966_)))
                                      (_hd124623124969_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124624124966_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd124623124969_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd124623124969_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124622124971_))
                                              (let ((_e124627124974_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124622124971_))))
                                                (let ((_tl124625124979_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124627124974_)))
                                                      (_hd124626124977_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124627124974_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124625124979_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124619124963_))
                                                          (let ((_e124630124982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124619124963_))))
                    (let ((_tl124628124987_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124630124982_)))
                          (_hd124629124985_
                           (let ()
                             (declare (not safe))
                             (##car _e124630124982_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124629124985_))
                          (let ((_e124633124990_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124629124985_))))
                            (let ((_tl124631124995_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124633124990_)))
                                  (_hd124632124993_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124633124990_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124632124993_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd124632124993_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124631124995_))
                                          (let ((_e124636124998_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124631124995_))))
                                            (let ((_tl124634125003_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124636124998_)))
                                                  (_hd124635125001_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124636124998_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124634125003_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124628124987_))
                                                      (let ((_e124639125006_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124628124987_))))
                (let ((_tl124637125011_
                       (let () (declare (not safe)) (##cdr _e124639125006_)))
                      (_hd124638125009_
                       (let () (declare (not safe)) (##car _e124639125006_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124638125009_))
                      (let ((_e124642125014_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124638125009_))))
                        (let ((_tl124640125019_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124642125014_)))
                              (_hd124641125017_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124642125014_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124641125017_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124641125017_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124640125019_))
                                      (let ((_e124645125022_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124640125019_))))
                                        (let ((_tl124643125027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124645125022_)))
                                              (_hd124644125025_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124645125022_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124643125027_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124637125011_))
                                                  (let ((_e124648125030_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124637125011_))))
                                                    (let ((_tl124646125035_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124648125030_)))
                                                          (_hd124647125033_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124648125030_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124647125033_))
                                                          (let ((_e124651125038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124647125033_))))
                    (let ((_tl124649125043_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124651125038_)))
                          (_hd124650125041_
                           (let ()
                             (declare (not safe))
                             (##car _e124651125038_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124650125041_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd124650125041_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124649125043_))
                                  (let ((_e124654125046_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124649125043_))))
                                    (let ((_tl124652125051_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124654125046_)))
                                          (_hd124653125049_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124654125046_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124652125051_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124646125035_))
                                              (___match125915125916_
                                               _e124609124926_
                                               _hd124608124929_
                                               _tl124607124931_
                                               _e124612124934_
                                               _hd124611124937_
                                               _tl124610124939_
                                               _e124615124942_
                                               _hd124614124945_
                                               _tl124613124947_
                                               _e124618124950_
                                               _hd124617124953_
                                               _tl124616124955_
                                               _e124621124958_
                                               _hd124620124961_
                                               _tl124619124963_
                                               _e124624124966_
                                               _hd124623124969_
                                               _tl124622124971_
                                               _e124627124974_
                                               _hd124626124977_
                                               _tl124625124979_
                                               _e124630124982_
                                               _hd124629124985_
                                               _tl124628124987_
                                               _e124633124990_
                                               _hd124632124993_
                                               _tl124631124995_
                                               _e124636124998_
                                               _hd124635125001_
                                               _tl124634125003_
                                               _e124639125006_
                                               _hd124638125009_
                                               _tl124637125011_
                                               _e124642125014_
                                               _hd124641125017_
                                               _tl124640125019_
                                               _e124645125022_
                                               _hd124644125025_
                                               _tl124643125027_
                                               _e124648125030_
                                               _hd124647125033_
                                               _tl124646125035_
                                               _e124651125038_
                                               _hd124650125041_
                                               _tl124649125043_
                                               _e124654125046_
                                               _hd124653125049_
                                               _tl124652125051_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124607124931_))
                                                  (let ((___splice125786125787_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124607124931_
                                                            '0))))
                                                    (let ((_tl124704124730_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125786125787_
                                                              '1)))
                                                          (_target124702124728_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125786125787_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124704124730_))
                                                          (___match126035126036_
                                                           _e124609124926_
                                                           _hd124608124929_
                                                           _tl124607124931_
                                                           ___splice125786125787_
                                                           _target124702124728_
                                                           _tl124704124730_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124600124715_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124600124715_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124607124931_))
                                              (let ((___splice125786125787_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124607124931_
                                                        '0))))
                                                (let ((_tl124704124730_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125786125787_
                                                          '1)))
                                                      (_target124702124728_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125786125787_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124704124730_))
                                                      (___match126035126036_
                                                       _e124609124926_
                                                       _hd124608124929_
                                                       _tl124607124931_
                                                       ___splice125786125787_
                                                       _target124702124728_
                                                       _tl124704124730_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124600124715_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124600124715_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124607124931_))
                                      (let ((___splice125786125787_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124607124931_
                                                '0))))
                                        (let ((_tl124704124730_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125786125787_
                                                  '1)))
                                              (_target124702124728_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125786125787_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124704124730_))
                                              (___match126035126036_
                                               _e124609124926_
                                               _hd124608124929_
                                               _tl124607124931_
                                               ___splice125786125787_
                                               _target124702124728_
                                               _tl124704124730_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124600124715_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124600124715_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl124607124931_))
                                  (let ((___splice125786125787_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl124607124931_
                                            '0))))
                                    (let ((_tl124704124730_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125786125787_
                                              '1)))
                                          (_target124702124728_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125786125787_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124704124730_))
                                          (___match126035126036_
                                           _e124609124926_
                                           _hd124608124929_
                                           _tl124607124931_
                                           ___splice125786125787_
                                           _target124702124728_
                                           _tl124704124730_)
                                          (let ()
                                            (declare (not safe))
                                            (_g124600124715_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124600124715_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl124607124931_))
                              (let ((___splice125786125787_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl124607124931_
                                        '0))))
                                (let ((_tl124704124730_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125786125787_
                                          '1)))
                                      (_target124702124728_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125786125787_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124704124730_))
                                      (___match126035126036_
                                       _e124609124926_
                                       _hd124608124929_
                                       _tl124607124931_
                                       ___splice125786125787_
                                       _target124702124728_
                                       _tl124704124730_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124600124715_)))))
                              (let ()
                                (declare (not safe))
                                (_g124600124715_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124607124931_))
                      (let ((___splice125786125787_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124607124931_ '0))))
                        (let ((_tl124704124730_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125786125787_ '1)))
                              (_target124702124728_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125786125787_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124704124730_))
                              (___match126035126036_
                               _e124609124926_
                               _hd124608124929_
                               _tl124607124931_
                               ___splice125786125787_
                               _target124702124728_
                               _tl124704124730_)
                              (let ()
                                (declare (not safe))
                                (_g124600124715_)))))
                      (let () (declare (not safe)) (_g124600124715_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124637125011_))
                                                      (if (let ((__tmp127784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp127784 'bind-method!))
                  (let ((_L124882_ _hd124644125025_)
                        (_L124883_ _hd124635125001_)
                        (_L124884_ _hd124626124977_)
                        (_L124885_ _hd124617124953_))
                    (___kont125782125783_
                     _L124882_
                     _L124883_
                     _L124884_
                     _L124885_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124607124931_))
                      (let ((___splice125786125787_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124607124931_ '0))))
                        (let ((_tl124704124730_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125786125787_ '1)))
                              (_target124702124728_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125786125787_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124704124730_))
                              (___match126035126036_
                               _e124609124926_
                               _hd124608124929_
                               _tl124607124931_
                               ___splice125786125787_
                               _target124702124728_
                               _tl124704124730_)
                              (let ()
                                (declare (not safe))
                                (_g124600124715_)))))
                      (let () (declare (not safe)) (_g124600124715_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl124607124931_))
                  (let ((___splice125786125787_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl124607124931_ '0))))
                    (let ((_tl124704124730_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125786125787_ '1)))
                          (_target124702124728_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125786125787_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl124704124730_))
                          (___match126035126036_
                           _e124609124926_
                           _hd124608124929_
                           _tl124607124931_
                           ___splice125786125787_
                           _target124702124728_
                           _tl124704124730_)
                          (let () (declare (not safe)) (_g124600124715_)))))
                  (let () (declare (not safe)) (_g124600124715_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124607124931_))
                                                  (let ((___splice125786125787_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124607124931_
                                                            '0))))
                                                    (let ((_tl124704124730_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125786125787_
                                                              '1)))
                                                          (_target124702124728_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125786125787_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124704124730_))
                                                          (___match126035126036_
                                                           _e124609124926_
                                                           _hd124608124929_
                                                           _tl124607124931_
                                                           ___splice125786125787_
                                                           _target124702124728_
                                                           _tl124704124730_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124600124715_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124600124715_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl124607124931_))
                                          (let ((___splice125786125787_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl124607124931_
                                                    '0))))
                                            (let ((_tl124704124730_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125786125787_
                                                      '1)))
                                                  (_target124702124728_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125786125787_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124704124730_))
                                                  (___match126035126036_
                                                   _e124609124926_
                                                   _hd124608124929_
                                                   _tl124607124931_
                                                   ___splice125786125787_
                                                   _target124702124728_
                                                   _tl124704124730_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124600124715_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g124600124715_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124607124931_))
                                      (let ((___splice125786125787_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124607124931_
                                                '0))))
                                        (let ((_tl124704124730_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125786125787_
                                                  '1)))
                                              (_target124702124728_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125786125787_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124704124730_))
                                              (___match126035126036_
                                               _e124609124926_
                                               _hd124608124929_
                                               _tl124607124931_
                                               ___splice125786125787_
                                               _target124702124728_
                                               _tl124704124730_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124600124715_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124600124715_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl124607124931_))
                                  (let ((___splice125786125787_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl124607124931_
                                            '0))))
                                    (let ((_tl124704124730_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125786125787_
                                              '1)))
                                          (_target124702124728_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125786125787_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124704124730_))
                                          (___match126035126036_
                                           _e124609124926_
                                           _hd124608124929_
                                           _tl124607124931_
                                           ___splice125786125787_
                                           _target124702124728_
                                           _tl124704124730_)
                                          (let ()
                                            (declare (not safe))
                                            (_g124600124715_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124600124715_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl124607124931_))
                          (let ((___splice125786125787_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl124607124931_
                                    '0))))
                            (let ((_tl124704124730_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice125786125787_ '1)))
                                  (_target124702124728_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice125786125787_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124704124730_))
                                  (___match126035126036_
                                   _e124609124926_
                                   _hd124608124929_
                                   _tl124607124931_
                                   ___splice125786125787_
                                   _target124702124728_
                                   _tl124704124730_)
                                  (let ()
                                    (declare (not safe))
                                    (_g124600124715_)))))
                          (let () (declare (not safe)) (_g124600124715_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl124607124931_))
                  (let ((___splice125786125787_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl124607124931_ '0))))
                    (let ((_tl124704124730_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125786125787_ '1)))
                          (_target124702124728_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125786125787_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl124704124730_))
                          (___match126035126036_
                           _e124609124926_
                           _hd124608124929_
                           _tl124607124931_
                           ___splice125786125787_
                           _target124702124728_
                           _tl124704124730_)
                          (let () (declare (not safe)) (_g124600124715_)))))
                  (let () (declare (not safe)) (_g124600124715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl124607124931_))
                                                      (let ((___splice125786125787_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl124607124931_ '0))))
                (let ((_tl124704124730_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125786125787_ '1)))
                      (_target124702124728_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125786125787_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl124704124730_))
                      (___match126035126036_
                       _e124609124926_
                       _hd124608124929_
                       _tl124607124931_
                       ___splice125786125787_
                       _target124702124728_
                       _tl124704124730_)
                      (let () (declare (not safe)) (_g124600124715_)))))
              (let () (declare (not safe)) (_g124600124715_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124607124931_))
                                              (let ((___splice125786125787_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124607124931_
                                                        '0))))
                                                (let ((_tl124704124730_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125786125787_
                                                          '1)))
                                                      (_target124702124728_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125786125787_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124704124730_))
                                                      (___match126035126036_
                                                       _e124609124926_
                                                       _hd124608124929_
                                                       _tl124607124931_
                                                       ___splice125786125787_
                                                       _target124702124728_
                                                       _tl124704124730_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124600124715_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124600124715_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl124607124931_))
                                          (let ((___splice125786125787_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl124607124931_
                                                    '0))))
                                            (let ((_tl124704124730_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125786125787_
                                                      '1)))
                                                  (_target124702124728_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125786125787_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124704124730_))
                                                  (___match126035126036_
                                                   _e124609124926_
                                                   _hd124608124929_
                                                   _tl124607124931_
                                                   ___splice125786125787_
                                                   _target124702124728_
                                                   _tl124704124730_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124600124715_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g124600124715_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124607124931_))
                                      (let ((___splice125786125787_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124607124931_
                                                '0))))
                                        (let ((_tl124704124730_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125786125787_
                                                  '1)))
                                              (_target124702124728_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125786125787_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124704124730_))
                                              (___match126035126036_
                                               _e124609124926_
                                               _hd124608124929_
                                               _tl124607124931_
                                               ___splice125786125787_
                                               _target124702124728_
                                               _tl124704124730_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124600124715_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124600124715_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl124607124931_))
                              (let ((___splice125786125787_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl124607124931_
                                        '0))))
                                (let ((_tl124704124730_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125786125787_
                                          '1)))
                                      (_target124702124728_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125786125787_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124704124730_))
                                      (___match126035126036_
                                       _e124609124926_
                                       _hd124608124929_
                                       _tl124607124931_
                                       ___splice125786125787_
                                       _target124702124728_
                                       _tl124704124730_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124600124715_)))))
                              (let ()
                                (declare (not safe))
                                (_g124600124715_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124607124931_))
                      (let ((___splice125786125787_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124607124931_ '0))))
                        (let ((_tl124704124730_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125786125787_ '1)))
                              (_target124702124728_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125786125787_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124704124730_))
                              (___match126035126036_
                               _e124609124926_
                               _hd124608124929_
                               _tl124607124931_
                               ___splice125786125787_
                               _target124702124728_
                               _tl124704124730_)
                              (let ()
                                (declare (not safe))
                                (_g124600124715_)))))
                      (let () (declare (not safe)) (_g124600124715_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl124607124931_))
                  (let ((___splice125786125787_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl124607124931_ '0))))
                    (let ((_tl124704124730_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125786125787_ '1)))
                          (_target124702124728_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125786125787_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl124704124730_))
                          (___match126035126036_
                           _e124609124926_
                           _hd124608124929_
                           _tl124607124931_
                           ___splice125786125787_
                           _target124702124728_
                           _tl124704124730_)
                          (let () (declare (not safe)) (_g124600124715_)))))
                  (let () (declare (not safe)) (_g124600124715_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124607124931_))
                                                  (let ((___splice125786125787_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124607124931_
                                                            '0))))
                                                    (let ((_tl124704124730_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125786125787_
                                                              '1)))
                                                          (_target124702124728_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125786125787_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124704124730_))
                                                          (___match126035126036_
                                                           _e124609124926_
                                                           _hd124608124929_
                                                           _tl124607124931_
                                                           ___splice125786125787_
                                                           _target124702124728_
                                                           _tl124704124730_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124600124715_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124600124715_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124607124931_))
                                              (let ((___splice125786125787_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124607124931_
                                                        '0))))
                                                (let ((_tl124704124730_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125786125787_
                                                          '1)))
                                                      (_target124702124728_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125786125787_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124704124730_))
                                                      (___match126035126036_
                                                       _e124609124926_
                                                       _hd124608124929_
                                                       _tl124607124931_
                                                       ___splice125786125787_
                                                       _target124702124728_
                                                       _tl124704124730_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124600124715_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124600124715_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl124607124931_))
                                          (let ((___splice125786125787_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl124607124931_
                                                    '0))))
                                            (let ((_tl124704124730_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125786125787_
                                                      '1)))
                                                  (_target124702124728_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125786125787_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124704124730_))
                                                  (___match126035126036_
                                                   _e124609124926_
                                                   _hd124608124929_
                                                   _tl124607124931_
                                                   ___splice125786125787_
                                                   _target124702124728_
                                                   _tl124704124730_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124600124715_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g124600124715_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl124607124931_))
                                  (let ((___splice125786125787_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl124607124931_
                                            '0))))
                                    (let ((_tl124704124730_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125786125787_
                                              '1)))
                                          (_target124702124728_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125786125787_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124704124730_))
                                          (___match126035126036_
                                           _e124609124926_
                                           _hd124608124929_
                                           _tl124607124931_
                                           ___splice125786125787_
                                           _target124702124728_
                                           _tl124704124730_)
                                          (let ()
                                            (declare (not safe))
                                            (_g124600124715_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124600124715_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl124607124931_))
                          (let ((___splice125786125787_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl124607124931_
                                    '0))))
                            (let ((_tl124704124730_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice125786125787_ '1)))
                                  (_target124702124728_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice125786125787_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124704124730_))
                                  (___match126035126036_
                                   _e124609124926_
                                   _hd124608124929_
                                   _tl124607124931_
                                   ___splice125786125787_
                                   _target124702124728_
                                   _tl124704124730_)
                                  (let ()
                                    (declare (not safe))
                                    (_g124600124715_)))))
                          (let () (declare (not safe)) (_g124600124715_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124607124931_))
                      (let ((___splice125786125787_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124607124931_ '0))))
                        (let ((_tl124704124730_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125786125787_ '1)))
                              (_target124702124728_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125786125787_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124704124730_))
                              (___match126035126036_
                               _e124609124926_
                               _hd124608124929_
                               _tl124607124931_
                               ___splice125786125787_
                               _target124702124728_
                               _tl124704124730_)
                              (let ()
                                (declare (not safe))
                                (_g124600124715_)))))
                      (let () (declare (not safe)) (_g124600124715_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl124607124931_))
                                                      (let ((___splice125786125787_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl124607124931_ '0))))
                (let ((_tl124704124730_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125786125787_ '1)))
                      (_target124702124728_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125786125787_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl124704124730_))
                      (___match126035126036_
                       _e124609124926_
                       _hd124608124929_
                       _tl124607124931_
                       ___splice125786125787_
                       _target124702124728_
                       _tl124704124730_)
                      (let () (declare (not safe)) (_g124600124715_)))))
              (let () (declare (not safe)) (_g124600124715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124607124931_))
                                                  (let ((___splice125786125787_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124607124931_
                                                            '0))))
                                                    (let ((_tl124704124730_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125786125787_
                                                              '1)))
                                                          (_target124702124728_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125786125787_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124704124730_))
                                                          (___match126035126036_
                                                           _e124609124926_
                                                           _hd124608124929_
                                                           _tl124607124931_
                                                           ___splice125786125787_
                                                           _target124702124728_
                                                           _tl124704124730_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124600124715_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124600124715_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124607124931_))
                                              (let ((___splice125786125787_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124607124931_
                                                        '0))))
                                                (let ((_tl124704124730_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125786125787_
                                                          '1)))
                                                      (_target124702124728_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125786125787_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124704124730_))
                                                      (___match126035126036_
                                                       _e124609124926_
                                                       _hd124608124929_
                                                       _tl124607124931_
                                                       ___splice125786125787_
                                                       _target124702124728_
                                                       _tl124704124730_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124600124715_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124600124715_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124607124931_))
                                      (let ((___splice125786125787_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124607124931_
                                                '0))))
                                        (let ((_tl124704124730_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125786125787_
                                                  '1)))
                                              (_target124702124728_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125786125787_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124704124730_))
                                              (___match126035126036_
                                               _e124609124926_
                                               _hd124608124929_
                                               _tl124607124931_
                                               ___splice125786125787_
                                               _target124702124728_
                                               _tl124704124730_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124600124715_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124600124715_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl124607124931_))
                              (let ((___splice125786125787_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl124607124931_
                                        '0))))
                                (let ((_tl124704124730_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125786125787_
                                          '1)))
                                      (_target124702124728_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125786125787_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124704124730_))
                                      (___match126035126036_
                                       _e124609124926_
                                       _hd124608124929_
                                       _tl124607124931_
                                       ___splice125786125787_
                                       _target124702124728_
                                       _tl124704124730_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124600124715_)))))
                              (let ()
                                (declare (not safe))
                                (_g124600124715_))))))
                  (let () (declare (not safe)) (_g124600124715_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx124536_)
        (let* ((___stx126038126039_ _stx124536_)
               (_g124539124552_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126038126039_)))))
          (let ((___kont126040126041_
                 (lambda (_L124580_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L124580_))))
                (___kont126042126043_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126038126039_))
                (let ((_e124544124564_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126038126039_))))
                  (let ((_tl124542124569_
                         (let () (declare (not safe)) (##cdr _e124544124564_)))
                        (_hd124543124567_
                         (let ()
                           (declare (not safe))
                           (##car _e124544124564_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124542124569_))
                        (let ((_e124547124572_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124542124569_))))
                          (let ((_tl124545124577_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124547124572_)))
                                (_hd124546124575_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124547124572_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124545124577_))
                                (___kont126040126041_ _hd124546124575_)
                                (___kont126042126043_))))
                        (___kont126042126043_))))
                (___kont126042126043_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx124416_)
        (let* ((_g124418124435_
                (lambda (_g124419124432_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124419124432_))))
               (_g124417124533_
                (lambda (_g124419124438_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124419124438_))
                      (let ((_e124424124440_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124419124438_))))
                        (let ((_hd124423124443_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124424124440_)))
                              (_tl124422124445_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124424124440_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124422124445_))
                              (let ((_e124427124448_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124422124445_))))
                                (let ((_hd124426124451_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124427124448_)))
                                      (_tl124425124453_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124427124448_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124425124453_))
                                      (let ((_e124430124456_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124425124453_))))
                                        (let ((_hd124429124459_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124430124456_)))
                                              (_tl124428124461_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124430124456_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124428124461_))
                                              ((lambda (_L124464_ _L124465_)
                                                 (let* ((___stx126060126061_
                                                         _L124465_)
                                                        (_g124481124492_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx126060126061_)))))
                                                   (let ((___kont126062126063_
                                                          (lambda (_L124512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L124513_)
                    (let ((_$e124525_
                           (let ((__tmp127785
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L124513_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp127785))))
                      (if _$e124525_
                          ((lambda (_type-e124528_)
                             (_type-e124528_ _stx124416_ _L124465_))
                           _$e124525_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L124464_))))))
                 (___kont126064126065_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L124464_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match126071126072_
                                                            (lambda (_e124487124504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd124486124507_
                             _tl124485124509_)
                      (let ((_L124512_ _tl124485124509_)
                            (_L124513_ _hd124486124507_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L124513_))
                            (___kont126062126063_ _L124512_ _L124513_)
                            (___kont126064126065_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx126060126061_))
                   (let ((_e124487124504_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx126060126061_))))
                     (let ((_tl124485124509_
                            (let ()
                              (declare (not safe))
                              (##cdr _e124487124504_)))
                           (_hd124486124507_
                            (let ()
                              (declare (not safe))
                              (##car _e124487124504_))))
                       (___match126071126072_
                        _e124487124504_
                        _hd124486124507_
                        _tl124485124509_)))
                   (___kont126064126065_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd124429124459_
                                               _hd124426124451_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124418124435_
                                                 _g124419124438_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124418124435_ _g124419124438_)))))
                              (let ()
                                (declare (not safe))
                                (_g124418124435_ _g124419124438_)))))
                      (let ()
                        (declare (not safe))
                        (_g124418124435_ _g124419124438_))))))
          (declare (not safe))
          (_g124417124533_ _stx124416_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx124260_ _ann124261_)
        (let* ((_g124263124300_
                (lambda (_g124264124297_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124264124297_))))
               (_g124262124413_
                (lambda (_g124264124303_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124264124303_))
                      (let ((_e124274124305_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124264124303_))))
                        (let ((_hd124273124308_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124274124305_)))
                              (_tl124272124310_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124274124305_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124272124310_))
                              (let ((_e124277124313_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124272124310_))))
                                (let ((_hd124276124316_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124277124313_)))
                                      (_tl124275124318_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124277124313_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124275124318_))
                                      (let ((_e124280124321_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124275124318_))))
                                        (let ((_hd124279124324_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124280124321_)))
                                              (_tl124278124326_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124280124321_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124278124326_))
                                              (let ((_e124283124329_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124278124326_))))
                                                (let ((_hd124282124332_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124283124329_)))
                                                      (_tl124281124334_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124283124329_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124281124334_))
                                                      (let ((_e124286124337_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124281124334_))))
                (let ((_hd124285124340_
                       (let () (declare (not safe)) (##car _e124286124337_)))
                      (_tl124284124342_
                       (let () (declare (not safe)) (##cdr _e124286124337_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl124284124342_))
                      (let ((_e124289124345_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124284124342_))))
                        (let ((_hd124288124348_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124289124345_)))
                              (_tl124287124350_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124289124345_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124287124350_))
                              (let ((_e124292124353_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124287124350_))))
                                (let ((_hd124291124356_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124292124353_)))
                                      (_tl124290124358_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124292124353_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124290124358_))
                                      (let ((_e124295124361_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124290124358_))))
                                        (let ((_hd124294124364_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124295124361_)))
                                              (_tl124293124366_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124295124361_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124293124366_))
                                              ((lambda (_L124369_
                                                        _L124370_
                                                        _L124371_
                                                        _L124372_
                                                        _L124373_
                                                        _L124374_
                                                        _L124375_)
                                                 (let ((_type-id124405_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124375_)))
                                                       (_super124406_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L124374_)))
                                                       (_slots124407_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L124373_)))
                                                       (_ctor-method124408_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124372_)))
                                                       (_struct?124409_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124371_)))
                                                       (_final?124410_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124370_)))
                                                       (_metaclass124411_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L124369_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L124369_))
                                                            '#f)))
                                                   (let ((__obj127743
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
                                                      __obj127743
                                                      _type-id124405_
                                                      _super124406_
                                                      _slots124407_
                                                      _ctor-method124408_
                                                      _struct?124409_
                                                      _final?124410_
                                                      _metaclass124411_)
                                                     __obj127743)))
                                               _hd124294124364_
                                               _hd124291124356_
                                               _hd124288124348_
                                               _hd124285124340_
                                               _hd124282124332_
                                               _hd124279124324_
                                               _hd124276124316_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124263124300_
                                                 _g124264124303_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124263124300_ _g124264124303_)))))
                              (let ()
                                (declare (not safe))
                                (_g124263124300_ _g124264124303_)))))
                      (let ()
                        (declare (not safe))
                        (_g124263124300_ _g124264124303_)))))
              (let ()
                (declare (not safe))
                (_g124263124300_ _g124264124303_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g124263124300_
                                                 _g124264124303_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124263124300_ _g124264124303_)))))
                              (let ()
                                (declare (not safe))
                                (_g124263124300_ _g124264124303_)))))
                      (let ()
                        (declare (not safe))
                        (_g124263124300_ _g124264124303_))))))
          (declare (not safe))
          (_g124262124413_ _ann124261_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx124208_ _ann124209_)
        (let* ((_g124211124224_
                (lambda (_g124212124221_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124212124221_))))
               (_g124210124257_
                (lambda (_g124212124227_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124212124227_))
                      (let ((_e124216124229_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124212124227_))))
                        (let ((_hd124215124232_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124216124229_)))
                              (_tl124214124234_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124216124229_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124214124234_))
                              (let ((_e124219124237_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124214124234_))))
                                (let ((_hd124218124240_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124219124237_)))
                                      (_tl124217124242_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124219124237_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124217124242_))
                                      ((lambda (_L124245_)
                                         (let ((__tmp127786
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124245_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp127786)))
                                       _hd124218124240_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124211124224_ _g124212124227_)))))
                              (let ()
                                (declare (not safe))
                                (_g124211124224_ _g124212124227_)))))
                      (let ()
                        (declare (not safe))
                        (_g124211124224_ _g124212124227_))))))
          (declare (not safe))
          (_g124210124257_ _ann124209_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx124156_ _ann124157_)
        (let* ((_g124159124172_
                (lambda (_g124160124169_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124160124169_))))
               (_g124158124205_
                (lambda (_g124160124175_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124160124175_))
                      (let ((_e124164124177_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124160124175_))))
                        (let ((_hd124163124180_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124164124177_)))
                              (_tl124162124182_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124164124177_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124162124182_))
                              (let ((_e124167124185_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124162124182_))))
                                (let ((_hd124166124188_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124167124185_)))
                                      (_tl124165124190_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124167124185_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124165124190_))
                                      ((lambda (_L124193_)
                                         (let ((__tmp127787
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124193_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp127787)))
                                       _hd124166124188_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124159124172_ _g124160124175_)))))
                              (let ()
                                (declare (not safe))
                                (_g124159124172_ _g124160124175_)))))
                      (let ()
                        (declare (not safe))
                        (_g124159124172_ _g124160124175_))))))
          (declare (not safe))
          (_g124158124205_ _ann124157_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx124072_ _ann124073_)
        (let* ((_g124075124096_
                (lambda (_g124076124093_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124076124093_))))
               (_g124074124153_
                (lambda (_g124076124099_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124076124099_))
                      (let ((_e124082124101_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124076124099_))))
                        (let ((_hd124081124104_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124082124101_)))
                              (_tl124080124106_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124082124101_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124080124106_))
                              (let ((_e124085124109_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124080124106_))))
                                (let ((_hd124084124112_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124085124109_)))
                                      (_tl124083124114_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124085124109_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124083124114_))
                                      (let ((_e124088124117_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124083124114_))))
                                        (let ((_hd124087124120_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124088124117_)))
                                              (_tl124086124122_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124088124117_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124086124122_))
                                              (let ((_e124091124125_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124086124122_))))
                                                (let ((_hd124090124128_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124091124125_)))
                                                      (_tl124089124130_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124091124125_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124089124130_))
                                                      ((lambda (_L124133_
                                                                _L124134_
                                                                _L124135_)
                                                         (let ((__tmp127790
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L124135_)))
                       (__tmp127789
                        (let () (declare (not safe)) (gx#stx-e _L124134_)))
                       (__tmp127788
                        (let () (declare (not safe)) (gx#stx-e _L124133_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp127790
                    __tmp127789
                    __tmp127788)))
               _hd124090124128_
               _hd124087124120_
               _hd124084124112_)
              (let ()
                (declare (not safe))
                (_g124075124096_ _g124076124099_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g124075124096_
                                                 _g124076124099_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124075124096_ _g124076124099_)))))
                              (let ()
                                (declare (not safe))
                                (_g124075124096_ _g124076124099_)))))
                      (let ()
                        (declare (not safe))
                        (_g124075124096_ _g124076124099_))))))
          (declare (not safe))
          (_g124074124153_ _ann124073_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx123988_ _ann123989_)
        (let* ((_g123991124012_
                (lambda (_g123992124009_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123992124009_))))
               (_g123990124069_
                (lambda (_g123992124015_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123992124015_))
                      (let ((_e123998124017_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123992124015_))))
                        (let ((_hd123997124020_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123998124017_)))
                              (_tl123996124022_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123998124017_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123996124022_))
                              (let ((_e124001124025_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123996124022_))))
                                (let ((_hd124000124028_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124001124025_)))
                                      (_tl123999124030_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124001124025_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123999124030_))
                                      (let ((_e124004124033_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123999124030_))))
                                        (let ((_hd124003124036_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124004124033_)))
                                              (_tl124002124038_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124004124033_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124002124038_))
                                              (let ((_e124007124041_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124002124038_))))
                                                (let ((_hd124006124044_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124007124041_)))
                                                      (_tl124005124046_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124007124041_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124005124046_))
                                                      ((lambda (_L124049_
                                                                _L124050_
                                                                _L124051_)
                                                         (let ((__tmp127793
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L124051_)))
                       (__tmp127792
                        (let () (declare (not safe)) (gx#stx-e _L124050_)))
                       (__tmp127791
                        (let () (declare (not safe)) (gx#stx-e _L124049_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp127793
                    __tmp127792
                    __tmp127791)))
               _hd124006124044_
               _hd124003124036_
               _hd124000124028_)
              (let ()
                (declare (not safe))
                (_g123991124012_ _g123992124015_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g123991124012_
                                                 _g123992124015_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g123991124012_ _g123992124015_)))))
                              (let ()
                                (declare (not safe))
                                (_g123991124012_ _g123992124015_)))))
                      (let ()
                        (declare (not safe))
                        (_g123991124012_ _g123992124015_))))))
          (declare (not safe))
          (_g123990124069_ _ann123989_))))
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
      (lambda (_stx123108_)
        (let* ((___stx126074126075_ _stx123108_)
               (_g123114123310_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126074126075_)))))
          (let ((___kont126076126077_
                 (lambda (_L123976_)
                   (let ((__obj127744
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj127744
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123976_))
                      '#f)
                     __obj127744)))
                (___kont126078126079_
                 (lambda (_L123903_
                          _L123904_
                          _L123905_
                          _L123906_
                          _L123907_
                          _L123908_)
                   (let* ((_tab123958_
                           (let () (declare (not safe)) (gx#stx-e _L123905_)))
                          (_keys123960_
                           (if _tab123958_
                               (let ((__tmp127794 (vector->list _tab123958_)))
                                 (declare (not safe))
                                 (filter values __tmp127794))
                               '#f)))
                     (let ((__tmp127795
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L123904_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys123960_
                        __tmp127795)))))
                (___kont126080126081_
                 (lambda (_L123636_
                          _L123637_
                          _L123638_
                          _L123639_
                          _L123640_
                          _L123641_
                          _L123642_
                          _L123643_
                          _L123644_
                          _L123645_)
                   (let ((__tmp127797
                          (map gx#stx-e
                               (let ((__tmp127798
                                      (lambda (_g123738123741_ _g123739123743_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g123738123741_
                                                _g123739123743_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp127798 '() _L123638_))))
                         (__tmp127796
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L123642_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp127797
                      __tmp127796))))
                (___kont126084126085_
                 (lambda (_L123346_)
                   (let ((__obj127745
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj127745
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123346_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L123346_)))
                     __obj127745)))
                (___kont126086126087_
                 (lambda (_L123323_)
                   (let ((__obj127746
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj127746
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123323_))
                      '#f)
                     __obj127746))))
            (let* ((___match126393126394_
                    (lambda (_e123301123338_ _hd123300123341_ _tl123299123343_)
                      (let ((_L123346_ _tl123299123343_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L123346_))
                            (___kont126084126085_ _L123346_)
                            (___kont126086126087_ _tl123299123343_)))))
                   (___match126387126388_
                    (lambda (_e123195123360_
                             _hd123194123363_
                             _tl123193123365_
                             _e123198123368_
                             _hd123197123371_
                             _tl123196123373_
                             _e123201123376_
                             _hd123200123379_
                             _tl123199123381_
                             _e123204123384_
                             _hd123203123387_
                             _tl123202123389_
                             _e123207123392_
                             _hd123206123395_
                             _tl123205123397_
                             _e123210123400_
                             _hd123209123403_
                             _tl123208123405_
                             _e123213123408_
                             _hd123212123411_
                             _tl123211123413_
                             _e123216123416_
                             _hd123215123419_
                             _tl123214123421_
                             _e123219123424_
                             _hd123218123427_
                             _tl123217123429_
                             _e123222123432_
                             _hd123221123435_
                             _tl123220123437_
                             _e123225123440_
                             _hd123224123443_
                             _tl123223123445_
                             _e123228123448_
                             _hd123227123451_
                             _tl123226123453_
                             _e123231123456_
                             _hd123230123459_
                             _tl123229123461_
                             _e123234123464_
                             _hd123233123467_
                             _tl123232123469_
                             ___splice126082126083_
                             _target123235123472_
                             _tl123237123474_
                             _e123252123477_
                             _hd123251123480_
                             _tl123250123482_
                             _e123255123485_
                             _hd123254123488_
                             _tl123253123490_
                             _e123258123493_
                             _hd123257123496_
                             _tl123256123498_)
                      (letrec ((_loop123238123501_
                                (lambda (_hd123236123504_
                                         _-absent-value123242123506_
                                         _key123243123508_
                                         _-xkwvar123244123510_
                                         _-hash-ref123245123512_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123236123504_))
                                      (let ((_e123239123515_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123236123504_))))
                                        (let ((_lp-tl123241123520_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123239123515_)))
                                              (_lp-hd123240123518_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123239123515_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd123240123518_))
                                              (let ((_e123261123523_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd123240123518_))))
                                                (let ((_tl123259123528_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123261123523_)))
                                                      (_hd123260123526_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123261123523_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd123260123526_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd123260123526_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl123259123528_))
                      (let ((_e123264123531_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl123259123528_))))
                        (let ((_tl123262123536_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123264123531_)))
                              (_hd123263123534_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123264123531_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd123263123534_))
                              (let ((_e123267123539_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd123263123534_))))
                                (let ((_tl123265123544_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123267123539_)))
                                      (_hd123266123542_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123267123539_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd123266123542_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd123266123542_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123265123544_))
                                              (let ((_e123270123547_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123265123544_))))
                                                (let ((_tl123268123552_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123270123547_)))
                                                      (_hd123269123550_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123270123547_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123268123552_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123262123536_))
                                                          (let ((_e123273123555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123262123536_))))
                    (let ((_tl123271123560_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123273123555_)))
                          (_hd123272123558_
                           (let ()
                             (declare (not safe))
                             (##car _e123273123555_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123272123558_))
                          (let ((_e123276123563_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123272123558_))))
                            (let ((_tl123274123568_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123276123563_)))
                                  (_hd123275123566_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123276123563_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123275123566_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123275123566_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123274123568_))
                                          (let ((_e123279123571_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123274123568_))))
                                            (let ((_tl123277123576_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123279123571_)))
                                                  (_hd123278123574_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123279123571_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123277123576_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123271123560_))
                                                      (let ((_e123282123579_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123271123560_))))
                (let ((_tl123280123584_
                       (let () (declare (not safe)) (##cdr _e123282123579_)))
                      (_hd123281123582_
                       (let () (declare (not safe)) (##car _e123282123579_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123281123582_))
                      (let ((_e123285123587_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123281123582_))))
                        (let ((_tl123283123592_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123285123587_)))
                              (_hd123284123590_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123285123587_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123284123590_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd123284123590_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123283123592_))
                                      (let ((_e123288123595_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123283123592_))))
                                        (let ((_tl123286123600_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123288123595_)))
                                              (_hd123287123598_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123288123595_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123286123600_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123280123584_))
                                                  (let ((_e123291123603_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123280123584_))))
                                                    (let ((_tl123289123608_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123291123603_)))
                                                          (_hd123290123606_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123291123603_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123290123606_))
                                                          (let ((_e123294123611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123290123606_))))
                    (let ((_tl123292123616_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123294123611_)))
                          (_hd123293123614_
                           (let ()
                             (declare (not safe))
                             (##car _e123294123611_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123293123614_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123293123614_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123292123616_))
                                  (let ((_e123297123619_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123292123616_))))
                                    (let ((_tl123295123624_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123297123619_)))
                                          (_hd123296123622_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123297123619_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123295123624_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123289123608_))
                                              (let ((__tmp127813
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123296123622_
                                                             _-absent-value123242123506_)))
                                                    (__tmp127812
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123287123598_
                                                             _key123243123508_)))
                                                    (__tmp127811
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123278123574_
                                                             _-xkwvar123244123510_)))
                                                    (__tmp127810
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123269123550_
                                                             _-hash-ref123245123512_))))
                                                (declare (not safe))
                                                (_loop123238123501_
                                                 _lp-tl123241123520_
                                                 __tmp127813
                                                 __tmp127812
                                                 __tmp127811
                                                 __tmp127810))
                                              (___match126393126394_
                                               _e123195123360_
                                               _hd123194123363_
                                               _tl123193123365_))
                                          (___match126393126394_
                                           _e123195123360_
                                           _hd123194123363_
                                           _tl123193123365_))))
                                  (___match126393126394_
                                   _e123195123360_
                                   _hd123194123363_
                                   _tl123193123365_))
                              (___match126393126394_
                               _e123195123360_
                               _hd123194123363_
                               _tl123193123365_))
                          (___match126393126394_
                           _e123195123360_
                           _hd123194123363_
                           _tl123193123365_))))
                  (___match126393126394_
                   _e123195123360_
                   _hd123194123363_
                   _tl123193123365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126393126394_
                                                   _e123195123360_
                                                   _hd123194123363_
                                                   _tl123193123365_))
                                              (___match126393126394_
                                               _e123195123360_
                                               _hd123194123363_
                                               _tl123193123365_))))
                                      (___match126393126394_
                                       _e123195123360_
                                       _hd123194123363_
                                       _tl123193123365_))
                                  (___match126393126394_
                                   _e123195123360_
                                   _hd123194123363_
                                   _tl123193123365_))
                              (___match126393126394_
                               _e123195123360_
                               _hd123194123363_
                               _tl123193123365_))))
                      (___match126393126394_
                       _e123195123360_
                       _hd123194123363_
                       _tl123193123365_))))
              (___match126393126394_
               _e123195123360_
               _hd123194123363_
               _tl123193123365_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126393126394_
                                                   _e123195123360_
                                                   _hd123194123363_
                                                   _tl123193123365_))))
                                          (___match126393126394_
                                           _e123195123360_
                                           _hd123194123363_
                                           _tl123193123365_))
                                      (___match126393126394_
                                       _e123195123360_
                                       _hd123194123363_
                                       _tl123193123365_))
                                  (___match126393126394_
                                   _e123195123360_
                                   _hd123194123363_
                                   _tl123193123365_))))
                          (___match126393126394_
                           _e123195123360_
                           _hd123194123363_
                           _tl123193123365_))))
                  (___match126393126394_
                   _e123195123360_
                   _hd123194123363_
                   _tl123193123365_))
              (___match126393126394_
               _e123195123360_
               _hd123194123363_
               _tl123193123365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126393126394_
                                               _e123195123360_
                                               _hd123194123363_
                                               _tl123193123365_))
                                          (___match126393126394_
                                           _e123195123360_
                                           _hd123194123363_
                                           _tl123193123365_))
                                      (___match126393126394_
                                       _e123195123360_
                                       _hd123194123363_
                                       _tl123193123365_))))
                              (___match126393126394_
                               _e123195123360_
                               _hd123194123363_
                               _tl123193123365_))))
                      (___match126393126394_
                       _e123195123360_
                       _hd123194123363_
                       _tl123193123365_))
                  (___match126393126394_
                   _e123195123360_
                   _hd123194123363_
                   _tl123193123365_))
              (___match126393126394_
               _e123195123360_
               _hd123194123363_
               _tl123193123365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126393126394_
                                               _e123195123360_
                                               _hd123194123363_
                                               _tl123193123365_))))
                                      (let ((_-hash-ref123249123633_
                                             (reverse _-hash-ref123245123512_))
                                            (_-xkwvar123248123631_
                                             (reverse _-xkwvar123244123510_))
                                            (_key123247123629_
                                             (reverse _key123243123508_))
                                            (_-absent-value123246123627_
                                             (reverse _-absent-value123242123506_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123202123389_))
                                            (let ((_L123636_ _hd123257123496_)
                                                  (_L123637_
                                                   _-absent-value123246123627_)
                                                  (_L123638_ _key123247123629_)
                                                  (_L123639_
                                                   _-xkwvar123248123631_)
                                                  (_L123640_
                                                   _-hash-ref123249123633_)
                                                  (_L123641_ _hd123233123467_)
                                                  (_L123642_ _hd123224123443_)
                                                  (_L123643_ _hd123215123419_)
                                                  (_L123644_ _tl123199123381_)
                                                  (_L123645_ _hd123200123379_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L123645_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L123644_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L123643_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L123645_
                                                          _L123641_))
                                                       (let ((__tmp127808
                                                              (let ((__tmp127809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g123698123701_ _g123699123703_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123698123701_ _g123699123703_)))))
                        (declare (not safe))
                        (foldr1 __tmp127809 '() _L123638_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp127808))
               (let ((__tmp127807
                      (lambda (_g123705123707_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g123705123707_
                           'hash-ref))))
                     (__tmp127805
                      (let ((__tmp127806
                             (lambda (_g123709123712_ _g123710123714_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123709123712_ _g123710123714_)))))
                        (declare (not safe))
                        (foldr1 __tmp127806 '() _L123640_))))
                 (declare (not safe))
                 (andmap1 __tmp127807 __tmp127805))
               (let ((__tmp127804
                      (lambda (_g123716123718_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g123716123718_
                           'absent-value))))
                     (__tmp127802
                      (let ((__tmp127803
                             (lambda (_g123720123723_ _g123721123725_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123720123723_ _g123721123725_)))))
                        (declare (not safe))
                        (foldr1 __tmp127803 '() _L123637_))))
                 (declare (not safe))
                 (andmap1 __tmp127804 __tmp127802))
               (let ((__tmp127801
                      (lambda (_g123727123729_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g123727123729_ _L123645_))))
                     (__tmp127799
                      (let ((__tmp127800
                             (lambda (_g123731123734_ _g123732123736_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123731123734_ _g123732123736_)))))
                        (declare (not safe))
                        (foldr1 __tmp127800 '() _L123639_))))
                 (declare (not safe))
                 (andmap1 __tmp127801 __tmp127799)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126080126081_
                                                   _L123636_
                                                   _L123637_
                                                   _L123638_
                                                   _L123639_
                                                   _L123640_
                                                   _L123641_
                                                   _L123642_
                                                   _L123643_
                                                   _L123644_
                                                   _L123645_)
                                                  (___match126393126394_
                                                   _e123195123360_
                                                   _hd123194123363_
                                                   _tl123193123365_)))
                                            (___match126393126394_
                                             _e123195123360_
                                             _hd123194123363_
                                             _tl123193123365_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123238123501_
                           _target123235123472_
                           '()
                           '()
                           '()
                           '())))))
                   (___match126259126260_
                    (lambda (_e123195123360_
                             _hd123194123363_
                             _tl123193123365_
                             _e123198123368_
                             _hd123197123371_
                             _tl123196123373_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123197123371_))
                          (let ((_e123201123376_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123197123371_))))
                            (let ((_tl123199123381_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123201123376_)))
                                  (_hd123200123379_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123201123376_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123196123373_))
                                  (let ((_e123204123384_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123196123373_))))
                                    (let ((_tl123202123389_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123204123384_)))
                                          (_hd123203123387_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123204123384_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd123203123387_))
                                          (let ((_e123207123392_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd123203123387_))))
                                            (let ((_tl123205123397_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123207123392_)))
                                                  (_hd123206123395_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123207123392_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd123206123395_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd123206123395_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123205123397_))
                                                          (let ((_e123210123400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123205123397_))))
                    (let ((_tl123208123405_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123210123400_)))
                          (_hd123209123403_
                           (let ()
                             (declare (not safe))
                             (##car _e123210123400_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123209123403_))
                          (let ((_e123213123408_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123209123403_))))
                            (let ((_tl123211123413_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123213123408_)))
                                  (_hd123212123411_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123213123408_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123212123411_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123212123411_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123211123413_))
                                          (let ((_e123216123416_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123211123413_))))
                                            (let ((_tl123214123421_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123216123416_)))
                                                  (_hd123215123419_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123216123416_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123214123421_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123208123405_))
                                                      (let ((_e123219123424_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123208123405_))))
                (let ((_tl123217123429_
                       (let () (declare (not safe)) (##cdr _e123219123424_)))
                      (_hd123218123427_
                       (let () (declare (not safe)) (##car _e123219123424_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123218123427_))
                      (let ((_e123222123432_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123218123427_))))
                        (let ((_tl123220123437_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123222123432_)))
                              (_hd123221123435_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123222123432_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123221123435_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123221123435_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123220123437_))
                                      (let ((_e123225123440_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123220123437_))))
                                        (let ((_tl123223123445_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123225123440_)))
                                              (_hd123224123443_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123225123440_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123223123445_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123217123429_))
                                                  (let ((_e123228123448_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123217123429_))))
                                                    (let ((_tl123226123453_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123228123448_)))
                                                          (_hd123227123451_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123228123448_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123227123451_))
                                                          (let ((_e123231123456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123227123451_))))
                    (let ((_tl123229123461_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123231123456_)))
                          (_hd123230123459_
                           (let ()
                             (declare (not safe))
                             (##car _e123231123456_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123230123459_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123230123459_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123229123461_))
                                  (let ((_e123234123464_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123229123461_))))
                                    (let ((_tl123232123469_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123234123464_)))
                                          (_hd123233123467_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123234123464_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123232123469_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl123226123453_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl123226123453_))
                                                        '1)
                                                  (let ((___splice126082126083_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl123226123453_
                                                            '1))))
                                                    (let ((_tl123237123474_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126082126083_
                                                              '1)))
                                                          (_target123235123472_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126082126083_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123237123474_))
                                                          (let ((_e123252123477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123237123474_))))
                    (let ((_tl123250123482_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123252123477_)))
                          (_hd123251123480_
                           (let ()
                             (declare (not safe))
                             (##car _e123252123477_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123251123480_))
                          (let ((_e123255123485_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123251123480_))))
                            (let ((_tl123253123490_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123255123485_)))
                                  (_hd123254123488_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123255123485_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123254123488_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123254123488_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123253123490_))
                                          (let ((_e123258123493_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123253123490_))))
                                            (let ((_tl123256123498_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123258123493_)))
                                                  (_hd123257123496_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123258123493_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123256123498_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123250123482_))
                                                      (___match126387126388_
                                                       _e123195123360_
                                                       _hd123194123363_
                                                       _tl123193123365_
                                                       _e123198123368_
                                                       _hd123197123371_
                                                       _tl123196123373_
                                                       _e123201123376_
                                                       _hd123200123379_
                                                       _tl123199123381_
                                                       _e123204123384_
                                                       _hd123203123387_
                                                       _tl123202123389_
                                                       _e123207123392_
                                                       _hd123206123395_
                                                       _tl123205123397_
                                                       _e123210123400_
                                                       _hd123209123403_
                                                       _tl123208123405_
                                                       _e123213123408_
                                                       _hd123212123411_
                                                       _tl123211123413_
                                                       _e123216123416_
                                                       _hd123215123419_
                                                       _tl123214123421_
                                                       _e123219123424_
                                                       _hd123218123427_
                                                       _tl123217123429_
                                                       _e123222123432_
                                                       _hd123221123435_
                                                       _tl123220123437_
                                                       _e123225123440_
                                                       _hd123224123443_
                                                       _tl123223123445_
                                                       _e123228123448_
                                                       _hd123227123451_
                                                       _tl123226123453_
                                                       _e123231123456_
                                                       _hd123230123459_
                                                       _tl123229123461_
                                                       _e123234123464_
                                                       _hd123233123467_
                                                       _tl123232123469_
                                                       ___splice126082126083_
                                                       _target123235123472_
                                                       _tl123237123474_
                                                       _e123252123477_
                                                       _hd123251123480_
                                                       _tl123250123482_
                                                       _e123255123485_
                                                       _hd123254123488_
                                                       _tl123253123490_
                                                       _e123258123493_
                                                       _hd123257123496_
                                                       _tl123256123498_)
                                                      (___match126393126394_
                                                       _e123195123360_
                                                       _hd123194123363_
                                                       _tl123193123365_))
                                                  (___match126393126394_
                                                   _e123195123360_
                                                   _hd123194123363_
                                                   _tl123193123365_))))
                                          (___match126393126394_
                                           _e123195123360_
                                           _hd123194123363_
                                           _tl123193123365_))
                                      (___match126393126394_
                                       _e123195123360_
                                       _hd123194123363_
                                       _tl123193123365_))
                                  (___match126393126394_
                                   _e123195123360_
                                   _hd123194123363_
                                   _tl123193123365_))))
                          (___match126393126394_
                           _e123195123360_
                           _hd123194123363_
                           _tl123193123365_))))
                  (___match126393126394_
                   _e123195123360_
                   _hd123194123363_
                   _tl123193123365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126393126394_
                                                   _e123195123360_
                                                   _hd123194123363_
                                                   _tl123193123365_))
                                              (___match126393126394_
                                               _e123195123360_
                                               _hd123194123363_
                                               _tl123193123365_))
                                          (___match126393126394_
                                           _e123195123360_
                                           _hd123194123363_
                                           _tl123193123365_))))
                                  (___match126393126394_
                                   _e123195123360_
                                   _hd123194123363_
                                   _tl123193123365_))
                              (___match126393126394_
                               _e123195123360_
                               _hd123194123363_
                               _tl123193123365_))
                          (___match126393126394_
                           _e123195123360_
                           _hd123194123363_
                           _tl123193123365_))))
                  (___match126393126394_
                   _e123195123360_
                   _hd123194123363_
                   _tl123193123365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126393126394_
                                                   _e123195123360_
                                                   _hd123194123363_
                                                   _tl123193123365_))
                                              (___match126393126394_
                                               _e123195123360_
                                               _hd123194123363_
                                               _tl123193123365_))))
                                      (___match126393126394_
                                       _e123195123360_
                                       _hd123194123363_
                                       _tl123193123365_))
                                  (___match126393126394_
                                   _e123195123360_
                                   _hd123194123363_
                                   _tl123193123365_))
                              (___match126393126394_
                               _e123195123360_
                               _hd123194123363_
                               _tl123193123365_))))
                      (___match126393126394_
                       _e123195123360_
                       _hd123194123363_
                       _tl123193123365_))))
              (___match126393126394_
               _e123195123360_
               _hd123194123363_
               _tl123193123365_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126393126394_
                                                   _e123195123360_
                                                   _hd123194123363_
                                                   _tl123193123365_))))
                                          (___match126393126394_
                                           _e123195123360_
                                           _hd123194123363_
                                           _tl123193123365_))
                                      (___match126393126394_
                                       _e123195123360_
                                       _hd123194123363_
                                       _tl123193123365_))
                                  (___match126393126394_
                                   _e123195123360_
                                   _hd123194123363_
                                   _tl123193123365_))))
                          (___match126393126394_
                           _e123195123360_
                           _hd123194123363_
                           _tl123193123365_))))
                  (___match126393126394_
                   _e123195123360_
                   _hd123194123363_
                   _tl123193123365_))
              (___match126393126394_
               _e123195123360_
               _hd123194123363_
               _tl123193123365_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126393126394_
                                                   _e123195123360_
                                                   _hd123194123363_
                                                   _tl123193123365_))))
                                          (___match126393126394_
                                           _e123195123360_
                                           _hd123194123363_
                                           _tl123193123365_))))
                                  (___match126393126394_
                                   _e123195123360_
                                   _hd123194123363_
                                   _tl123193123365_))))
                          (___match126393126394_
                           _e123195123360_
                           _hd123194123363_
                           _tl123193123365_))))
                   (___match126247126248_
                    (lambda (_e123128123751_
                             _hd123127123754_
                             _tl123126123756_
                             _e123131123759_
                             _hd123130123762_
                             _tl123129123764_
                             _e123134123767_
                             _hd123133123770_
                             _tl123132123772_
                             _e123137123775_
                             _hd123136123778_
                             _tl123135123780_
                             _e123140123783_
                             _hd123139123786_
                             _tl123138123788_
                             _e123143123791_
                             _hd123142123794_
                             _tl123141123796_
                             _e123146123799_
                             _hd123145123802_
                             _tl123144123804_
                             _e123149123807_
                             _hd123148123810_
                             _tl123147123812_
                             _e123152123815_
                             _hd123151123818_
                             _tl123150123820_
                             _e123155123823_
                             _hd123154123826_
                             _tl123153123828_
                             _e123158123831_
                             _hd123157123834_
                             _tl123156123836_
                             _e123161123839_
                             _hd123160123842_
                             _tl123159123844_
                             _e123164123847_
                             _hd123163123850_
                             _tl123162123852_
                             _e123167123855_
                             _hd123166123858_
                             _tl123165123860_
                             _e123170123863_
                             _hd123169123866_
                             _tl123168123868_
                             _e123173123871_
                             _hd123172123874_
                             _tl123171123876_
                             _e123176123879_
                             _hd123175123882_
                             _tl123174123884_
                             _e123179123887_
                             _hd123178123890_
                             _tl123177123892_
                             _e123182123895_
                             _hd123181123898_
                             _tl123180123900_)
                      (let ((_L123903_ _hd123181123898_)
                            (_L123904_ _hd123172123874_)
                            (_L123905_ _hd123163123850_)
                            (_L123906_ _hd123154123826_)
                            (_L123907_ _hd123145123802_)
                            (_L123908_ _hd123130123762_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L123908_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L123907_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L123906_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L123908_ _L123903_)))
                            (___kont126078126079_
                             _L123903_
                             _L123904_
                             _L123905_
                             _L123906_
                             _L123907_
                             _L123908_)
                            (___match126259126260_
                             _e123128123751_
                             _hd123127123754_
                             _tl123126123756_
                             _e123131123759_
                             _hd123130123762_
                             _tl123129123764_)))))
                   (___match126101126102_
                    (lambda (_e123128123751_ _hd123127123754_ _tl123126123756_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123126123756_))
                          (let ((_e123131123759_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123126123756_))))
                            (let ((_tl123129123764_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123131123759_)))
                                  (_hd123130123762_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123131123759_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123129123764_))
                                  (let ((_e123134123767_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123129123764_))))
                                    (let ((_tl123132123772_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123134123767_)))
                                          (_hd123133123770_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123134123767_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd123133123770_))
                                          (let ((_e123137123775_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd123133123770_))))
                                            (let ((_tl123135123780_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123137123775_)))
                                                  (_hd123136123778_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123137123775_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd123136123778_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd123136123778_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123135123780_))
                                                          (let ((_e123140123783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123135123780_))))
                    (let ((_tl123138123788_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123140123783_)))
                          (_hd123139123786_
                           (let ()
                             (declare (not safe))
                             (##car _e123140123783_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123139123786_))
                          (let ((_e123143123791_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123139123786_))))
                            (let ((_tl123141123796_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123143123791_)))
                                  (_hd123142123794_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123143123791_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123142123794_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123142123794_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123141123796_))
                                          (let ((_e123146123799_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123141123796_))))
                                            (let ((_tl123144123804_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123146123799_)))
                                                  (_hd123145123802_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123146123799_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123144123804_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123138123788_))
                                                      (let ((_e123149123807_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123138123788_))))
                (let ((_tl123147123812_
                       (let () (declare (not safe)) (##cdr _e123149123807_)))
                      (_hd123148123810_
                       (let () (declare (not safe)) (##car _e123149123807_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123148123810_))
                      (let ((_e123152123815_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123148123810_))))
                        (let ((_tl123150123820_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123152123815_)))
                              (_hd123151123818_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123152123815_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123151123818_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123151123818_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123150123820_))
                                      (let ((_e123155123823_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123150123820_))))
                                        (let ((_tl123153123828_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123155123823_)))
                                              (_hd123154123826_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123155123823_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123153123828_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123147123812_))
                                                  (let ((_e123158123831_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123147123812_))))
                                                    (let ((_tl123156123836_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123158123831_)))
                                                          (_hd123157123834_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123158123831_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123157123834_))
                                                          (let ((_e123161123839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123157123834_))))
                    (let ((_tl123159123844_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123161123839_)))
                          (_hd123160123842_
                           (let ()
                             (declare (not safe))
                             (##car _e123161123839_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123160123842_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd123160123842_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123159123844_))
                                  (let ((_e123164123847_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123159123844_))))
                                    (let ((_tl123162123852_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123164123847_)))
                                          (_hd123163123850_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123164123847_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123162123852_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123156123836_))
                                              (let ((_e123167123855_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123156123836_))))
                                                (let ((_tl123165123860_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123167123855_)))
                                                      (_hd123166123858_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123167123855_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd123166123858_))
                                                      (let ((_e123170123863_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd123166123858_))))
                (let ((_tl123168123868_
                       (let () (declare (not safe)) (##cdr _e123170123863_)))
                      (_hd123169123866_
                       (let () (declare (not safe)) (##car _e123170123863_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd123169123866_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd123169123866_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123168123868_))
                              (let ((_e123173123871_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123168123868_))))
                                (let ((_tl123171123876_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123173123871_)))
                                      (_hd123172123874_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123173123871_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123171123876_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123165123860_))
                                          (let ((_e123176123879_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123165123860_))))
                                            (let ((_tl123174123884_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123176123879_)))
                                                  (_hd123175123882_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123176123879_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd123175123882_))
                                                  (let ((_e123179123887_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd123175123882_))))
                                                    (let ((_tl123177123892_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123179123887_)))
                                                          (_hd123178123890_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123179123887_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd123178123890_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd123178123890_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123177123892_))
                          (let ((_e123182123895_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123177123892_))))
                            (let ((_tl123180123900_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123182123895_)))
                                  (_hd123181123898_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123182123895_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123180123900_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123174123884_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123132123772_))
                                          (___match126247126248_
                                           _e123128123751_
                                           _hd123127123754_
                                           _tl123126123756_
                                           _e123131123759_
                                           _hd123130123762_
                                           _tl123129123764_
                                           _e123134123767_
                                           _hd123133123770_
                                           _tl123132123772_
                                           _e123137123775_
                                           _hd123136123778_
                                           _tl123135123780_
                                           _e123140123783_
                                           _hd123139123786_
                                           _tl123138123788_
                                           _e123143123791_
                                           _hd123142123794_
                                           _tl123141123796_
                                           _e123146123799_
                                           _hd123145123802_
                                           _tl123144123804_
                                           _e123149123807_
                                           _hd123148123810_
                                           _tl123147123812_
                                           _e123152123815_
                                           _hd123151123818_
                                           _tl123150123820_
                                           _e123155123823_
                                           _hd123154123826_
                                           _tl123153123828_
                                           _e123158123831_
                                           _hd123157123834_
                                           _tl123156123836_
                                           _e123161123839_
                                           _hd123160123842_
                                           _tl123159123844_
                                           _e123164123847_
                                           _hd123163123850_
                                           _tl123162123852_
                                           _e123167123855_
                                           _hd123166123858_
                                           _tl123165123860_
                                           _e123170123863_
                                           _hd123169123866_
                                           _tl123168123868_
                                           _e123173123871_
                                           _hd123172123874_
                                           _tl123171123876_
                                           _e123176123879_
                                           _hd123175123882_
                                           _tl123174123884_
                                           _e123179123887_
                                           _hd123178123890_
                                           _tl123177123892_
                                           _e123182123895_
                                           _hd123181123898_
                                           _tl123180123900_)
                                          (___match126259126260_
                                           _e123128123751_
                                           _hd123127123754_
                                           _tl123126123756_
                                           _e123131123759_
                                           _hd123130123762_
                                           _tl123129123764_))
                                      (___match126259126260_
                                       _e123128123751_
                                       _hd123127123754_
                                       _tl123126123756_
                                       _e123131123759_
                                       _hd123130123762_
                                       _tl123129123764_))
                                  (___match126259126260_
                                   _e123128123751_
                                   _hd123127123754_
                                   _tl123126123756_
                                   _e123131123759_
                                   _hd123130123762_
                                   _tl123129123764_))))
                          (___match126259126260_
                           _e123128123751_
                           _hd123127123754_
                           _tl123126123756_
                           _e123131123759_
                           _hd123130123762_
                           _tl123129123764_))
                      (___match126259126260_
                       _e123128123751_
                       _hd123127123754_
                       _tl123126123756_
                       _e123131123759_
                       _hd123130123762_
                       _tl123129123764_))
                  (___match126259126260_
                   _e123128123751_
                   _hd123127123754_
                   _tl123126123756_
                   _e123131123759_
                   _hd123130123762_
                   _tl123129123764_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126259126260_
                                                   _e123128123751_
                                                   _hd123127123754_
                                                   _tl123126123756_
                                                   _e123131123759_
                                                   _hd123130123762_
                                                   _tl123129123764_))))
                                          (___match126259126260_
                                           _e123128123751_
                                           _hd123127123754_
                                           _tl123126123756_
                                           _e123131123759_
                                           _hd123130123762_
                                           _tl123129123764_))
                                      (___match126259126260_
                                       _e123128123751_
                                       _hd123127123754_
                                       _tl123126123756_
                                       _e123131123759_
                                       _hd123130123762_
                                       _tl123129123764_))))
                              (___match126259126260_
                               _e123128123751_
                               _hd123127123754_
                               _tl123126123756_
                               _e123131123759_
                               _hd123130123762_
                               _tl123129123764_))
                          (___match126259126260_
                           _e123128123751_
                           _hd123127123754_
                           _tl123126123756_
                           _e123131123759_
                           _hd123130123762_
                           _tl123129123764_))
                      (___match126259126260_
                       _e123128123751_
                       _hd123127123754_
                       _tl123126123756_
                       _e123131123759_
                       _hd123130123762_
                       _tl123129123764_))))
              (___match126259126260_
               _e123128123751_
               _hd123127123754_
               _tl123126123756_
               _e123131123759_
               _hd123130123762_
               _tl123129123764_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126259126260_
                                               _e123128123751_
                                               _hd123127123754_
                                               _tl123126123756_
                                               _e123131123759_
                                               _hd123130123762_
                                               _tl123129123764_))
                                          (___match126259126260_
                                           _e123128123751_
                                           _hd123127123754_
                                           _tl123126123756_
                                           _e123131123759_
                                           _hd123130123762_
                                           _tl123129123764_))))
                                  (___match126259126260_
                                   _e123128123751_
                                   _hd123127123754_
                                   _tl123126123756_
                                   _e123131123759_
                                   _hd123130123762_
                                   _tl123129123764_))
                              (___match126259126260_
                               _e123128123751_
                               _hd123127123754_
                               _tl123126123756_
                               _e123131123759_
                               _hd123130123762_
                               _tl123129123764_))
                          (___match126259126260_
                           _e123128123751_
                           _hd123127123754_
                           _tl123126123756_
                           _e123131123759_
                           _hd123130123762_
                           _tl123129123764_))))
                  (___match126259126260_
                   _e123128123751_
                   _hd123127123754_
                   _tl123126123756_
                   _e123131123759_
                   _hd123130123762_
                   _tl123129123764_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126259126260_
                                                   _e123128123751_
                                                   _hd123127123754_
                                                   _tl123126123756_
                                                   _e123131123759_
                                                   _hd123130123762_
                                                   _tl123129123764_))
                                              (___match126259126260_
                                               _e123128123751_
                                               _hd123127123754_
                                               _tl123126123756_
                                               _e123131123759_
                                               _hd123130123762_
                                               _tl123129123764_))))
                                      (___match126259126260_
                                       _e123128123751_
                                       _hd123127123754_
                                       _tl123126123756_
                                       _e123131123759_
                                       _hd123130123762_
                                       _tl123129123764_))
                                  (___match126259126260_
                                   _e123128123751_
                                   _hd123127123754_
                                   _tl123126123756_
                                   _e123131123759_
                                   _hd123130123762_
                                   _tl123129123764_))
                              (___match126259126260_
                               _e123128123751_
                               _hd123127123754_
                               _tl123126123756_
                               _e123131123759_
                               _hd123130123762_
                               _tl123129123764_))))
                      (___match126259126260_
                       _e123128123751_
                       _hd123127123754_
                       _tl123126123756_
                       _e123131123759_
                       _hd123130123762_
                       _tl123129123764_))))
              (___match126259126260_
               _e123128123751_
               _hd123127123754_
               _tl123126123756_
               _e123131123759_
               _hd123130123762_
               _tl123129123764_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126259126260_
                                                   _e123128123751_
                                                   _hd123127123754_
                                                   _tl123126123756_
                                                   _e123131123759_
                                                   _hd123130123762_
                                                   _tl123129123764_))))
                                          (___match126259126260_
                                           _e123128123751_
                                           _hd123127123754_
                                           _tl123126123756_
                                           _e123131123759_
                                           _hd123130123762_
                                           _tl123129123764_))
                                      (___match126259126260_
                                       _e123128123751_
                                       _hd123127123754_
                                       _tl123126123756_
                                       _e123131123759_
                                       _hd123130123762_
                                       _tl123129123764_))
                                  (___match126259126260_
                                   _e123128123751_
                                   _hd123127123754_
                                   _tl123126123756_
                                   _e123131123759_
                                   _hd123130123762_
                                   _tl123129123764_))))
                          (___match126259126260_
                           _e123128123751_
                           _hd123127123754_
                           _tl123126123756_
                           _e123131123759_
                           _hd123130123762_
                           _tl123129123764_))))
                  (___match126259126260_
                   _e123128123751_
                   _hd123127123754_
                   _tl123126123756_
                   _e123131123759_
                   _hd123130123762_
                   _tl123129123764_))
              (___match126259126260_
               _e123128123751_
               _hd123127123754_
               _tl123126123756_
               _e123131123759_
               _hd123130123762_
               _tl123129123764_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126259126260_
                                                   _e123128123751_
                                                   _hd123127123754_
                                                   _tl123126123756_
                                                   _e123131123759_
                                                   _hd123130123762_
                                                   _tl123129123764_))))
                                          (___match126259126260_
                                           _e123128123751_
                                           _hd123127123754_
                                           _tl123126123756_
                                           _e123131123759_
                                           _hd123130123762_
                                           _tl123129123764_))))
                                  (___match126259126260_
                                   _e123128123751_
                                   _hd123127123754_
                                   _tl123126123756_
                                   _e123131123759_
                                   _hd123130123762_
                                   _tl123129123764_))))
                          (___match126393126394_
                           _e123128123751_
                           _hd123127123754_
                           _tl123126123756_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126074126075_))
                  (let ((_e123119123968_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126074126075_))))
                    (let ((_tl123117123973_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123119123968_)))
                          (_hd123118123971_
                           (let ()
                             (declare (not safe))
                             (##car _e123119123968_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L123976_ _tl123117123973_))
                            (___kont126076126077_ _L123976_))
                          (___match126101126102_
                           _e123119123968_
                           _hd123118123971_
                           _tl123117123973_))))
                  (let () (declare (not safe)) (_g123114123310_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx123063_)
        (letrec ((_clause-e123065_
                  (lambda (_form123106_)
                    (let ((__obj127747
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
                       __obj127747
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form123106_))
                       (if (let ((__tmp127814
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp127814))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form123106_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form123106_))
                               '#f)
                           '#f))
                      __obj127747))))
          (let* ((_g123067123077_
                  (lambda (_g123068123074_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g123068123074_))))
                 (_g123066123103_
                  (lambda (_g123068123080_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g123068123080_))
                        (let ((_e123072123082_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g123068123080_))))
                          (let ((_hd123071123085_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123072123082_)))
                                (_tl123070123087_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123072123082_))))
                            ((lambda (_L123090_)
                               (let ((_clauses123101_
                                      (map _clause-e123065_ _L123090_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses123101_)))
                             _tl123070123087_)))
                        (let ()
                          (declare (not safe))
                          (_g123067123077_ _g123068123080_))))))
            (declare (not safe))
            (_g123066123103_ _stx123063_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx122995_)
        (let* ((_g122997123014_
                (lambda (_g122998123011_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122998123011_))))
               (_g122996123060_
                (lambda (_g122998123017_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122998123017_))
                      (let ((_e123003123019_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122998123017_))))
                        (let ((_hd123002123022_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123003123019_)))
                              (_tl123001123024_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123003123019_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123001123024_))
                              (let ((_e123006123027_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123001123024_))))
                                (let ((_hd123005123030_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123006123027_)))
                                      (_tl123004123032_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123006123027_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123004123032_))
                                      (let ((_e123009123035_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123004123032_))))
                                        (let ((_hd123008123038_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123009123035_)))
                                              (_tl123007123040_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123009123035_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123007123040_))
                                              ((lambda (_L123043_ _L123044_)
                                                 (let ((__tmp127815
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L123043_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp127815
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd123008123038_
                                               _hd123005123030_)
                                              (let ()
                                                (declare (not safe))
                                                (_g122997123014_
                                                 _g122998123017_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122997123014_ _g122998123017_)))))
                              (let ()
                                (declare (not safe))
                                (_g122997123014_ _g122998123017_)))))
                      (let ()
                        (declare (not safe))
                        (_g122997123014_ _g122998123017_))))))
          (declare (not safe))
          (_g122996123060_ _stx122995_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx122900_)
        (let* ((___stx126402126403_ _stx122900_)
               (_g122903122923_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126402126403_)))))
          (let ((___kont126404126405_
                 (lambda (_L122967_ _L122968_)
                   (let ((_type-e122985122987_
                          (let ((__tmp127816
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L122968_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp127816))))
                     (if _type-e122985122987_
                         (let ((_type-e122990_ _type-e122985122987_))
                           (_type-e122990_ _stx122900_ _L122967_))
                         '#f))))
                (___kont126406126407_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126402126403_))
                (let ((_e122909122935_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126402126403_))))
                  (let ((_tl122907122940_
                         (let () (declare (not safe)) (##cdr _e122909122935_)))
                        (_hd122908122938_
                         (let ()
                           (declare (not safe))
                           (##car _e122909122935_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122907122940_))
                        (let ((_e122912122943_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122907122940_))))
                          (let ((_tl122910122948_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122912122943_)))
                                (_hd122911122946_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122912122943_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122911122946_))
                                (let ((_e122915122951_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122911122946_))))
                                  (let ((_tl122913122956_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122915122951_)))
                                        (_hd122914122954_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122915122951_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122914122954_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122914122954_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122913122956_))
                                                (let ((_e122918122959_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122913122956_))))
                                                  (let ((_tl122916122964_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122918122959_)))
                                                        (_hd122917122962_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122918122959_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122916122964_))
                                                        (___kont126404126405_
                                                         _tl122910122948_
                                                         _hd122917122962_)
                                                        (___kont126406126407_))))
                                                (___kont126406126407_))
                                            (___kont126406126407_))
                                        (___kont126406126407_))))
                                (___kont126406126407_))))
                        (___kont126406126407_))))
                (___kont126406126407_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx122849_)
        (let* ((_g122851122864_
                (lambda (_g122852122861_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122852122861_))))
               (_g122850122897_
                (lambda (_g122852122867_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122852122867_))
                      (let ((_e122856122869_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122852122867_))))
                        (let ((_hd122855122872_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122856122869_)))
                              (_tl122854122874_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122856122869_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122854122874_))
                              (let ((_e122859122877_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122854122874_))))
                                (let ((_hd122858122880_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122859122877_)))
                                      (_tl122857122882_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122859122877_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122857122882_))
                                      ((lambda (_L122885_)
                                         (let ((__tmp127817
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L122885_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp127817)))
                                       _hd122858122880_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122851122864_ _g122852122867_)))))
                              (let ()
                                (declare (not safe))
                                (_g122851122864_ _g122852122867_)))))
                      (let ()
                        (declare (not safe))
                        (_g122851122864_ _g122852122867_))))))
          (declare (not safe))
          (_g122850122897_ _stx122849_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form122083_)
        (let* ((___stx126440126441_ _form122083_)
               (_g122088122245_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126440126441_)))))
          (let ((___kont126442126443_
                 (lambda (_L122769_ _L122770_ _L122771_) '#t))
                (___kont126448126449_
                 (lambda (_L122557_
                          _L122558_
                          _L122559_
                          _L122560_
                          _L122561_
                          _L122562_)
                   '#t))
                (___kont126454126455_
                 (lambda (_L122353_ _L122354_ _L122355_ _L122356_) '#t))
                (___kont126456126457_ (lambda () '#f)))
            (let* ((___match126581126582_
                    (lambda (_e122207122257_
                             _hd122206122260_
                             _tl122205122262_
                             _e122210122265_
                             _hd122209122268_
                             _tl122208122270_
                             _e122213122273_
                             _hd122212122276_
                             _tl122211122278_
                             _e122216122281_
                             _hd122215122284_
                             _tl122214122286_
                             _e122219122289_
                             _hd122218122292_
                             _tl122217122294_
                             _e122222122297_
                             _hd122221122300_
                             _tl122220122302_
                             _e122225122305_
                             _hd122224122308_
                             _tl122223122310_
                             _e122228122313_
                             _hd122227122316_
                             _tl122226122318_
                             _e122231122321_
                             _hd122230122324_
                             _tl122229122326_
                             _e122234122329_
                             _hd122233122332_
                             _tl122232122334_
                             _e122237122337_
                             _hd122236122340_
                             _tl122235122342_
                             _e122240122345_
                             _hd122239122348_
                             _tl122238122350_)
                      (let ((_L122353_ _hd122239122348_)
                            (_L122354_ _hd122230122324_)
                            (_L122355_ _hd122221122300_)
                            (_L122356_ _hd122206122260_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L122356_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L122355_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L122356_ _L122353_))
                                 (let ((__tmp127818
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L122354_
                                           _L122356_))))
                                   (declare (not safe))
                                   (not __tmp127818)))
                            (___kont126454126455_
                             _L122353_
                             _L122354_
                             _L122355_
                             _L122356_)
                            (___kont126456126457_)))))
                   (___match126553126554_
                    (lambda (_e122207122257_
                             _hd122206122260_
                             _tl122205122262_
                             _e122210122265_
                             _hd122209122268_
                             _tl122208122270_
                             _e122213122273_
                             _hd122212122276_
                             _tl122211122278_
                             _e122216122281_
                             _hd122215122284_
                             _tl122214122286_
                             _e122219122289_
                             _hd122218122292_
                             _tl122217122294_
                             _e122222122297_
                             _hd122221122300_
                             _tl122220122302_
                             _e122225122305_
                             _hd122224122308_
                             _tl122223122310_
                             _e122228122313_
                             _hd122227122316_
                             _tl122226122318_
                             _e122231122321_
                             _hd122230122324_
                             _tl122229122326_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122223122310_))
                          (let ((_e122234122329_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122223122310_))))
                            (let ((_tl122232122334_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122234122329_)))
                                  (_hd122233122332_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122234122329_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd122233122332_))
                                  (let ((_e122237122337_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd122233122332_))))
                                    (let ((_tl122235122342_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122237122337_)))
                                          (_hd122236122340_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122237122337_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd122236122340_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd122236122340_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122235122342_))
                                                  (let ((_e122240122345_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122235122342_))))
                                                    (let ((_tl122238122350_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122240122345_)))
                                                          (_hd122239122348_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122240122345_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122238122350_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl122232122334_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl122208122270_))
                          (___match126581126582_
                           _e122207122257_
                           _hd122206122260_
                           _tl122205122262_
                           _e122210122265_
                           _hd122209122268_
                           _tl122208122270_
                           _e122213122273_
                           _hd122212122276_
                           _tl122211122278_
                           _e122216122281_
                           _hd122215122284_
                           _tl122214122286_
                           _e122219122289_
                           _hd122218122292_
                           _tl122217122294_
                           _e122222122297_
                           _hd122221122300_
                           _tl122220122302_
                           _e122225122305_
                           _hd122224122308_
                           _tl122223122310_
                           _e122228122313_
                           _hd122227122316_
                           _tl122226122318_
                           _e122231122321_
                           _hd122230122324_
                           _tl122229122326_
                           _e122234122329_
                           _hd122233122332_
                           _tl122232122334_
                           _e122237122337_
                           _hd122236122340_
                           _tl122235122342_
                           _e122240122345_
                           _hd122239122348_
                           _tl122238122350_)
                          (___kont126456126457_))
                      (___kont126456126457_))
                  (___kont126456126457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126456126457_))
                                              (___kont126456126457_))
                                          (___kont126456126457_))))
                                  (___kont126456126457_))))
                          (___kont126456126457_))))
                   (___match126483126484_
                    (lambda (_e122143122397_
                             _hd122142122400_
                             _tl122141122402_
                             ___splice126450126451_
                             _target122144122405_
                             _tl122146122407_)
                      (letrec ((_loop122147122410_
                                (lambda (_hd122145122413_ _arg122151122415_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122145122413_))
                                      (let ((_e122148122418_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122145122413_))))
                                        (let ((_lp-tl122150122423_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122148122418_)))
                                              (_lp-hd122149122421_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122148122418_))))
                                          (let ((__tmp127833
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122149122421_
                                                         _arg122151122415_))))
                                            (declare (not safe))
                                            (_loop122147122410_
                                             _lp-tl122150122423_
                                             __tmp127833))))
                                      (let ((_arg122152122426_
                                             (reverse _arg122151122415_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122141122402_))
                                            (let ((_e122155122429_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122141122402_))))
                                              (let ((_tl122153122434_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122155122429_)))
                                                    (_hd122154122432_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122155122429_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122154122432_))
                                                    (let ((_e122158122437_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122154122432_))))
                                                      (let ((_tl122156122442_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122158122437_)))
                    (_hd122157122440_
                     (let () (declare (not safe)) (##car _e122158122437_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122157122440_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122157122440_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122156122442_))
                            (let ((_e122161122445_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122156122442_))))
                              (let ((_tl122159122450_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122161122445_)))
                                    (_hd122160122448_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122161122445_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122160122448_))
                                    (let ((_e122164122453_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122160122448_))))
                                      (let ((_tl122162122458_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122164122453_)))
                                            (_hd122163122456_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122164122453_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122163122456_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122163122456_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122162122458_))
                                                    (let ((_e122167122461_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122162122458_))))
                                                      (let ((_tl122165122466_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122167122461_)))
                    (_hd122166122464_
                     (let () (declare (not safe)) (##car _e122167122461_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122165122466_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122159122450_))
                        (let ((_e122170122469_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122159122450_))))
                          (let ((_tl122168122474_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122170122469_)))
                                (_hd122169122472_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122170122469_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122169122472_))
                                (let ((_e122173122477_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122169122472_))))
                                  (let ((_tl122171122482_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122173122477_)))
                                        (_hd122172122480_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122173122477_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122172122480_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122172122480_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122171122482_))
                                                (let ((_e122176122485_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122171122482_))))
                                                  (let ((_tl122174122490_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122176122485_)))
                                                        (_hd122175122488_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122176122485_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122174122490_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl122168122474_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl122168122474_))
                              '1)
                        (let ((___splice126452126453_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122168122474_
                                  '1))))
                          (let ((_tl122179122495_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126452126453_ '1)))
                                (_target122177122493_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126452126453_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122179122495_))
                                (let ((_e122188122498_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122179122495_))))
                                  (let ((_tl122186122503_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122188122498_)))
                                        (_hd122187122501_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122188122498_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122187122501_))
                                        (let ((_e122191122506_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122187122501_))))
                                          (let ((_tl122189122511_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122191122506_)))
                                                (_hd122190122509_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122191122506_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd122190122509_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd122190122509_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl122189122511_))
                                                        (let ((_e122194122514_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl122189122511_))))
                  (let ((_tl122192122519_
                         (let () (declare (not safe)) (##cdr _e122194122514_)))
                        (_hd122193122517_
                         (let ()
                           (declare (not safe))
                           (##car _e122194122514_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122192122519_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl122186122503_))
                            (letrec ((_loop122180122522_
                                      (lambda (_hd122178122525_
                                               _xarg122184122527_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd122178122525_))
                                            (let ((_e122181122530_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd122178122525_))))
                                              (let ((_lp-tl122183122535_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122181122530_)))
                                                    (_lp-hd122182122533_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122181122530_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd122182122533_))
                                                    (let ((_e122197122538_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd122182122533_))))
                                                      (let ((_tl122195122543_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122197122538_)))
                    (_hd122196122541_
                     (let () (declare (not safe)) (##car _e122197122538_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122196122541_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd122196122541_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122195122543_))
                            (let ((_e122200122546_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122195122543_))))
                              (let ((_tl122198122551_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122200122546_)))
                                    (_hd122199122549_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122200122546_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122198122551_))
                                    (let ((__tmp127832
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd122199122549_
                                                   _xarg122184122527_))))
                                      (declare (not safe))
                                      (_loop122180122522_
                                       _lp-tl122183122535_
                                       __tmp127832))
                                    (___match126553126554_
                                     _e122143122397_
                                     _hd122142122400_
                                     _tl122141122402_
                                     _e122155122429_
                                     _hd122154122432_
                                     _tl122153122434_
                                     _e122158122437_
                                     _hd122157122440_
                                     _tl122156122442_
                                     _e122161122445_
                                     _hd122160122448_
                                     _tl122159122450_
                                     _e122164122453_
                                     _hd122163122456_
                                     _tl122162122458_
                                     _e122167122461_
                                     _hd122166122464_
                                     _tl122165122466_
                                     _e122170122469_
                                     _hd122169122472_
                                     _tl122168122474_
                                     _e122173122477_
                                     _hd122172122480_
                                     _tl122171122482_
                                     _e122176122485_
                                     _hd122175122488_
                                     _tl122174122490_))))
                            (___match126553126554_
                             _e122143122397_
                             _hd122142122400_
                             _tl122141122402_
                             _e122155122429_
                             _hd122154122432_
                             _tl122153122434_
                             _e122158122437_
                             _hd122157122440_
                             _tl122156122442_
                             _e122161122445_
                             _hd122160122448_
                             _tl122159122450_
                             _e122164122453_
                             _hd122163122456_
                             _tl122162122458_
                             _e122167122461_
                             _hd122166122464_
                             _tl122165122466_
                             _e122170122469_
                             _hd122169122472_
                             _tl122168122474_
                             _e122173122477_
                             _hd122172122480_
                             _tl122171122482_
                             _e122176122485_
                             _hd122175122488_
                             _tl122174122490_))
                        (___match126553126554_
                         _e122143122397_
                         _hd122142122400_
                         _tl122141122402_
                         _e122155122429_
                         _hd122154122432_
                         _tl122153122434_
                         _e122158122437_
                         _hd122157122440_
                         _tl122156122442_
                         _e122161122445_
                         _hd122160122448_
                         _tl122159122450_
                         _e122164122453_
                         _hd122163122456_
                         _tl122162122458_
                         _e122167122461_
                         _hd122166122464_
                         _tl122165122466_
                         _e122170122469_
                         _hd122169122472_
                         _tl122168122474_
                         _e122173122477_
                         _hd122172122480_
                         _tl122171122482_
                         _e122176122485_
                         _hd122175122488_
                         _tl122174122490_))
                    (___match126553126554_
                     _e122143122397_
                     _hd122142122400_
                     _tl122141122402_
                     _e122155122429_
                     _hd122154122432_
                     _tl122153122434_
                     _e122158122437_
                     _hd122157122440_
                     _tl122156122442_
                     _e122161122445_
                     _hd122160122448_
                     _tl122159122450_
                     _e122164122453_
                     _hd122163122456_
                     _tl122162122458_
                     _e122167122461_
                     _hd122166122464_
                     _tl122165122466_
                     _e122170122469_
                     _hd122169122472_
                     _tl122168122474_
                     _e122173122477_
                     _hd122172122480_
                     _tl122171122482_
                     _e122176122485_
                     _hd122175122488_
                     _tl122174122490_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126553126554_
                                                     _e122143122397_
                                                     _hd122142122400_
                                                     _tl122141122402_
                                                     _e122155122429_
                                                     _hd122154122432_
                                                     _tl122153122434_
                                                     _e122158122437_
                                                     _hd122157122440_
                                                     _tl122156122442_
                                                     _e122161122445_
                                                     _hd122160122448_
                                                     _tl122159122450_
                                                     _e122164122453_
                                                     _hd122163122456_
                                                     _tl122162122458_
                                                     _e122167122461_
                                                     _hd122166122464_
                                                     _tl122165122466_
                                                     _e122170122469_
                                                     _hd122169122472_
                                                     _tl122168122474_
                                                     _e122173122477_
                                                     _hd122172122480_
                                                     _tl122171122482_
                                                     _e122176122485_
                                                     _hd122175122488_
                                                     _tl122174122490_))))
                                            (let ((_xarg122185122554_
                                                   (reverse _xarg122184122527_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl122153122434_))
                                                  (let ((_L122557_
                                                         _hd122193122517_)
                                                        (_L122558_
                                                         _xarg122185122554_)
                                                        (_L122559_
                                                         _hd122175122488_)
                                                        (_L122560_
                                                         _hd122166122464_)
                                                        (_L122561_
                                                         _tl122146122407_)
                                                        (_L122562_
                                                         _arg122152122426_))
                                                    (if (and (let ((__tmp127830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp127831
                                   (lambda (_g122605122608_ _g122606122610_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g122605122608_
                                             _g122606122610_)))))
                              (declare (not safe))
                              (foldr1 __tmp127831 '() _L122562_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp127830))
                     (let () (declare (not safe)) (gx#identifier? _L122561_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L122560_ 'apply))
                     (fx= (length (let ((__tmp127828
                                         (lambda (_g122612122615_
                                                  _g122613122617_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g122612122615_
                                                   _g122613122617_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp127828 '() _L122562_)))
                          (length (let ((__tmp127829
                                         (lambda (_g122619122622_
                                                  _g122620122624_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g122619122622_
                                                   _g122620122624_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp127829 '() _L122558_))))
                     (let ((__tmp127826
                            (let ((__tmp127827
                                   (lambda (_g122626122629_ _g122627122631_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g122626122629_
                                             _g122627122631_)))))
                              (declare (not safe))
                              (foldr1 __tmp127827 '() _L122562_)))
                           (__tmp127824
                            (let ((__tmp127825
                                   (lambda (_g122633122636_ _g122634122638_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g122633122636_
                                             _g122634122638_)))))
                              (declare (not safe))
                              (foldr1 __tmp127825 '() _L122558_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp127826 __tmp127824))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L122561_ _L122557_))
                     (let ((__tmp127819
                            (let ((__tmp127823
                                   (lambda (_g122640122642_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g122640122642_
                                        _L122559_))))
                                  (__tmp127820
                                   (let ((__tmp127822
                                          (lambda (_g122644122647_
                                                   _g122645122649_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g122644122647_
                                                    _g122645122649_))))
                                         (__tmp127821
                                          (let ()
                                            (declare (not safe))
                                            (cons _L122561_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp127822
                                             __tmp127821
                                             _L122562_))))
                              (declare (not safe))
                              (find __tmp127823 __tmp127820))))
                       (declare (not safe))
                       (not __tmp127819)))
                (___kont126448126449_
                 _L122557_
                 _L122558_
                 _L122559_
                 _L122560_
                 _L122561_
                 _L122562_)
                (___match126553126554_
                 _e122143122397_
                 _hd122142122400_
                 _tl122141122402_
                 _e122155122429_
                 _hd122154122432_
                 _tl122153122434_
                 _e122158122437_
                 _hd122157122440_
                 _tl122156122442_
                 _e122161122445_
                 _hd122160122448_
                 _tl122159122450_
                 _e122164122453_
                 _hd122163122456_
                 _tl122162122458_
                 _e122167122461_
                 _hd122166122464_
                 _tl122165122466_
                 _e122170122469_
                 _hd122169122472_
                 _tl122168122474_
                 _e122173122477_
                 _hd122172122480_
                 _tl122171122482_
                 _e122176122485_
                 _hd122175122488_
                 _tl122174122490_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126553126554_
                                                   _e122143122397_
                                                   _hd122142122400_
                                                   _tl122141122402_
                                                   _e122155122429_
                                                   _hd122154122432_
                                                   _tl122153122434_
                                                   _e122158122437_
                                                   _hd122157122440_
                                                   _tl122156122442_
                                                   _e122161122445_
                                                   _hd122160122448_
                                                   _tl122159122450_
                                                   _e122164122453_
                                                   _hd122163122456_
                                                   _tl122162122458_
                                                   _e122167122461_
                                                   _hd122166122464_
                                                   _tl122165122466_
                                                   _e122170122469_
                                                   _hd122169122472_
                                                   _tl122168122474_
                                                   _e122173122477_
                                                   _hd122172122480_
                                                   _tl122171122482_
                                                   _e122176122485_
                                                   _hd122175122488_
                                                   _tl122174122490_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop122180122522_ _target122177122493_ '())))
                            (___match126553126554_
                             _e122143122397_
                             _hd122142122400_
                             _tl122141122402_
                             _e122155122429_
                             _hd122154122432_
                             _tl122153122434_
                             _e122158122437_
                             _hd122157122440_
                             _tl122156122442_
                             _e122161122445_
                             _hd122160122448_
                             _tl122159122450_
                             _e122164122453_
                             _hd122163122456_
                             _tl122162122458_
                             _e122167122461_
                             _hd122166122464_
                             _tl122165122466_
                             _e122170122469_
                             _hd122169122472_
                             _tl122168122474_
                             _e122173122477_
                             _hd122172122480_
                             _tl122171122482_
                             _e122176122485_
                             _hd122175122488_
                             _tl122174122490_))
                        (___match126553126554_
                         _e122143122397_
                         _hd122142122400_
                         _tl122141122402_
                         _e122155122429_
                         _hd122154122432_
                         _tl122153122434_
                         _e122158122437_
                         _hd122157122440_
                         _tl122156122442_
                         _e122161122445_
                         _hd122160122448_
                         _tl122159122450_
                         _e122164122453_
                         _hd122163122456_
                         _tl122162122458_
                         _e122167122461_
                         _hd122166122464_
                         _tl122165122466_
                         _e122170122469_
                         _hd122169122472_
                         _tl122168122474_
                         _e122173122477_
                         _hd122172122480_
                         _tl122171122482_
                         _e122176122485_
                         _hd122175122488_
                         _tl122174122490_))))
                (___match126553126554_
                 _e122143122397_
                 _hd122142122400_
                 _tl122141122402_
                 _e122155122429_
                 _hd122154122432_
                 _tl122153122434_
                 _e122158122437_
                 _hd122157122440_
                 _tl122156122442_
                 _e122161122445_
                 _hd122160122448_
                 _tl122159122450_
                 _e122164122453_
                 _hd122163122456_
                 _tl122162122458_
                 _e122167122461_
                 _hd122166122464_
                 _tl122165122466_
                 _e122170122469_
                 _hd122169122472_
                 _tl122168122474_
                 _e122173122477_
                 _hd122172122480_
                 _tl122171122482_
                 _e122176122485_
                 _hd122175122488_
                 _tl122174122490_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126553126554_
                                                     _e122143122397_
                                                     _hd122142122400_
                                                     _tl122141122402_
                                                     _e122155122429_
                                                     _hd122154122432_
                                                     _tl122153122434_
                                                     _e122158122437_
                                                     _hd122157122440_
                                                     _tl122156122442_
                                                     _e122161122445_
                                                     _hd122160122448_
                                                     _tl122159122450_
                                                     _e122164122453_
                                                     _hd122163122456_
                                                     _tl122162122458_
                                                     _e122167122461_
                                                     _hd122166122464_
                                                     _tl122165122466_
                                                     _e122170122469_
                                                     _hd122169122472_
                                                     _tl122168122474_
                                                     _e122173122477_
                                                     _hd122172122480_
                                                     _tl122171122482_
                                                     _e122176122485_
                                                     _hd122175122488_
                                                     _tl122174122490_))
                                                (___match126553126554_
                                                 _e122143122397_
                                                 _hd122142122400_
                                                 _tl122141122402_
                                                 _e122155122429_
                                                 _hd122154122432_
                                                 _tl122153122434_
                                                 _e122158122437_
                                                 _hd122157122440_
                                                 _tl122156122442_
                                                 _e122161122445_
                                                 _hd122160122448_
                                                 _tl122159122450_
                                                 _e122164122453_
                                                 _hd122163122456_
                                                 _tl122162122458_
                                                 _e122167122461_
                                                 _hd122166122464_
                                                 _tl122165122466_
                                                 _e122170122469_
                                                 _hd122169122472_
                                                 _tl122168122474_
                                                 _e122173122477_
                                                 _hd122172122480_
                                                 _tl122171122482_
                                                 _e122176122485_
                                                 _hd122175122488_
                                                 _tl122174122490_))))
                                        (___match126553126554_
                                         _e122143122397_
                                         _hd122142122400_
                                         _tl122141122402_
                                         _e122155122429_
                                         _hd122154122432_
                                         _tl122153122434_
                                         _e122158122437_
                                         _hd122157122440_
                                         _tl122156122442_
                                         _e122161122445_
                                         _hd122160122448_
                                         _tl122159122450_
                                         _e122164122453_
                                         _hd122163122456_
                                         _tl122162122458_
                                         _e122167122461_
                                         _hd122166122464_
                                         _tl122165122466_
                                         _e122170122469_
                                         _hd122169122472_
                                         _tl122168122474_
                                         _e122173122477_
                                         _hd122172122480_
                                         _tl122171122482_
                                         _e122176122485_
                                         _hd122175122488_
                                         _tl122174122490_))))
                                (___match126553126554_
                                 _e122143122397_
                                 _hd122142122400_
                                 _tl122141122402_
                                 _e122155122429_
                                 _hd122154122432_
                                 _tl122153122434_
                                 _e122158122437_
                                 _hd122157122440_
                                 _tl122156122442_
                                 _e122161122445_
                                 _hd122160122448_
                                 _tl122159122450_
                                 _e122164122453_
                                 _hd122163122456_
                                 _tl122162122458_
                                 _e122167122461_
                                 _hd122166122464_
                                 _tl122165122466_
                                 _e122170122469_
                                 _hd122169122472_
                                 _tl122168122474_
                                 _e122173122477_
                                 _hd122172122480_
                                 _tl122171122482_
                                 _e122176122485_
                                 _hd122175122488_
                                 _tl122174122490_))))
                        (___match126553126554_
                         _e122143122397_
                         _hd122142122400_
                         _tl122141122402_
                         _e122155122429_
                         _hd122154122432_
                         _tl122153122434_
                         _e122158122437_
                         _hd122157122440_
                         _tl122156122442_
                         _e122161122445_
                         _hd122160122448_
                         _tl122159122450_
                         _e122164122453_
                         _hd122163122456_
                         _tl122162122458_
                         _e122167122461_
                         _hd122166122464_
                         _tl122165122466_
                         _e122170122469_
                         _hd122169122472_
                         _tl122168122474_
                         _e122173122477_
                         _hd122172122480_
                         _tl122171122482_
                         _e122176122485_
                         _hd122175122488_
                         _tl122174122490_))
                    (___match126553126554_
                     _e122143122397_
                     _hd122142122400_
                     _tl122141122402_
                     _e122155122429_
                     _hd122154122432_
                     _tl122153122434_
                     _e122158122437_
                     _hd122157122440_
                     _tl122156122442_
                     _e122161122445_
                     _hd122160122448_
                     _tl122159122450_
                     _e122164122453_
                     _hd122163122456_
                     _tl122162122458_
                     _e122167122461_
                     _hd122166122464_
                     _tl122165122466_
                     _e122170122469_
                     _hd122169122472_
                     _tl122168122474_
                     _e122173122477_
                     _hd122172122480_
                     _tl122171122482_
                     _e122176122485_
                     _hd122175122488_
                     _tl122174122490_))
                (___kont126456126457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126456126457_))
                                            (___kont126456126457_))
                                        (___kont126456126457_))))
                                (___kont126456126457_))))
                        (___kont126456126457_))
                    (___kont126456126457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126456126457_))
                                                (___kont126456126457_))
                                            (___kont126456126457_))))
                                    (___kont126456126457_))))
                            (___kont126456126457_))
                        (___kont126456126457_))
                    (___kont126456126457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126456126457_))))
                                            (___kont126456126457_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122147122410_ _target122144122405_ '())))))
                   (___match126471126472_
                    (lambda (_e122095122657_
                             _hd122094122660_
                             _tl122093122662_
                             ___splice126444126445_
                             _target122096122665_
                             _tl122098122667_)
                      (letrec ((_loop122099122670_
                                (lambda (_hd122097122673_ _arg122103122675_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122097122673_))
                                      (let ((_e122100122678_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122097122673_))))
                                        (let ((_lp-tl122102122683_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122100122678_)))
                                              (_lp-hd122101122681_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122100122678_))))
                                          (let ((__tmp127847
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122101122681_
                                                         _arg122103122675_))))
                                            (declare (not safe))
                                            (_loop122099122670_
                                             _lp-tl122102122683_
                                             __tmp127847))))
                                      (let ((_arg122104122686_
                                             (reverse _arg122103122675_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122093122662_))
                                            (let ((_e122107122689_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122093122662_))))
                                              (let ((_tl122105122694_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122107122689_)))
                                                    (_hd122106122692_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122107122689_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122106122692_))
                                                    (let ((_e122110122697_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122106122692_))))
                                                      (let ((_tl122108122702_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122110122697_)))
                    (_hd122109122700_
                     (let () (declare (not safe)) (##car _e122110122697_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122109122700_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122109122700_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122108122702_))
                            (let ((_e122113122705_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122108122702_))))
                              (let ((_tl122111122710_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122113122705_)))
                                    (_hd122112122708_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122113122705_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122112122708_))
                                    (let ((_e122116122713_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122112122708_))))
                                      (let ((_tl122114122718_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122116122713_)))
                                            (_hd122115122716_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122116122713_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122115122716_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122115122716_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122114122718_))
                                                    (let ((_e122119122721_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122114122718_))))
                                                      (let ((_tl122117122726_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122119122721_)))
                    (_hd122118122724_
                     (let () (declare (not safe)) (##car _e122119122721_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122117122726_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl122111122710_))
                        (let ((___splice126446126447_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122111122710_
                                  '0))))
                          (let ((_tl122122122731_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126446126447_ '1)))
                                (_target122120122729_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126446126447_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122122122731_))
                                (letrec ((_loop122123122734_
                                          (lambda (_hd122121122737_
                                                   _xarg122127122739_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122121122737_))
                                                (let ((_e122124122742_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122121122737_))))
                                                  (let ((_lp-tl122126122747_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122124122742_)))
                                                        (_lp-hd122125122745_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122124122742_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd122125122745_))
                                                        (let ((_e122131122750_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd122125122745_))))
                  (let ((_tl122129122755_
                         (let () (declare (not safe)) (##cdr _e122131122750_)))
                        (_hd122130122753_
                         (let ()
                           (declare (not safe))
                           (##car _e122131122750_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122130122753_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd122130122753_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122129122755_))
                                (let ((_e122134122758_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122129122755_))))
                                  (let ((_tl122132122763_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122134122758_)))
                                        (_hd122133122761_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122134122758_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122132122763_))
                                        (let ((__tmp127846
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd122133122761_
                                                       _xarg122127122739_))))
                                          (declare (not safe))
                                          (_loop122123122734_
                                           _lp-tl122126122747_
                                           __tmp127846))
                                        (___match126483126484_
                                         _e122095122657_
                                         _hd122094122660_
                                         _tl122093122662_
                                         ___splice126444126445_
                                         _target122096122665_
                                         _tl122098122667_))))
                                (___match126483126484_
                                 _e122095122657_
                                 _hd122094122660_
                                 _tl122093122662_
                                 ___splice126444126445_
                                 _target122096122665_
                                 _tl122098122667_))
                            (___match126483126484_
                             _e122095122657_
                             _hd122094122660_
                             _tl122093122662_
                             ___splice126444126445_
                             _target122096122665_
                             _tl122098122667_))
                        (___match126483126484_
                         _e122095122657_
                         _hd122094122660_
                         _tl122093122662_
                         ___splice126444126445_
                         _target122096122665_
                         _tl122098122667_))))
                (___match126483126484_
                 _e122095122657_
                 _hd122094122660_
                 _tl122093122662_
                 ___splice126444126445_
                 _target122096122665_
                 _tl122098122667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg122128122766_
                                                       (reverse _xarg122127122739_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122105122694_))
                                                      (let ((_L122769_
                                                             _xarg122128122766_)
                                                            (_L122770_
                                                             _hd122118122724_)
                                                            (_L122771_
                                                             _arg122104122686_))
                                                        (if (and (let ((__tmp127844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp127845
                                       (lambda (_g122799122802_
                                                _g122800122804_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g122799122802_
                                                 _g122800122804_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp127845 '() _L122771_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp127844))
                         (fx= (length (let ((__tmp127842
                                             (lambda (_g122806122809_
                                                      _g122807122811_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g122806122809_
                                                       _g122807122811_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp127842 '() _L122771_)))
                              (length (let ((__tmp127843
                                             (lambda (_g122813122816_
                                                      _g122814122818_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g122813122816_
                                                       _g122814122818_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp127843 '() _L122769_))))
                         (let ((__tmp127840
                                (let ((__tmp127841
                                       (lambda (_g122820122823_
                                                _g122821122825_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g122820122823_
                                                 _g122821122825_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp127841 '() _L122771_)))
                               (__tmp127838
                                (let ((__tmp127839
                                       (lambda (_g122827122830_
                                                _g122828122832_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g122827122830_
                                                 _g122828122832_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp127839 '() _L122769_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp127840
                                    __tmp127838))
                         (let ((__tmp127834
                                (let ((__tmp127837
                                       (lambda (_g122834122836_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g122834122836_
                                            _L122770_))))
                                      (__tmp127835
                                       (let ((__tmp127836
                                              (lambda (_g122838122841_
                                                       _g122839122843_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g122838122841_
                                                        _g122839122843_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp127836 '() _L122771_))))
                                  (declare (not safe))
                                  (find __tmp127837 __tmp127835))))
                           (declare (not safe))
                           (not __tmp127834)))
                    (___kont126442126443_ _L122769_ _L122770_ _L122771_)
                    (___match126483126484_
                     _e122095122657_
                     _hd122094122660_
                     _tl122093122662_
                     ___splice126444126445_
                     _target122096122665_
                     _tl122098122667_)))
              (___match126483126484_
               _e122095122657_
               _hd122094122660_
               _tl122093122662_
               ___splice126444126445_
               _target122096122665_
               _tl122098122667_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop122123122734_
                                     _target122120122729_
                                     '())))
                                (___match126483126484_
                                 _e122095122657_
                                 _hd122094122660_
                                 _tl122093122662_
                                 ___splice126444126445_
                                 _target122096122665_
                                 _tl122098122667_))))
                        (___match126483126484_
                         _e122095122657_
                         _hd122094122660_
                         _tl122093122662_
                         ___splice126444126445_
                         _target122096122665_
                         _tl122098122667_))
                    (___match126483126484_
                     _e122095122657_
                     _hd122094122660_
                     _tl122093122662_
                     ___splice126444126445_
                     _target122096122665_
                     _tl122098122667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126483126484_
                                                     _e122095122657_
                                                     _hd122094122660_
                                                     _tl122093122662_
                                                     ___splice126444126445_
                                                     _target122096122665_
                                                     _tl122098122667_))
                                                (___match126483126484_
                                                 _e122095122657_
                                                 _hd122094122660_
                                                 _tl122093122662_
                                                 ___splice126444126445_
                                                 _target122096122665_
                                                 _tl122098122667_))
                                            (___match126483126484_
                                             _e122095122657_
                                             _hd122094122660_
                                             _tl122093122662_
                                             ___splice126444126445_
                                             _target122096122665_
                                             _tl122098122667_))))
                                    (___match126483126484_
                                     _e122095122657_
                                     _hd122094122660_
                                     _tl122093122662_
                                     ___splice126444126445_
                                     _target122096122665_
                                     _tl122098122667_))))
                            (___match126483126484_
                             _e122095122657_
                             _hd122094122660_
                             _tl122093122662_
                             ___splice126444126445_
                             _target122096122665_
                             _tl122098122667_))
                        (___match126483126484_
                         _e122095122657_
                         _hd122094122660_
                         _tl122093122662_
                         ___splice126444126445_
                         _target122096122665_
                         _tl122098122667_))
                    (___match126483126484_
                     _e122095122657_
                     _hd122094122660_
                     _tl122093122662_
                     ___splice126444126445_
                     _target122096122665_
                     _tl122098122667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126483126484_
                                                     _e122095122657_
                                                     _hd122094122660_
                                                     _tl122093122662_
                                                     ___splice126444126445_
                                                     _target122096122665_
                                                     _tl122098122667_))))
                                            (___match126483126484_
                                             _e122095122657_
                                             _hd122094122660_
                                             _tl122093122662_
                                             ___splice126444126445_
                                             _target122096122665_
                                             _tl122098122667_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122099122670_ _target122096122665_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126440126441_))
                  (let ((_e122095122657_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126440126441_))))
                    (let ((_tl122093122662_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122095122657_)))
                          (_hd122094122660_
                           (let ()
                             (declare (not safe))
                             (##car _e122095122657_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd122094122660_))
                          (let ((___splice126444126445_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd122094122660_
                                    '0))))
                            (let ((_tl122098122667_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126444126445_ '1)))
                                  (_target122096122665_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126444126445_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122098122667_))
                                  (___match126471126472_
                                   _e122095122657_
                                   _hd122094122660_
                                   _tl122093122662_
                                   ___splice126444126445_
                                   _target122096122665_
                                   _tl122098122667_)
                                  (___match126483126484_
                                   _e122095122657_
                                   _hd122094122660_
                                   _tl122093122662_
                                   ___splice126444126445_
                                   _target122096122665_
                                   _tl122098122667_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122093122662_))
                              (let ((_e122210122265_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122093122662_))))
                                (let ((_tl122208122270_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122210122265_)))
                                      (_hd122209122268_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122210122265_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122209122268_))
                                      (let ((_e122213122273_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122209122268_))))
                                        (let ((_tl122211122278_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122213122273_)))
                                              (_hd122212122276_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122213122273_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd122212122276_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd122212122276_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122211122278_))
                                                      (let ((_e122216122281_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122211122278_))))
                (let ((_tl122214122286_
                       (let () (declare (not safe)) (##cdr _e122216122281_)))
                      (_hd122215122284_
                       (let () (declare (not safe)) (##car _e122216122281_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122215122284_))
                      (let ((_e122219122289_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122215122284_))))
                        (let ((_tl122217122294_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122219122289_)))
                              (_hd122218122292_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122219122289_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122218122292_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122218122292_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122217122294_))
                                      (let ((_e122222122297_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122217122294_))))
                                        (let ((_tl122220122302_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122222122297_)))
                                              (_hd122221122300_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122222122297_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122220122302_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122214122286_))
                                                  (let ((_e122225122305_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122214122286_))))
                                                    (let ((_tl122223122310_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122225122305_)))
                                                          (_hd122224122308_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122225122305_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122224122308_))
                                                          (let ((_e122228122313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122224122308_))))
                    (let ((_tl122226122318_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122228122313_)))
                          (_hd122227122316_
                           (let ()
                             (declare (not safe))
                             (##car _e122228122313_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122227122316_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd122227122316_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122226122318_))
                                  (let ((_e122231122321_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122226122318_))))
                                    (let ((_tl122229122326_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122231122321_)))
                                          (_hd122230122324_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122231122321_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122229122326_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122223122310_))
                                              (let ((_e122234122329_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122223122310_))))
                                                (let ((_tl122232122334_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122234122329_)))
                                                      (_hd122233122332_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122234122329_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd122233122332_))
                                                      (let ((_e122237122337_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd122233122332_))))
                (let ((_tl122235122342_
                       (let () (declare (not safe)) (##cdr _e122237122337_)))
                      (_hd122236122340_
                       (let () (declare (not safe)) (##car _e122237122337_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd122236122340_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd122236122340_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122235122342_))
                              (let ((_e122240122345_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122235122342_))))
                                (let ((_tl122238122350_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122240122345_)))
                                      (_hd122239122348_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122240122345_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122238122350_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122232122334_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122208122270_))
                                              (___match126581126582_
                                               _e122095122657_
                                               _hd122094122660_
                                               _tl122093122662_
                                               _e122210122265_
                                               _hd122209122268_
                                               _tl122208122270_
                                               _e122213122273_
                                               _hd122212122276_
                                               _tl122211122278_
                                               _e122216122281_
                                               _hd122215122284_
                                               _tl122214122286_
                                               _e122219122289_
                                               _hd122218122292_
                                               _tl122217122294_
                                               _e122222122297_
                                               _hd122221122300_
                                               _tl122220122302_
                                               _e122225122305_
                                               _hd122224122308_
                                               _tl122223122310_
                                               _e122228122313_
                                               _hd122227122316_
                                               _tl122226122318_
                                               _e122231122321_
                                               _hd122230122324_
                                               _tl122229122326_
                                               _e122234122329_
                                               _hd122233122332_
                                               _tl122232122334_
                                               _e122237122337_
                                               _hd122236122340_
                                               _tl122235122342_
                                               _e122240122345_
                                               _hd122239122348_
                                               _tl122238122350_)
                                              (___kont126456126457_))
                                          (___kont126456126457_))
                                      (___kont126456126457_))))
                              (___kont126456126457_))
                          (___kont126456126457_))
                      (___kont126456126457_))))
              (___kont126456126457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont126456126457_))
                                          (___kont126456126457_))))
                                  (___kont126456126457_))
                              (___kont126456126457_))
                          (___kont126456126457_))))
                  (___kont126456126457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126456126457_))
                                              (___kont126456126457_))))
                                      (___kont126456126457_))
                                  (___kont126456126457_))
                              (___kont126456126457_))))
                      (___kont126456126457_))))
              (___kont126456126457_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126456126457_))
                                              (___kont126456126457_))))
                                      (___kont126456126457_))))
                              (___kont126456126457_)))))
                  (___kont126456126457_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form121551_)
        (let* ((___stx126584126585_ _form121551_)
               (_g121555121679_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126584126585_)))))
          (let ((___kont126586126587_
                 (lambda (_L122049_ _L122050_ _L122051_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122050_))))
                (___kont126592126593_
                 (lambda (_L121897_ _L121898_ _L121899_ _L121900_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L121897_))))
                (___kont126596126597_
                 (lambda (_L121764_ _L121765_ _L121766_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L121764_)))))
            (let* ((___match126693126694_
                    (lambda (_e121647121684_
                             _hd121646121687_
                             _tl121645121689_
                             _e121650121692_
                             _hd121649121695_
                             _tl121648121697_
                             _e121653121700_
                             _hd121652121703_
                             _tl121651121705_
                             _e121656121708_
                             _hd121655121711_
                             _tl121654121713_
                             _e121659121716_
                             _hd121658121719_
                             _tl121657121721_
                             _e121662121724_
                             _hd121661121727_
                             _tl121660121729_
                             _e121665121732_
                             _hd121664121735_
                             _tl121663121737_
                             _e121668121740_
                             _hd121667121743_
                             _tl121666121745_
                             _e121671121748_
                             _hd121670121751_
                             _tl121669121753_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl121663121737_))
                          (let ((_e121674121756_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl121663121737_))))
                            (let ((_tl121672121761_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121674121756_)))
                                  (_hd121673121759_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121674121756_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl121672121761_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121648121697_))
                                      (___kont126596126597_
                                       _hd121670121751_
                                       _hd121661121727_
                                       _hd121646121687_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121555121679_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g121555121679_)))))
                          (let () (declare (not safe)) (_g121555121679_)))))
                   (___match126623126624_
                    (lambda (_e121608121801_
                             _hd121607121804_
                             _tl121606121806_
                             ___splice126594126595_
                             _target121609121809_
                             _tl121611121811_)
                      (letrec ((_loop121612121814_
                                (lambda (_hd121610121817_ _arg121616121819_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121610121817_))
                                      (let ((_e121613121822_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121610121817_))))
                                        (let ((_lp-tl121615121827_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121613121822_)))
                                              (_lp-hd121614121825_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121613121822_))))
                                          (let ((__tmp127848
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd121614121825_
                                                         _arg121616121819_))))
                                            (declare (not safe))
                                            (_loop121612121814_
                                             _lp-tl121615121827_
                                             __tmp127848))))
                                      (let ((_arg121617121830_
                                             (reverse _arg121616121819_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121606121806_))
                                            (let ((_e121620121833_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121606121806_))))
                                              (let ((_tl121618121838_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121620121833_)))
                                                    (_hd121619121836_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121620121833_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121619121836_))
                                                    (let ((_e121623121841_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121619121836_))))
                                                      (let ((_tl121621121846_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121623121841_)))
                    (_hd121622121844_
                     (let () (declare (not safe)) (##car _e121623121841_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121622121844_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121622121844_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121621121846_))
                            (let ((_e121626121849_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121621121846_))))
                              (let ((_tl121624121854_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121626121849_)))
                                    (_hd121625121852_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121626121849_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121625121852_))
                                    (let ((_e121629121857_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121625121852_))))
                                      (let ((_tl121627121862_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121629121857_)))
                                            (_hd121628121860_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121629121857_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121628121860_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121628121860_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121627121862_))
                                                    (let ((_e121632121865_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121627121862_))))
                                                      (let ((_tl121630121870_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121632121865_)))
                    (_hd121631121868_
                     (let () (declare (not safe)) (##car _e121632121865_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121630121870_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121624121854_))
                        (let ((_e121635121873_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121624121854_))))
                          (let ((_tl121633121878_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121635121873_)))
                                (_hd121634121876_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121635121873_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121634121876_))
                                (let ((_e121638121881_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121634121876_))))
                                  (let ((_tl121636121886_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121638121881_)))
                                        (_hd121637121884_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121638121881_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121637121884_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd121637121884_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121636121886_))
                                                (let ((_e121641121889_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121636121886_))))
                                                  (let ((_tl121639121894_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121641121889_)))
                                                        (_hd121640121892_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121641121889_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121639121894_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl121618121838_))
                                                            (___kont126592126593_
                                                             _hd121640121892_
                                                             _hd121631121868_
                                                             _tl121611121811_
                                                             _arg121617121830_)
                                                            (___match126693126694_
                                                             _e121608121801_
                                                             _hd121607121804_
                                                             _tl121606121806_
                                                             _e121620121833_
                                                             _hd121619121836_
                                                             _tl121618121838_
                                                             _e121623121841_
                                                             _hd121622121844_
                                                             _tl121621121846_
                                                             _e121626121849_
                                                             _hd121625121852_
                                                             _tl121624121854_
                                                             _e121629121857_
                                                             _hd121628121860_
                                                             _tl121627121862_
                                                             _e121632121865_
                                                             _hd121631121868_
                                                             _tl121630121870_
                                                             _e121635121873_
                                                             _hd121634121876_
                                                             _tl121633121878_
                                                             _e121638121881_
                                                             _hd121637121884_
                                                             _tl121636121886_
                                                             _e121641121889_
                                                             _hd121640121892_
                                                             _tl121639121894_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g121555121679_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121555121679_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g121555121679_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g121555121679_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g121555121679_)))))
                        (let () (declare (not safe)) (_g121555121679_)))
                    (let () (declare (not safe)) (_g121555121679_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g121555121679_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121555121679_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g121555121679_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g121555121679_)))))
                            (let () (declare (not safe)) (_g121555121679_)))
                        (let () (declare (not safe)) (_g121555121679_)))
                    (let () (declare (not safe)) (_g121555121679_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g121555121679_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g121555121679_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop121612121814_ _target121609121809_ '())))))
                   (___match126611126612_
                    (lambda (_e121562121937_
                             _hd121561121940_
                             _tl121560121942_
                             ___splice126588126589_
                             _target121563121945_
                             _tl121565121947_)
                      (letrec ((_loop121566121950_
                                (lambda (_hd121564121953_ _arg121570121955_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121564121953_))
                                      (let ((_e121567121958_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121564121953_))))
                                        (let ((_lp-tl121569121963_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121567121958_)))
                                              (_lp-hd121568121961_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121567121958_))))
                                          (let ((__tmp127850
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd121568121961_
                                                         _arg121570121955_))))
                                            (declare (not safe))
                                            (_loop121566121950_
                                             _lp-tl121569121963_
                                             __tmp127850))))
                                      (let ((_arg121571121966_
                                             (reverse _arg121570121955_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121560121942_))
                                            (let ((_e121574121969_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121560121942_))))
                                              (let ((_tl121572121974_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121574121969_)))
                                                    (_hd121573121972_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121574121969_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121573121972_))
                                                    (let ((_e121577121977_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121573121972_))))
                                                      (let ((_tl121575121982_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121577121977_)))
                    (_hd121576121980_
                     (let () (declare (not safe)) (##car _e121577121977_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121576121980_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121576121980_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121575121982_))
                            (let ((_e121580121985_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121575121982_))))
                              (let ((_tl121578121990_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121580121985_)))
                                    (_hd121579121988_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121580121985_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121579121988_))
                                    (let ((_e121583121993_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121579121988_))))
                                      (let ((_tl121581121998_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121583121993_)))
                                            (_hd121582121996_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121583121993_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121582121996_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121582121996_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121581121998_))
                                                    (let ((_e121586122001_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121581121998_))))
                                                      (let ((_tl121584122006_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121586122001_)))
                    (_hd121585122004_
                     (let () (declare (not safe)) (##car _e121586122001_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121584122006_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl121578121990_))
                        (let ((___splice126590126591_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl121578121990_
                                  '0))))
                          (let ((_tl121589122011_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126590126591_ '1)))
                                (_target121587122009_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126590126591_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl121589122011_))
                                (letrec ((_loop121590122014_
                                          (lambda (_hd121588122017_
                                                   _xarg121594122019_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121588122017_))
                                                (let ((_e121591122022_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121588122017_))))
                                                  (let ((_lp-tl121593122027_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121591122022_)))
                                                        (_lp-hd121592122025_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121591122022_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd121592122025_))
                                                        (let ((_e121598122030_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd121592122025_))))
                  (let ((_tl121596122035_
                         (let () (declare (not safe)) (##cdr _e121598122030_)))
                        (_hd121597122033_
                         (let ()
                           (declare (not safe))
                           (##car _e121598122030_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121597122033_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd121597122033_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121596122035_))
                                (let ((_e121601122038_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121596122035_))))
                                  (let ((_tl121599122043_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121601122038_)))
                                        (_hd121600122041_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121601122038_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121599122043_))
                                        (let ((__tmp127849
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd121600122041_
                                                       _xarg121594122019_))))
                                          (declare (not safe))
                                          (_loop121590122014_
                                           _lp-tl121593122027_
                                           __tmp127849))
                                        (___match126623126624_
                                         _e121562121937_
                                         _hd121561121940_
                                         _tl121560121942_
                                         ___splice126588126589_
                                         _target121563121945_
                                         _tl121565121947_))))
                                (___match126623126624_
                                 _e121562121937_
                                 _hd121561121940_
                                 _tl121560121942_
                                 ___splice126588126589_
                                 _target121563121945_
                                 _tl121565121947_))
                            (___match126623126624_
                             _e121562121937_
                             _hd121561121940_
                             _tl121560121942_
                             ___splice126588126589_
                             _target121563121945_
                             _tl121565121947_))
                        (___match126623126624_
                         _e121562121937_
                         _hd121561121940_
                         _tl121560121942_
                         ___splice126588126589_
                         _target121563121945_
                         _tl121565121947_))))
                (___match126623126624_
                 _e121562121937_
                 _hd121561121940_
                 _tl121560121942_
                 ___splice126588126589_
                 _target121563121945_
                 _tl121565121947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg121595122046_
                                                       (reverse _xarg121594122019_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl121572121974_))
                                                      (___kont126586126587_
                                                       _xarg121595122046_
                                                       _hd121585122004_
                                                       _arg121571121966_)
                                                      (___match126623126624_
                                                       _e121562121937_
                                                       _hd121561121940_
                                                       _tl121560121942_
                                                       ___splice126588126589_
                                                       _target121563121945_
                                                       _tl121565121947_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop121590122014_
                                     _target121587122009_
                                     '())))
                                (___match126623126624_
                                 _e121562121937_
                                 _hd121561121940_
                                 _tl121560121942_
                                 ___splice126588126589_
                                 _target121563121945_
                                 _tl121565121947_))))
                        (___match126623126624_
                         _e121562121937_
                         _hd121561121940_
                         _tl121560121942_
                         ___splice126588126589_
                         _target121563121945_
                         _tl121565121947_))
                    (___match126623126624_
                     _e121562121937_
                     _hd121561121940_
                     _tl121560121942_
                     ___splice126588126589_
                     _target121563121945_
                     _tl121565121947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126623126624_
                                                     _e121562121937_
                                                     _hd121561121940_
                                                     _tl121560121942_
                                                     ___splice126588126589_
                                                     _target121563121945_
                                                     _tl121565121947_))
                                                (___match126623126624_
                                                 _e121562121937_
                                                 _hd121561121940_
                                                 _tl121560121942_
                                                 ___splice126588126589_
                                                 _target121563121945_
                                                 _tl121565121947_))
                                            (___match126623126624_
                                             _e121562121937_
                                             _hd121561121940_
                                             _tl121560121942_
                                             ___splice126588126589_
                                             _target121563121945_
                                             _tl121565121947_))))
                                    (___match126623126624_
                                     _e121562121937_
                                     _hd121561121940_
                                     _tl121560121942_
                                     ___splice126588126589_
                                     _target121563121945_
                                     _tl121565121947_))))
                            (___match126623126624_
                             _e121562121937_
                             _hd121561121940_
                             _tl121560121942_
                             ___splice126588126589_
                             _target121563121945_
                             _tl121565121947_))
                        (___match126623126624_
                         _e121562121937_
                         _hd121561121940_
                         _tl121560121942_
                         ___splice126588126589_
                         _target121563121945_
                         _tl121565121947_))
                    (___match126623126624_
                     _e121562121937_
                     _hd121561121940_
                     _tl121560121942_
                     ___splice126588126589_
                     _target121563121945_
                     _tl121565121947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126623126624_
                                                     _e121562121937_
                                                     _hd121561121940_
                                                     _tl121560121942_
                                                     ___splice126588126589_
                                                     _target121563121945_
                                                     _tl121565121947_))))
                                            (___match126623126624_
                                             _e121562121937_
                                             _hd121561121940_
                                             _tl121560121942_
                                             ___splice126588126589_
                                             _target121563121945_
                                             _tl121565121947_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop121566121950_ _target121563121945_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126584126585_))
                  (let ((_e121562121937_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126584126585_))))
                    (let ((_tl121560121942_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121562121937_)))
                          (_hd121561121940_
                           (let ()
                             (declare (not safe))
                             (##car _e121562121937_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd121561121940_))
                          (let ((___splice126588126589_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd121561121940_
                                    '0))))
                            (let ((_tl121565121947_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126588126589_ '1)))
                                  (_target121563121945_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126588126589_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl121565121947_))
                                  (___match126611126612_
                                   _e121562121937_
                                   _hd121561121940_
                                   _tl121560121942_
                                   ___splice126588126589_
                                   _target121563121945_
                                   _tl121565121947_)
                                  (___match126623126624_
                                   _e121562121937_
                                   _hd121561121940_
                                   _tl121560121942_
                                   ___splice126588126589_
                                   _target121563121945_
                                   _tl121565121947_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121560121942_))
                              (let ((_e121650121692_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121560121942_))))
                                (let ((_tl121648121697_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121650121692_)))
                                      (_hd121649121695_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121650121692_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121649121695_))
                                      (let ((_e121653121700_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121649121695_))))
                                        (let ((_tl121651121705_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121653121700_)))
                                              (_hd121652121703_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121653121700_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd121652121703_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd121652121703_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl121651121705_))
                                                      (let ((_e121656121708_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl121651121705_))))
                (let ((_tl121654121713_
                       (let () (declare (not safe)) (##cdr _e121656121708_)))
                      (_hd121655121711_
                       (let () (declare (not safe)) (##car _e121656121708_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd121655121711_))
                      (let ((_e121659121716_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd121655121711_))))
                        (let ((_tl121657121721_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121659121716_)))
                              (_hd121658121719_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121659121716_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd121658121719_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd121658121719_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121657121721_))
                                      (let ((_e121662121724_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121657121721_))))
                                        (let ((_tl121660121729_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121662121724_)))
                                              (_hd121661121727_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121662121724_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121660121729_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl121654121713_))
                                                  (let ((_e121665121732_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl121654121713_))))
                                                    (let ((_tl121663121737_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121665121732_)))
                                                          (_hd121664121735_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121665121732_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd121664121735_))
                                                          (let ((_e121668121740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd121664121735_))))
                    (let ((_tl121666121745_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121668121740_)))
                          (_hd121667121743_
                           (let ()
                             (declare (not safe))
                             (##car _e121668121740_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd121667121743_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd121667121743_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl121666121745_))
                                  (let ((_e121671121748_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl121666121745_))))
                                    (let ((_tl121669121753_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121671121748_)))
                                          (_hd121670121751_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121671121748_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl121669121753_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl121663121737_))
                                              (let ((_e121674121756_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl121663121737_))))
                                                (let ((_tl121672121761_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e121674121756_)))
                                                      (_hd121673121759_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e121674121756_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl121672121761_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121648121697_))
                                                          (___kont126596126597_
                                                           _hd121670121751_
                                                           _hd121661121727_
                                                           _hd121561121940_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g121555121679_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g121555121679_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g121555121679_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g121555121679_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121555121679_)))
                              (let () (declare (not safe)) (_g121555121679_)))
                          (let () (declare (not safe)) (_g121555121679_)))))
                  (let () (declare (not safe)) (_g121555121679_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121555121679_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121555121679_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121555121679_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g121555121679_)))
                              (let ()
                                (declare (not safe))
                                (_g121555121679_)))))
                      (let () (declare (not safe)) (_g121555121679_)))))
              (let () (declare (not safe)) (_g121555121679_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121555121679_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121555121679_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121555121679_)))))
                              (let ()
                                (declare (not safe))
                                (_g121555121679_))))))
                  (let () (declare (not safe)) (_g121555121679_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form121355_)
        (let* ((_g121357121371_
                (lambda (_g121358121368_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g121358121368_))))
               (_g121356121548_
                (lambda (_g121358121374_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g121358121374_))
                      (let ((_e121363121376_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g121358121374_))))
                        (let ((_hd121362121379_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121363121376_)))
                              (_tl121361121381_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121363121376_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121361121381_))
                              (let ((_e121366121384_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121361121381_))))
                                (let ((_hd121365121387_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121366121384_)))
                                      (_tl121364121389_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121366121384_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121364121389_))
                                      ((lambda (_L121392_ _L121393_)
                                         (let* ((___stx126706126707_ _L121393_)
                                                (_g121408121436_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx126706126707_)))))
                                           (let ((___kont126708126709_
                                                  (lambda (_L121527_)
                                                    (length (let ((__tmp127851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g121537121540_ _g121538121542_)
                             (let ()
                               (declare (not safe))
                               (cons _g121537121540_ _g121538121542_)))))
                      (declare (not safe))
                      (foldr1 __tmp127851 '() _L121527_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont126712126713_
                                                  (lambda (_L121478_ _L121479_)
                                                    (let ((__tmp127852
                                                           (length (let ((__tmp127853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g121490121493_ _g121491121495_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g121490121493_
                                            _g121491121495_)))))
                             (declare (not safe))
                             (foldr1 __tmp127853 '() _L121479_)))))
              (declare (not safe))
              (cons __tmp127852 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont126716126717_
                                                  (lambda (_L121441_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match126731126732_
                                                     (lambda (___splice126714126715_
                                                              _target121422121454_
                                                              _tl121424121456_)
                                                       (letrec ((_loop121425121459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd121423121462_ _arg121429121464_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd121423121462_))
                               (let ((_e121426121467_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd121423121462_))))
                                 (let ((_lp-tl121428121472_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121426121467_)))
                                       (_lp-hd121427121470_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121426121467_))))
                                   (let ((__tmp127854
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd121427121470_
                                                  _arg121429121464_))))
                                     (declare (not safe))
                                     (_loop121425121459_
                                      _lp-tl121428121472_
                                      __tmp127854))))
                               (let ((_arg121430121475_
                                      (reverse _arg121429121464_)))
                                 (___kont126712126713_
                                  _tl121424121456_
                                  _arg121430121475_))))))
                 (let ()
                   (declare (not safe))
                   (_loop121425121459_ _target121422121454_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126725126726_
                                                     (lambda (___splice126710126711_
                                                              _target121411121503_
                                                              _tl121413121505_)
                                                       (letrec ((_loop121414121508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd121412121511_ _arg121418121513_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd121412121511_))
                               (let ((_e121415121516_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd121412121511_))))
                                 (let ((_lp-tl121417121521_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121415121516_)))
                                       (_lp-hd121416121519_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121415121516_))))
                                   (let ((__tmp127855
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd121416121519_
                                                  _arg121418121513_))))
                                     (declare (not safe))
                                     (_loop121414121508_
                                      _lp-tl121417121521_
                                      __tmp127855))))
                               (let ((_arg121419121524_
                                      (reverse _arg121418121513_)))
                                 (___kont126708126709_ _arg121419121524_))))))
                 (let ()
                   (declare (not safe))
                   (_loop121414121508_ _target121411121503_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx126706126707_))
                                                   (let ((___splice126710126711_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx126706126707_
                                                             '0))))
                                                     (let ((_tl121413121505_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice126710126711_
                                                               '1)))
                                                           (_target121411121503_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice126710126711_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121413121505_))
                                                           (___match126725126726_
                                                            ___splice126710126711_
                                                            _target121411121503_
                                                            _tl121413121505_)
                                                           (___match126731126732_
                                                            ___splice126710126711_
                                                            _target121411121503_
                                                            _tl121413121505_))))
                                                   (___kont126716126717_
                                                    ___stx126706126707_))))))
                                       _hd121365121387_
                                       _hd121362121379_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121357121371_ _g121358121374_)))))
                              (let ()
                                (declare (not safe))
                                (_g121357121371_ _g121358121374_)))))
                      (let ()
                        (declare (not safe))
                        (_g121357121371_ _g121358121374_))))))
          (declare (not safe))
          (_g121356121548_ _form121355_))))
    (define gxc#lambda-expr?
      (lambda (_expr121308_)
        (let* ((___stx126734126735_ _expr121308_)
               (_g121311121321_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126734126735_)))))
          (let ((___kont126736126737_ (lambda (_L121341_) '#t))
                (___kont126738126739_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126734126735_))
                (let ((_e121316121333_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126734126735_))))
                  (let ((_tl121314121338_
                         (let () (declare (not safe)) (##cdr _e121316121333_)))
                        (_hd121315121336_
                         (let ()
                           (declare (not safe))
                           (##car _e121316121333_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121315121336_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd121315121336_))
                            (___kont126736126737_ _tl121314121338_)
                            (___kont126738126739_))
                        (___kont126738126739_))))
                (___kont126738126739_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr121261_)
        (let* ((___stx126752126753_ _expr121261_)
               (_g121264121274_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126752126753_)))))
          (let ((___kont126754126755_ (lambda (_L121294_) '#t))
                (___kont126756126757_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126752126753_))
                (let ((_e121269121286_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126752126753_))))
                  (let ((_tl121267121291_
                         (let () (declare (not safe)) (##cdr _e121269121286_)))
                        (_hd121268121289_
                         (let ()
                           (declare (not safe))
                           (##car _e121269121286_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121268121289_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd121268121289_))
                            (___kont126754126755_ _tl121267121291_)
                            (___kont126756126757_))
                        (___kont126756126757_))))
                (___kont126756126757_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr121130_)
        (let* ((___stx126770126771_ _expr121130_)
               (_g121133121163_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126770126771_)))))
          (let ((___kont126772126773_
                 (lambda (_L121231_ _L121232_ _L121233_)
                   (if (let () (declare (not safe)) (gx#identifier? _L121233_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L121232_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L121231_))
                           '#f)
                       '#f)))
                (___kont126774126775_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126770126771_))
                (let ((_e121140121175_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126770126771_))))
                  (let ((_tl121138121180_
                         (let () (declare (not safe)) (##cdr _e121140121175_)))
                        (_hd121139121178_
                         (let ()
                           (declare (not safe))
                           (##car _e121140121175_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121139121178_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd121139121178_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121138121180_))
                                (let ((_e121143121183_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121138121180_))))
                                  (let ((_tl121141121188_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121143121183_)))
                                        (_hd121142121186_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121143121183_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd121142121186_))
                                        (let ((_e121146121191_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd121142121186_))))
                                          (let ((_tl121144121196_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121146121191_)))
                                                (_hd121145121194_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121146121191_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121145121194_))
                                                (let ((_e121149121199_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121145121194_))))
                                                  (let ((_tl121147121204_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121149121199_)))
                                                        (_hd121148121202_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121149121199_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121148121202_))
                                                        (let ((_e121152121207_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121148121202_))))
                  (let ((_tl121150121212_
                         (let () (declare (not safe)) (##cdr _e121152121207_)))
                        (_hd121151121210_
                         (let ()
                           (declare (not safe))
                           (##car _e121152121207_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl121150121212_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121147121204_))
                            (let ((_e121155121215_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121147121204_))))
                              (let ((_tl121153121220_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121155121215_)))
                                    (_hd121154121218_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121155121215_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121153121220_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121144121196_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121141121188_))
                                            (let ((_e121158121223_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121141121188_))))
                                              (let ((_tl121156121228_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121158121223_)))
                                                    (_hd121157121226_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121158121223_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121156121228_))
                                                    (___kont126772126773_
                                                     _hd121157121226_
                                                     _hd121154121218_
                                                     _hd121151121210_)
                                                    (___kont126774126775_))))
                                            (___kont126774126775_))
                                        (___kont126774126775_))
                                    (___kont126774126775_))))
                            (___kont126774126775_))
                        (___kont126774126775_))))
                (___kont126774126775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126774126775_))))
                                        (___kont126774126775_))))
                                (___kont126774126775_))
                            (___kont126774126775_))
                        (___kont126774126775_))))
                (___kont126774126775_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr120455_)
        (let* ((___stx126832126833_ _expr120455_)
               (_g120458120616_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126832126833_)))))
          (let ((___kont126834126835_
                 (lambda (_L121004_
                          _L121005_
                          _L121006_
                          _L121007_
                          _L121008_
                          _L121009_
                          _L121010_
                          _L121011_
                          _L121012_
                          _L121013_
                          _L121014_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L121011_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L121007_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L121006_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L121014_
                                      _L121005_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L121013_
                                          _L121010_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L121008_
                                              _L121004_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L121012_
                                              _L121009_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont126836126837_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126832126833_))
                (let ((_e120473120628_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126832126833_))))
                  (let ((_tl120471120633_
                         (let () (declare (not safe)) (##cdr _e120473120628_)))
                        (_hd120472120631_
                         (let ()
                           (declare (not safe))
                           (##car _e120473120628_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd120472120631_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd120472120631_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl120471120633_))
                                (let ((_e120476120636_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl120471120633_))))
                                  (let ((_tl120474120641_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120476120636_)))
                                        (_hd120475120639_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120476120636_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd120475120639_))
                                        (let ((_e120479120644_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd120475120639_))))
                                          (let ((_tl120477120649_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120479120644_)))
                                                (_hd120478120647_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120479120644_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd120478120647_))
                                                (let ((_e120482120652_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd120478120647_))))
                                                  (let ((_tl120480120657_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120482120652_)))
                                                        (_hd120481120655_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120482120652_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd120481120655_))
                                                        (let ((_e120485120660_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd120481120655_))))
                  (let ((_tl120483120665_
                         (let () (declare (not safe)) (##cdr _e120485120660_)))
                        (_hd120484120663_
                         (let ()
                           (declare (not safe))
                           (##car _e120485120660_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl120483120665_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120480120657_))
                            (let ((_e120488120668_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120480120657_))))
                              (let ((_tl120486120673_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120488120668_)))
                                    (_hd120487120671_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120488120668_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120487120671_))
                                    (let ((_e120491120676_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120487120671_))))
                                      (let ((_tl120489120681_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120491120676_)))
                                            (_hd120490120679_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120491120676_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd120490120679_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd120490120679_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120489120681_))
                                                    (let ((_e120494120684_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120489120681_))))
                                                      (let ((_tl120492120689_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120494120684_)))
                    (_hd120493120687_
                     (let () (declare (not safe)) (##car _e120494120684_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd120493120687_))
                    (let ((_e120497120692_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd120493120687_))))
                      (let ((_tl120495120697_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120497120692_)))
                            (_hd120496120695_
                             (let ()
                               (declare (not safe))
                               (##car _e120497120692_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd120496120695_))
                            (let ((_e120500120700_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd120496120695_))))
                              (let ((_tl120498120705_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120500120700_)))
                                    (_hd120499120703_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120500120700_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120499120703_))
                                    (let ((_e120503120708_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120499120703_))))
                                      (let ((_tl120501120713_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120503120708_)))
                                            (_hd120502120711_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120503120708_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120501120713_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120498120705_))
                                                (let ((_e120506120716_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120498120705_))))
                                                  (let ((_tl120504120721_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120506120716_)))
                                                        (_hd120505120719_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120506120716_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120504120721_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl120495120697_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl120492120689_))
                        (let ((_e120509120724_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120492120689_))))
                          (let ((_tl120507120729_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120509120724_)))
                                (_hd120508120727_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120509120724_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120508120727_))
                                (let ((_e120512120732_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120508120727_))))
                                  (let ((_tl120510120737_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120512120732_)))
                                        (_hd120511120735_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120512120732_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120511120735_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd120511120735_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120510120737_))
                                                (let ((_e120515120740_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120510120737_))))
                                                  (let ((_tl120513120745_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120515120740_)))
                                                        (_hd120514120743_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120515120740_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd120514120743_))
                                                        (let ((_e120518120748_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd120514120743_))))
                  (let ((_tl120516120753_
                         (let () (declare (not safe)) (##cdr _e120518120748_)))
                        (_hd120517120751_
                         (let ()
                           (declare (not safe))
                           (##car _e120518120748_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl120513120745_))
                        (let ((_e120521120756_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120513120745_))))
                          (let ((_tl120519120761_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120521120756_)))
                                (_hd120520120759_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120521120756_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120520120759_))
                                (let ((_e120524120764_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120520120759_))))
                                  (let ((_tl120522120769_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120524120764_)))
                                        (_hd120523120767_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120524120764_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120523120767_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd120523120767_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120522120769_))
                                                (let ((_e120527120772_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120522120769_))))
                                                  (let ((_tl120525120777_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120527120772_)))
                                                        (_hd120526120775_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120527120772_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd120526120775_))
                                                        (let ((_e120530120780_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd120526120775_))))
                  (let ((_tl120528120785_
                         (let () (declare (not safe)) (##cdr _e120530120780_)))
                        (_hd120529120783_
                         (let ()
                           (declare (not safe))
                           (##car _e120530120780_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd120529120783_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd120529120783_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl120528120785_))
                                (let ((_e120533120788_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl120528120785_))))
                                  (let ((_tl120531120793_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120533120788_)))
                                        (_hd120532120791_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120533120788_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl120531120793_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120525120777_))
                                            (let ((_e120536120796_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120525120777_))))
                                              (let ((_tl120534120801_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120536120796_)))
                                                    (_hd120535120799_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120536120796_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd120535120799_))
                                                    (let ((_e120539120804_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd120535120799_))))
                                                      (let ((_tl120537120809_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120539120804_)))
                    (_hd120538120807_
                     (let () (declare (not safe)) (##car _e120539120804_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd120538120807_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd120538120807_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120537120809_))
                            (let ((_e120542120812_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120537120809_))))
                              (let ((_tl120540120817_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120542120812_)))
                                    (_hd120541120815_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120542120812_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl120540120817_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120534120801_))
                                        (let ((_e120545120820_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120534120801_))))
                                          (let ((_tl120543120825_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120545120820_)))
                                                (_hd120544120823_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120545120820_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd120544120823_))
                                                (let ((_e120548120828_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd120544120823_))))
                                                  (let ((_tl120546120833_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120548120828_)))
                                                        (_hd120547120831_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120548120828_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd120547120831_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd120547120831_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl120546120833_))
                        (let ((_e120551120836_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120546120833_))))
                          (let ((_tl120549120841_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120551120836_)))
                                (_hd120550120839_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120551120836_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl120549120841_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl120519120761_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl120507120729_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120486120673_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120477120649_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120474120641_))
                                                    (let ((_e120554120844_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120474120641_))))
                                                      (let ((_tl120552120849_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120554120844_)))
                    (_hd120553120847_
                     (let () (declare (not safe)) (##car _e120554120844_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd120553120847_))
                    (let ((_e120557120852_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd120553120847_))))
                      (let ((_tl120555120857_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120557120852_)))
                            (_hd120556120855_
                             (let ()
                               (declare (not safe))
                               (##car _e120557120852_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd120556120855_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd120556120855_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl120555120857_))
                                    (let ((_e120560120860_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl120555120857_))))
                                      (let ((_tl120558120865_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120560120860_)))
                                            (_hd120559120863_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120560120860_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120558120865_))
                                            (let ((_e120563120868_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120558120865_))))
                                              (let ((_tl120561120873_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120563120868_)))
                                                    (_hd120562120871_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120563120868_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd120562120871_))
                                                    (let ((_e120566120876_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd120562120871_))))
                                                      (let ((_tl120564120881_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120566120876_)))
                    (_hd120565120879_
                     (let () (declare (not safe)) (##car _e120566120876_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd120565120879_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd120565120879_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120564120881_))
                            (let ((_e120569120884_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120564120881_))))
                              (let ((_tl120567120889_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120569120884_)))
                                    (_hd120568120887_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120569120884_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120568120887_))
                                    (let ((_e120572120892_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120568120887_))))
                                      (let ((_tl120570120897_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120572120892_)))
                                            (_hd120571120895_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120572120892_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd120571120895_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd120571120895_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120570120897_))
                                                    (let ((_e120575120900_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120570120897_))))
                                                      (let ((_tl120573120905_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120575120900_)))
                    (_hd120574120903_
                     (let () (declare (not safe)) (##car _e120575120900_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl120573120905_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl120567120889_))
                        (let ((_e120578120908_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120567120889_))))
                          (let ((_tl120576120913_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120578120908_)))
                                (_hd120577120911_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120578120908_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120577120911_))
                                (let ((_e120581120916_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120577120911_))))
                                  (let ((_tl120579120921_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120581120916_)))
                                        (_hd120580120919_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120581120916_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120580120919_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd120580120919_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120579120921_))
                                                (let ((_e120584120924_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120579120921_))))
                                                  (let ((_tl120582120929_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120584120924_)))
                                                        (_hd120583120927_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120584120924_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120582120929_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl120576120913_))
                                                            (let ((_e120587120932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl120576120913_))))
                      (let ((_tl120585120937_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120587120932_)))
                            (_hd120586120935_
                             (let ()
                               (declare (not safe))
                               (##car _e120587120932_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd120586120935_))
                            (let ((_e120590120940_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd120586120935_))))
                              (let ((_tl120588120945_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120590120940_)))
                                    (_hd120589120943_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120590120940_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd120589120943_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd120589120943_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120588120945_))
                                            (let ((_e120593120948_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120588120945_))))
                                              (let ((_tl120591120953_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120593120948_)))
                                                    (_hd120592120951_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120593120948_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl120591120953_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl120585120937_))
                                                        (let ((_e120596120956_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl120585120937_))))
                  (let ((_tl120594120961_
                         (let () (declare (not safe)) (##cdr _e120596120956_)))
                        (_hd120595120959_
                         (let ()
                           (declare (not safe))
                           (##car _e120596120956_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd120595120959_))
                        (let ((_e120599120964_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd120595120959_))))
                          (let ((_tl120597120969_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120599120964_)))
                                (_hd120598120967_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120599120964_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd120598120967_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd120598120967_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120597120969_))
                                        (let ((_e120602120972_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120597120969_))))
                                          (let ((_tl120600120977_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120602120972_)))
                                                (_hd120601120975_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120602120972_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120600120977_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120594120961_))
                                                    (let ((_e120605120980_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120594120961_))))
                                                      (let ((_tl120603120985_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120605120980_)))
                    (_hd120604120983_
                     (let () (declare (not safe)) (##car _e120605120980_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd120604120983_))
                    (let ((_e120608120988_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd120604120983_))))
                      (let ((_tl120606120993_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120608120988_)))
                            (_hd120607120991_
                             (let ()
                               (declare (not safe))
                               (##car _e120608120988_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd120607120991_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd120607120991_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl120606120993_))
                                    (let ((_e120611120996_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl120606120993_))))
                                      (let ((_tl120609121001_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120611120996_)))
                                            (_hd120610120999_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120611120996_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120609121001_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120603120985_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl120561120873_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120552120849_))
                                                        (___kont126834126835_
                                                         _hd120610120999_
                                                         _hd120601120975_
                                                         _hd120583120927_
                                                         _hd120574120903_
                                                         _hd120559120863_
                                                         _hd120550120839_
                                                         _hd120541120815_
                                                         _hd120532120791_
                                                         _hd120517120751_
                                                         _hd120502120711_
                                                         _hd120484120663_)
                                                        (___kont126836126837_))
                                                    (___kont126836126837_))
                                                (___kont126836126837_))
                                            (___kont126836126837_))))
                                    (___kont126836126837_))
                                (___kont126836126837_))
                            (___kont126836126837_))))
                    (___kont126836126837_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126836126837_))
                                                (___kont126836126837_))))
                                        (___kont126836126837_))
                                    (___kont126836126837_))
                                (___kont126836126837_))))
                        (___kont126836126837_))))
                (___kont126836126837_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126836126837_))))
                                            (___kont126836126837_))
                                        (___kont126836126837_))
                                    (___kont126836126837_))))
                            (___kont126836126837_))))
                    (___kont126836126837_))
                (___kont126836126837_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126836126837_))
                                            (___kont126836126837_))
                                        (___kont126836126837_))))
                                (___kont126836126837_))))
                        (___kont126836126837_))
                    (___kont126836126837_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126836126837_))
                                                (___kont126836126837_))
                                            (___kont126836126837_))))
                                    (___kont126836126837_))))
                            (___kont126836126837_))
                        (___kont126836126837_))
                    (___kont126836126837_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126836126837_))))
                                            (___kont126836126837_))))
                                    (___kont126836126837_))
                                (___kont126836126837_))
                            (___kont126836126837_))))
                    (___kont126836126837_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126836126837_))
                                                (___kont126836126837_))
                                            (___kont126836126837_))
                                        (___kont126836126837_))
                                    (___kont126836126837_))
                                (___kont126836126837_))))
                        (___kont126836126837_))
                    (___kont126836126837_))
                (___kont126836126837_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126836126837_))))
                                        (___kont126836126837_))
                                    (___kont126836126837_))))
                            (___kont126836126837_))
                        (___kont126836126837_))
                    (___kont126836126837_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126836126837_))))
                                            (___kont126836126837_))
                                        (___kont126836126837_))))
                                (___kont126836126837_))
                            (___kont126836126837_))
                        (___kont126836126837_))))
                (___kont126836126837_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126836126837_))
                                            (___kont126836126837_))
                                        (___kont126836126837_))))
                                (___kont126836126837_))))
                        (___kont126836126837_))))
                (___kont126836126837_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126836126837_))
                                            (___kont126836126837_))
                                        (___kont126836126837_))))
                                (___kont126836126837_))))
                        (___kont126836126837_))
                    (___kont126836126837_))
                (___kont126836126837_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126836126837_))
                                            (___kont126836126837_))))
                                    (___kont126836126837_))))
                            (___kont126836126837_))))
                    (___kont126836126837_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126836126837_))
                                                (___kont126836126837_))
                                            (___kont126836126837_))))
                                    (___kont126836126837_))))
                            (___kont126836126837_))
                        (___kont126836126837_))))
                (___kont126836126837_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126836126837_))))
                                        (___kont126836126837_))))
                                (___kont126836126837_))
                            (___kont126836126837_))
                        (___kont126836126837_))))
                (___kont126836126837_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx120197_ _id120198_ _clauses120199_ _gensym?120200_)
        (let _lp120202_ ((_rest120204_ _clauses120199_)
                         (_ids120205_ '())
                         (_impls120206_ '())
                         (_clauses120207_ '()))
          (let* ((_rest120208120216_ _rest120204_)
                 (_else120210120224_
                  (lambda ()
                    (values (reverse _ids120205_)
                            (reverse _impls120206_)
                            (reverse _clauses120207_))))
                 (_K120212120429_
                  (lambda (_rest120227_ _clause120228_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause120228_))
                        (let ((__tmp127911
                               (let ()
                                 (declare (not safe))
                                 (cons _clause120228_ _clauses120207_))))
                          (declare (not safe))
                          (_lp120202_
                           _rest120227_
                           _ids120205_
                           _impls120206_
                           __tmp127911))
                        (let* ((_g120230120241_
                                (lambda (_g120231120238_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g120231120238_))))
                               (_g120229120426_
                                (lambda (_g120231120244_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g120231120244_))
                                      (let ((_e120236120246_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g120231120244_))))
                                        (let ((_hd120235120249_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120236120246_)))
                                              (_tl120234120251_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120236120246_))))
                                          ((lambda (_L120254_ _L120255_)
                                             (let* ((_id120272_
                                                     (let ((__tmp127858
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id120198_)))
                                                           (__tmp127857
                                                            (length _clauses120207_))
                                                           (__tmp127856
                                                            (if _gensym?120200_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp127858
                                                        '"__"
                                                        __tmp127857
                                                        __tmp127856)))
                                                    (_id120274_
                                                     (let ((__tmp127859
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx120197_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id120272_
                                                        __tmp127859)))
                                                    (_impl120276_
                                                     (let ((__tmp127860
                                                            (let ((__tmp127862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp127861
                           (let ()
                             (declare (not safe))
                             (cons _L120255_ _L120254_))))
                      (declare (not safe))
                      (cons __tmp127862 __tmp127861))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp127860 _stx120197_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause120423_
                                                     (let* ((___stx127216127217_
                                                             _L120255_)
                                                            (_g120280120308_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx127216127217_)))))
               (let ((___kont127218127219_
                      (lambda (_L120402_)
                        (let ((__tmp127863
                               (let ((__tmp127864
                                      (let ((__tmp127865
                                             (let ((__tmp127866
                                                    (let ((__tmp127872
                                                           (let ((__tmp127873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id120274_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp127873)))
                  (__tmp127867
                   (let ((__tmp127868
                          (lambda (_g120412120415_ _g120413120417_)
                            (let ((__tmp127869
                                   (let ((__tmp127871
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp127870
                                          (let ()
                                            (declare (not safe))
                                            (cons _g120412120415_ '()))))
                                     (declare (not safe))
                                     (cons __tmp127871 __tmp127870))))
                              (declare (not safe))
                              (cons __tmp127869 _g120413120417_)))))
                     (declare (not safe))
                     (foldr1 __tmp127868 '() _L120402_))))
              (declare (not safe))
              (cons __tmp127872 __tmp127867))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp127866))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp127865
                                         _stx120197_))))
                                 (declare (not safe))
                                 (cons __tmp127864 '()))))
                          (declare (not safe))
                          (cons _L120255_ __tmp127863))))
                     (___kont127222127223_
                      (lambda (_L120353_ _L120354_)
                        (let ((__tmp127874
                               (let ((__tmp127875
                                      (let ((__tmp127876
                                             (let ((__tmp127877
                                                    (let ((__tmp127891
                                                           (let ((__tmp127892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp127892)))
                  (__tmp127878
                   (let ((__tmp127889
                          (let ((__tmp127890
                                 (let ()
                                   (declare (not safe))
                                   (cons _id120274_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp127890)))
                         (__tmp127879
                          (let ((__tmp127885
                                 (let ((__tmp127886
                                        (let ((__tmp127888
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp127887
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L120353_ '()))))
                                          (declare (not safe))
                                          (cons __tmp127888 __tmp127887))))
                                   (declare (not safe))
                                   (cons __tmp127886 '())))
                                (__tmp127880
                                 (let ((__tmp127881
                                        (lambda (_g120365120368_
                                                 _g120366120370_)
                                          (let ((__tmp127882
                                                 (let ((__tmp127884
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp127883
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g120365120368_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp127884
                                                         __tmp127883))))
                                            (declare (not safe))
                                            (cons __tmp127882
                                                  _g120366120370_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp127881 '() _L120354_))))
                            (declare (not safe))
                            (foldr1 cons __tmp127885 __tmp127880))))
                     (declare (not safe))
                     (cons __tmp127889 __tmp127879))))
              (declare (not safe))
              (cons __tmp127891 __tmp127878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp127877))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp127876
                                         _stx120197_))))
                                 (declare (not safe))
                                 (cons __tmp127875 '()))))
                          (declare (not safe))
                          (cons _L120255_ __tmp127874))))
                     (___kont127226127227_
                      (lambda (_L120313_)
                        (let ((__tmp127893
                               (let ((__tmp127894
                                      (let ((__tmp127895
                                             (let ((__tmp127896
                                                    (let ((__tmp127904
                                                           (let ((__tmp127905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp127905)))
                  (__tmp127897
                   (let ((__tmp127902
                          (let ((__tmp127903
                                 (let ()
                                   (declare (not safe))
                                   (cons _id120274_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp127903)))
                         (__tmp127898
                          (let ((__tmp127899
                                 (let ((__tmp127901
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp127900
                                        (let ()
                                          (declare (not safe))
                                          (cons _L120313_ '()))))
                                   (declare (not safe))
                                   (cons __tmp127901 __tmp127900))))
                            (declare (not safe))
                            (cons __tmp127899 '()))))
                     (declare (not safe))
                     (cons __tmp127902 __tmp127898))))
              (declare (not safe))
              (cons __tmp127904 __tmp127897))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp127896))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp127895
                                         _stx120197_))))
                                 (declare (not safe))
                                 (cons __tmp127894 '()))))
                          (declare (not safe))
                          (cons _L120255_ __tmp127893)))))
                 (let* ((___match127241127242_
                         (lambda (___splice127224127225_
                                  _target120294120329_
                                  _tl120296120331_)
                           (letrec ((_loop120297120334_
                                     (lambda (_hd120295120337_
                                              _arg120301120339_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd120295120337_))
                                           (let ((_e120298120342_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd120295120337_))))
                                             (let ((_lp-tl120300120347_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120298120342_)))
                                                   (_lp-hd120299120345_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120298120342_))))
                                               (let ((__tmp127906
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd120299120345_
                                                              _arg120301120339_))))
                                                 (declare (not safe))
                                                 (_loop120297120334_
                                                  _lp-tl120300120347_
                                                  __tmp127906))))
                                           (let ((_arg120302120350_
                                                  (reverse _arg120301120339_)))
                                             (___kont127222127223_
                                              _tl120296120331_
                                              _arg120302120350_))))))
                             (let ()
                               (declare (not safe))
                               (_loop120297120334_
                                _target120294120329_
                                '())))))
                        (___match127235127236_
                         (lambda (___splice127220127221_
                                  _target120283120378_
                                  _tl120285120380_)
                           (letrec ((_loop120286120383_
                                     (lambda (_hd120284120386_
                                              _arg120290120388_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd120284120386_))
                                           (let ((_e120287120391_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd120284120386_))))
                                             (let ((_lp-tl120289120396_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120287120391_)))
                                                   (_lp-hd120288120394_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120287120391_))))
                                               (let ((__tmp127907
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd120288120394_
                                                              _arg120290120388_))))
                                                 (declare (not safe))
                                                 (_loop120286120383_
                                                  _lp-tl120289120396_
                                                  __tmp127907))))
                                           (let ((_arg120291120399_
                                                  (reverse _arg120290120388_)))
                                             (___kont127218127219_
                                              _arg120291120399_))))))
                             (let ()
                               (declare (not safe))
                               (_loop120286120383_
                                _target120283120378_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx127216127217_))
                       (let ((___splice127220127221_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx127216127217_
                                 '0))))
                         (let ((_tl120285120380_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice127220127221_ '1)))
                               (_target120283120378_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice127220127221_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120285120380_))
                               (___match127235127236_
                                ___splice127220127221_
                                _target120283120378_
                                _tl120285120380_)
                               (___match127241127242_
                                ___splice127220127221_
                                _target120283120378_
                                _tl120285120380_))))
                       (___kont127226127227_ ___stx127216127217_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp127910
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id120274_
                                                              _ids120205_)))
                                                     (__tmp127909
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl120276_
                                                              _impls120206_)))
                                                     (__tmp127908
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause120423_
                                                              _clauses120207_))))
                                                 (declare (not safe))
                                                 (_lp120202_
                                                  _rest120227_
                                                  __tmp127910
                                                  __tmp127909
                                                  __tmp127908))))
                                           _tl120234120251_
                                           _hd120235120249_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g120230120241_ _g120231120244_))))))
                          (declare (not safe))
                          (_g120229120426_ _clause120228_))))))
            (if (let () (declare (not safe)) (##pair? _rest120208120216_))
                (let ((_hd120213120432_
                       (let ()
                         (declare (not safe))
                         (##car _rest120208120216_)))
                      (_tl120214120434_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest120208120216_))))
                  (let* ((_clause120437_ _hd120213120432_)
                         (_rest120439_ _tl120214120434_))
                    (declare (not safe))
                    (_K120212120429_ _rest120439_ _clause120437_)))
                (let () (declare (not safe)) (_else120210120224_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx120444_ _id120445_ _clauses120446_)
        (let ((_gensym?120448_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx120444_
           _id120445_
           _clauses120446_
           _gensym?120448_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g127913_
        (let ((_g127912_ (let () (declare (not safe)) (##length _g127913_))))
          (cond ((let () (declare (not safe)) (##fx= _g127912_ 3))
                 (apply (lambda (_stx120444_ _id120445_ _clauses120446_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx120444_
                             _id120445_
                             _clauses120446_)))
                        _g127913_))
                ((let () (declare (not safe)) (##fx= _g127912_ 4))
                 (apply (lambda (_stx120450_
                                 _id120451_
                                 _clauses120452_
                                 _gensym?120453_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx120450_
                             _id120451_
                             _clauses120452_
                             _gensym?120453_)))
                        _g127913_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g127913_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx119474_)
        (letrec ((_case-lambda-clause-def119476_
                  (lambda (_id120193_ _impl120194_)
                    (let ((__tmp127914
                           (let ((__tmp127915
                                  (let ((__tmp127918
                                         (let ()
                                           (declare (not safe))
                                           (cons _id120193_ '())))
                                        (__tmp127916
                                         (let ((__tmp127917
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl120194_))))
                                           (declare (not safe))
                                           (cons __tmp127917 '()))))
                                    (declare (not safe))
                                    (cons __tmp127918 __tmp127916))))
                             (declare (not safe))
                             (cons '%#define-values __tmp127915))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp127914 _stx119474_))))
                 (_opt-lambda-dispatch-name119477_
                  (lambda (_id120189_)
                    (if (uninterned-symbol? _id120189_)
                        (let ((_str120191_ (symbol->string _id120189_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str120191_))
                              '"%"
                              _id120189_))
                        _id120189_)))
                 (_kw-lambda-dispatch-name119478_
                  (lambda (_id120184_ _name120185_)
                    (if (uninterned-symbol? _id120184_)
                        (let ((_str120187_ (symbol->string _id120184_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str120187_))
                              _name120185_
                              _id120184_))
                        _id120184_))))
          (let* ((___stx127264127265_ _stx119474_)
                 (_g119483119542_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx127264127265_)))))
            (let ((___kont127266127267_
                   (lambda (_L120093_ _L120094_)
                     (let* ((___stx127244127245_ _L120093_)
                            (_g120111120125_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx127244127245_)))))
                       (let ((___kont127246127247_
                              (lambda (_L120169_) _stx119474_))
                             (___kont127248127249_
                              (lambda (_L120138_)
                                (let ((_g127919_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx119474_
                                          _L120094_
                                          _L120138_))))
                                  (begin
                                    (let ((_g127920_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g127919_)
                                                 (##vector-length _g127919_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g127920_ 3)))
                                          (error "Context expects 3 values"
                                                 _g127920_)))
                                    (let ((_ids120148_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g127919_ 0)))
                                          (_impls120149_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g127919_ 1)))
                                          (_clauses120150_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g127919_ 2))))
                                      (let* ((_g127921_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids120148_))
                                             (_defs120153_
                                              (map _case-lambda-clause-def119476_
                                                   _ids120148_
                                                   _impls120149_)))
                                        (let ((__tmp127923
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L120094_)))
                                              (__tmp127922
                                               (map gxc#identifier-symbol
                                                    _ids120148_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp127923
                                           '" => "
                                           __tmp127922))
                                        (let ((__tmp127924
                                               (let ((__tmp127925
                                                      (let ((__tmp127926
                                                             (let ((__tmp127927
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp127928
                                   (let ((__tmp127929
                                          (let ((__tmp127934
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L120094_ '())))
                                                (__tmp127930
                                                 (let ((__tmp127931
                                                        (let ((__tmp127933
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses120150_)))
                      (__tmp127932
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp127933 __tmp127932))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp127931 '()))))
                                            (declare (not safe))
                                            (cons __tmp127934 __tmp127930))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp127929))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp127928
                               _stx119474_))))
                       (declare (not safe))
                       (cons __tmp127927 '()))))
                (declare (not safe))
                (foldr1 cons __tmp127926 _defs120153_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp127925))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp127924
                                           _stx119474_)))))))))
                         (let ((___match127255127256_
                                (lambda (_e120116120161_
                                         _hd120115120164_
                                         _tl120114120166_)
                                  (let ((_L120169_ _tl120114120166_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L120169_))
                                        (___kont127246127247_ _L120169_)
                                        (___kont127248127249_
                                         _tl120114120166_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx127244127245_))
                               (let ((_e120116120161_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx127244127245_))))
                                 (let ((_tl120114120166_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e120116120161_)))
                                       (_hd120115120164_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e120116120161_))))
                                   (___match127255127256_
                                    _e120116120161_
                                    _hd120115120164_
                                    _tl120114120166_)))
                               (let ()
                                 (declare (not safe))
                                 (_g120111120125_))))))))
                  (___kont127268127269_
                   (lambda (_L119911_ _L119912_)
                     (let* ((_g119928119958_
                             (lambda (_g119929119955_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g119929119955_))))
                            (_g119927120053_
                             (lambda (_g119929119961_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g119929119961_))
                                   (let ((_e119935119963_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g119929119961_))))
                                     (let ((_hd119934119966_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e119935119963_)))
                                           (_tl119933119968_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e119935119963_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl119933119968_))
                                           (let ((_e119938119971_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl119933119968_))))
                                             (let ((_hd119937119974_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119938119971_)))
                                                   (_tl119936119976_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119938119971_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119937119974_))
                                                   (let ((_e119941119979_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119937119974_))))
                                                     (let ((_hd119940119982_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119941119979_)))
                                                           (_tl119939119984_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119941119979_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd119940119982_))
                                                           (let ((_e119944119987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd119940119982_))))
                     (let ((_hd119943119990_
                            (let ()
                              (declare (not safe))
                              (##car _e119944119987_)))
                           (_tl119942119992_
                            (let ()
                              (declare (not safe))
                              (##cdr _e119944119987_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd119943119990_))
                           (let ((_e119947119995_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd119943119990_))))
                             (let ((_hd119946119998_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e119947119995_)))
                                   (_tl119945120000_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e119947119995_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl119945120000_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl119942119992_))
                                       (let ((_e119950120003_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl119942119992_))))
                                         (let ((_hd119949120006_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119950120003_)))
                                               (_tl119948120008_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119950120003_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl119948120008_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl119939119984_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119936119976_))
                                                       (let ((_e119953120011_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119936119976_))))
                 (let ((_hd119952120014_
                        (let () (declare (not safe)) (##car _e119953120011_)))
                       (_tl119951120016_
                        (let () (declare (not safe)) (##cdr _e119953120011_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119951120016_))
                       ((lambda (_L120019_ _L120020_ _L120021_)
                          (let* ((_lambda-id120045_
                                  (let ((__tmp127937
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L119912_)))
                                        (__tmp127935
                                         (let ((__tmp127936
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L120021_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name119477_
                                            __tmp127936))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp127937
                                     '"__"
                                     __tmp127935)))
                                 (_lambda-id120047_
                                  (let ((__tmp127938
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx119474_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id120045_
                                     __tmp127938)))
                                 (_g127939_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id120047_)))
                                 (_new-case-lambda-expr120050_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L120019_
                                     _L120021_
                                     _lambda-id120047_))))
                            (let ((__tmp127941
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L119912_)))
                                  (__tmp127940
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id120047_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp127941
                               '" => "
                               __tmp127940))
                            (let ((__tmp127942
                                   (let ((__tmp127943
                                          (let ((__tmp127951
                                                 (let ((__tmp127952
                                                        (let ((__tmp127953
                                                               (let ((__tmp127956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id120047_ '())))
                             (__tmp127954
                              (let ((__tmp127955
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L120020_))))
                                (declare (not safe))
                                (cons __tmp127955 '()))))
                         (declare (not safe))
                         (cons __tmp127956 __tmp127954))))
                  (declare (not safe))
                  (cons '%#define-values __tmp127953))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp127952
                                                    _stx119474_)))
                                                (__tmp127944
                                                 (let ((__tmp127945
                                                        (let ((__tmp127946
                                                               (let ((__tmp127947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp127948
                                     (let ((__tmp127950
                                            (let ()
                                              (declare (not safe))
                                              (cons _L119912_ '())))
                                           (__tmp127949
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr120050_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp127950 __tmp127949))))
                                (declare (not safe))
                                (cons '%#define-values __tmp127948))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp127947 _stx119474_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp127946))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp127945 '()))))
                                            (declare (not safe))
                                            (cons __tmp127951 __tmp127944))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp127943))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp127942
                               _stx119474_))))
                        _hd119952120014_
                        _hd119949120006_
                        _hd119946119998_)
                       (let ()
                         (declare (not safe))
                         (_g119928119958_ _g119929119961_)))))
               (let () (declare (not safe)) (_g119928119958_ _g119929119961_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119928119958_
                                                      _g119929119961_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119928119958_
                                                  _g119929119961_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g119928119958_ _g119929119961_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g119928119958_ _g119929119961_)))))
                           (let ()
                             (declare (not safe))
                             (_g119928119958_ _g119929119961_)))))
                   (let ()
                     (declare (not safe))
                     (_g119928119958_ _g119929119961_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119928119958_
                                                      _g119929119961_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g119928119958_
                                              _g119929119961_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g119928119958_ _g119929119961_))))))
                       (declare (not safe))
                       (_g119927120053_ _L119911_))))
                  (___kont127270127271_
                   (lambda (_L119625_ _L119626_)
                     (let* ((_g119642119695_
                             (lambda (_g119643119692_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g119643119692_))))
                            (_g119641119871_
                             (lambda (_g119643119698_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g119643119698_))
                                   (let ((_e119651119700_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g119643119698_))))
                                     (let ((_hd119650119703_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e119651119700_)))
                                           (_tl119649119705_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e119651119700_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl119649119705_))
                                           (let ((_e119654119708_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl119649119705_))))
                                             (let ((_hd119653119711_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119654119708_)))
                                                   (_tl119652119713_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119654119708_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119653119711_))
                                                   (let ((_e119657119716_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119653119711_))))
                                                     (let ((_hd119656119719_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119657119716_)))
                                                           (_tl119655119721_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119657119716_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd119656119719_))
                                                           (let ((_e119660119724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd119656119719_))))
                     (let ((_hd119659119727_
                            (let ()
                              (declare (not safe))
                              (##car _e119660119724_)))
                           (_tl119658119729_
                            (let ()
                              (declare (not safe))
                              (##cdr _e119660119724_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd119659119727_))
                           (let ((_e119663119732_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd119659119727_))))
                             (let ((_hd119662119735_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e119663119732_)))
                                   (_tl119661119737_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e119663119732_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl119661119737_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl119658119729_))
                                       (let ((_e119666119740_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl119658119729_))))
                                         (let ((_hd119665119743_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119666119740_)))
                                               (_tl119664119745_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119666119740_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd119665119743_))
                                               (let ((_e119669119748_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd119665119743_))))
                                                 (let ((_hd119668119751_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e119669119748_)))
                                                       (_tl119667119753_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e119669119748_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119667119753_))
                                                       (let ((_e119672119756_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119667119753_))))
                 (let ((_hd119671119759_
                        (let () (declare (not safe)) (##car _e119672119756_)))
                       (_tl119670119761_
                        (let () (declare (not safe)) (##cdr _e119672119756_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd119671119759_))
                       (let ((_e119675119764_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd119671119759_))))
                         (let ((_hd119674119767_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119675119764_)))
                               (_tl119673119769_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119675119764_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd119674119767_))
                               (let ((_e119678119772_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd119674119767_))))
                                 (let ((_hd119677119775_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e119678119772_)))
                                       (_tl119676119777_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e119678119772_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd119677119775_))
                                       (let ((_e119681119780_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd119677119775_))))
                                         (let ((_hd119680119783_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119681119780_)))
                                               (_tl119679119785_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119681119780_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl119679119785_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl119676119777_))
                                                   (let ((_e119684119788_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl119676119777_))))
                                                     (let ((_hd119683119791_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119684119788_)))
                                                           (_tl119682119793_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119684119788_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119682119793_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl119673119769_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl119670119761_))
                           (let ((_e119687119796_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl119670119761_))))
                             (let ((_hd119686119799_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e119687119796_)))
                                   (_tl119685119801_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e119687119796_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl119685119801_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl119664119745_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl119655119721_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl119652119713_))
                                               (let ((_e119690119804_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl119652119713_))))
                                                 (let ((_hd119689119807_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e119690119804_)))
                                                       (_tl119688119809_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e119690119804_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl119688119809_))
                                                       ((lambda (_L119812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L119813_
                         _L119814_
                         _L119815_
                         _L119816_)
                  (let* ((_get-kws-id119856_
                          (let ((__tmp127959
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L119626_)))
                                (__tmp127957
                                 (let ((__tmp127958
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L119816_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name119478_
                                    __tmp127958
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp127959 '"__" __tmp127957)))
                         (_get-kws-id119858_
                          (let ((__tmp127960
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx119474_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id119856_
                             __tmp127960)))
                         (_main-id119860_
                          (let ((__tmp127963
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L119626_)))
                                (__tmp127961
                                 (let ((__tmp127962
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L119815_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name119478_
                                    __tmp127962
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp127963 '"__" __tmp127961)))
                         (_main-id119862_
                          (let ((__tmp127964
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx119474_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id119860_
                             __tmp127964)))
                         (_g127965_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id119858_)))
                         (_g127966_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id119862_)))
                         (_new-kw-dispatch119866_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L119812_
                             _L119816_
                             _get-kws-id119858_)))
                         (_new-get-kws119868_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L119813_
                             _L119815_
                             _main-id119862_))))
                    (let ((__tmp127969
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L119626_)))
                          (__tmp127968
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id119858_)))
                          (__tmp127967
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id119862_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp127969
                       '" => "
                       __tmp127968
                       '" => "
                       __tmp127967))
                    (let ((__tmp127970
                           (let ((__tmp127971
                                  (let ((__tmp127984
                                         (let ((__tmp127985
                                                (let ((__tmp127986
                                                       (let ((__tmp127987
                                                              (let ((__tmp127989
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id119862_ '())))
                            (__tmp127988
                             (let ()
                               (declare (not safe))
                               (cons _L119814_ '()))))
                        (declare (not safe))
                        (cons __tmp127989 __tmp127988))))
                 (declare (not safe))
                 (cons '%#define-values __tmp127987))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp127986
                                                   _stx119474_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp127985)))
                                        (__tmp127972
                                         (let ((__tmp127979
                                                (let ((__tmp127980
                                                       (let ((__tmp127981
                                                              (let ((__tmp127983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id119858_ '())))
                            (__tmp127982
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws119868_ '()))))
                        (declare (not safe))
                        (cons __tmp127983 __tmp127982))))
                 (declare (not safe))
                 (cons '%#define-values __tmp127981))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp127980
                                                   _stx119474_)))
                                               (__tmp127973
                                                (let ((__tmp127974
                                                       (let ((__tmp127975
                                                              (let ((__tmp127976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp127978
                                    (let ()
                                      (declare (not safe))
                                      (cons _L119626_ '())))
                                   (__tmp127977
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch119866_ '()))))
                               (declare (not safe))
                               (cons __tmp127978 __tmp127977))))
                        (declare (not safe))
                        (cons '%#define-values __tmp127976))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp127975 _stx119474_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp127974 '()))))
                                           (declare (not safe))
                                           (cons __tmp127979 __tmp127973))))
                                    (declare (not safe))
                                    (cons __tmp127984 __tmp127972))))
                             (declare (not safe))
                             (cons '%#begin __tmp127971))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp127970 _stx119474_))))
                _hd119689119807_
                _hd119686119799_
                _hd119683119791_
                _hd119680119783_
                _hd119662119735_)
               (let ()
                 (declare (not safe))
                 (_g119642119695_ _g119643119698_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119642119695_
                                                  _g119643119698_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g119642119695_
                                              _g119643119698_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g119642119695_ _g119643119698_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g119642119695_ _g119643119698_)))))
                           (let ()
                             (declare (not safe))
                             (_g119642119695_ _g119643119698_)))
                       (let ()
                         (declare (not safe))
                         (_g119642119695_ _g119643119698_)))
                   (let ()
                     (declare (not safe))
                     (_g119642119695_ _g119643119698_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119642119695_
                                                      _g119643119698_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119642119695_
                                                  _g119643119698_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g119642119695_ _g119643119698_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g119642119695_ _g119643119698_)))))
                       (let ()
                         (declare (not safe))
                         (_g119642119695_ _g119643119698_)))))
               (let ()
                 (declare (not safe))
                 (_g119642119695_ _g119643119698_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119642119695_
                                                  _g119643119698_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g119642119695_ _g119643119698_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g119642119695_ _g119643119698_)))))
                           (let ()
                             (declare (not safe))
                             (_g119642119695_ _g119643119698_)))))
                   (let ()
                     (declare (not safe))
                     (_g119642119695_ _g119643119698_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119642119695_
                                                      _g119643119698_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g119642119695_
                                              _g119643119698_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g119642119695_ _g119643119698_))))))
                       (declare (not safe))
                       (_g119641119871_ _L119625_))))
                  (___kont127272127273_
                   (lambda (_L119571_ _L119572_)
                     (let ((__tmp127990
                            (let ((__tmp127991
                                   (let ((__tmp127992
                                          (let ((__tmp127993
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L119571_))))
                                            (declare (not safe))
                                            (cons __tmp127993 '()))))
                                     (declare (not safe))
                                     (cons _L119572_ __tmp127992))))
                              (declare (not safe))
                              (cons '%#define-values __tmp127991))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp127990 _stx119474_)))))
              (let* ((___match127357127358_
                      (lambda (_e119517119593_
                               _hd119516119596_
                               _tl119515119598_
                               _e119520119601_
                               _hd119519119604_
                               _tl119518119606_
                               _e119523119609_
                               _hd119522119612_
                               _tl119521119614_
                               _e119526119617_
                               _hd119525119620_
                               _tl119524119622_)
                        (let ((_L119625_ _hd119525119620_)
                              (_L119626_ _hd119522119612_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L119626_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L119625_)))
                              (___kont127270127271_ _L119625_ _L119626_)
                              (___kont127272127273_
                               _hd119525119620_
                               _hd119519119604_)))))
                     (___match127329127330_
                      (lambda (_e119503119879_
                               _hd119502119882_
                               _tl119501119884_
                               _e119506119887_
                               _hd119505119890_
                               _tl119504119892_
                               _e119509119895_
                               _hd119508119898_
                               _tl119507119900_
                               _e119512119903_
                               _hd119511119906_
                               _tl119510119908_)
                        (let ((_L119911_ _hd119511119906_)
                              (_L119912_ _hd119508119898_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L119912_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L119911_)))
                              (___kont127268127269_ _L119911_ _L119912_)
                              (___match127357127358_
                               _e119503119879_
                               _hd119502119882_
                               _tl119501119884_
                               _e119506119887_
                               _hd119505119890_
                               _tl119504119892_
                               _e119509119895_
                               _hd119508119898_
                               _tl119507119900_
                               _e119512119903_
                               _hd119511119906_
                               _tl119510119908_)))))
                     (___match127301127302_
                      (lambda (_e119489120061_
                               _hd119488120064_
                               _tl119487120066_
                               _e119492120069_
                               _hd119491120072_
                               _tl119490120074_
                               _e119495120077_
                               _hd119494120080_
                               _tl119493120082_
                               _e119498120085_
                               _hd119497120088_
                               _tl119496120090_)
                        (let ((_L120093_ _hd119497120088_)
                              (_L120094_ _hd119494120080_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120094_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L120093_)))
                              (___kont127266127267_ _L120093_ _L120094_)
                              (___match127329127330_
                               _e119489120061_
                               _hd119488120064_
                               _tl119487120066_
                               _e119492120069_
                               _hd119491120072_
                               _tl119490120074_
                               _e119495120077_
                               _hd119494120080_
                               _tl119493120082_
                               _e119498120085_
                               _hd119497120088_
                               _tl119496120090_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx127264127265_))
                    (let ((_e119489120061_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx127264127265_))))
                      (let ((_tl119487120066_
                             (let ()
                               (declare (not safe))
                               (##cdr _e119489120061_)))
                            (_hd119488120064_
                             (let ()
                               (declare (not safe))
                               (##car _e119489120061_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119487120066_))
                            (let ((_e119492120069_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119487120066_))))
                              (let ((_tl119490120074_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119492120069_)))
                                    (_hd119491120072_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119492120069_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd119491120072_))
                                    (let ((_e119495120077_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd119491120072_))))
                                      (let ((_tl119493120082_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e119495120077_)))
                                            (_hd119494120080_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e119495120077_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119493120082_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl119490120074_))
                                                (let ((_e119498120085_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl119490120074_))))
                                                  (let ((_tl119496120090_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e119498120085_)))
                                                        (_hd119497120088_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e119498120085_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl119496120090_))
                                                        (___match127301127302_
                                                         _e119489120061_
                                                         _hd119488120064_
                                                         _tl119487120066_
                                                         _e119492120069_
                                                         _hd119491120072_
                                                         _tl119490120074_
                                                         _e119495120077_
                                                         _hd119494120080_
                                                         _tl119493120082_
                                                         _e119498120085_
                                                         _hd119497120088_
                                                         _tl119496120090_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g119483119542_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119483119542_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl119490120074_))
                                                (let ((_e119537119563_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl119490120074_))))
                                                  (let ((_tl119535119568_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e119537119563_)))
                                                        (_hd119536119566_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e119537119563_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl119535119568_))
                                                        (___kont127272127273_
                                                         _hd119536119566_
                                                         _hd119491120072_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g119483119542_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119483119542_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl119490120074_))
                                        (let ((_e119537119563_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl119490120074_))))
                                          (let ((_tl119535119568_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e119537119563_)))
                                                (_hd119536119566_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e119537119563_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl119535119568_))
                                                (___kont127272127273_
                                                 _hd119536119566_
                                                 _hd119491120072_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119483119542_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g119483119542_))))))
                            (let () (declare (not safe)) (_g119483119542_)))))
                    (let () (declare (not safe)) (_g119483119542_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx118406_)
        (letrec* ((_bind-e__125660125661_
                   (lambda (_id119458_ _expr119459_ _compile?119460_)
                     (let ((__tmp127996
                            (let ()
                              (declare (not safe))
                              (cons _id119458_ '())))
                           (__tmp127994
                            (let ((__tmp127995
                                   (if _compile?119460_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr119459_))
                                       _expr119459_)))
                              (declare (not safe))
                              (cons __tmp127995 '()))))
                       (declare (not safe))
                       (cons __tmp127996 __tmp127994))))
                  (_bind-e__0__125662125663_
                   (lambda (_id119465_ _expr119466_)
                     (let ((_compile?119468_ '#t))
                       (declare (not safe))
                       (_bind-e__125660125661_
                        _id119465_
                        _expr119466_
                        _compile?119468_))))
                  (_bind-e118408_
                   (lambda _g127998_
                     (let ((_g127997_
                            (let ()
                              (declare (not safe))
                              (##length _g127998_))))
                       (cond ((let () (declare (not safe)) (##fx= _g127997_ 2))
                              (apply (lambda (_id119465_ _expr119466_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__125662125663_
                                          _id119465_
                                          _expr119466_)))
                                     _g127998_))
                             ((let () (declare (not safe)) (##fx= _g127997_ 3))
                              (apply (lambda (_id119470_
                                              _expr119471_
                                              _compile?119472_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__125660125661_
                                          _id119470_
                                          _expr119471_
                                          _compile?119472_)))
                                     _g127998_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g127998_))))))
                  (_compile-bindings118409_
                   (lambda (_bindings119042_)
                     (let _lp119044_ ((_rest119046_ _bindings119042_)
                                      (_lift1119047_ '())
                                      (_lift2119048_ '())
                                      (_bind119049_ '()))
                       (let* ((_rest119050119058_ _rest119046_)
                              (_else119052119066_
                               (lambda ()
                                 (values (reverse _lift1119047_)
                                         (reverse _lift2119048_)
                                         (reverse _bind119049_))))
                              (_K119054119445_
                               (lambda (_rest119069_ _hd119070_)
                                 (let* ((___stx127400127401_ _hd119070_)
                                        (_g119074119110_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx127400127401_)))))
                                   (let ((___kont127402127403_
                                          (lambda (_L119352_ _L119353_)
                                            (let* ((___stx127380127381_
                                                    _L119352_)
                                                   (_g119368119382_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx127380127381_)))))
                                              (let ((___kont127382127383_
                                                     (lambda (_L119430_)
                                                       (let ((__tmp127999
                                                              (let ((__tmp128000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__125660125661_
                                _L119353_
                                _L119352_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp128000 _bind119049_))))
                 (declare (not safe))
                 (_lp119044_
                  _rest119069_
                  _lift1119047_
                  _lift2119048_
                  __tmp127999))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127384127385_
                                                     (lambda (_L119395_)
                                                       (let ((_g128001_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx118406_
                         _L119353_
                         _L119395_
                         '#t))))
                 (begin
                   (let ((_g128002_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g128001_)
                                (##vector-length _g128001_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g128002_ 3)))
                         (error "Context expects 3 values" _g128002_)))
                   (let ((_ids119405_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128001_ 0)))
                         (_impls119406_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128001_ 1)))
                         (_clauses119407_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128001_ 2))))
                     (let* ((_g128003_
                             (for-each gx#core-bind-runtime! _ids119405_))
                            (_xbind119410_
                             (map _bind-e118408_ _ids119405_ _impls119406_))
                            (_expr*119412_
                             (let ((__tmp128005
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses119407_)))
                                   (__tmp128004
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp128005
                                __tmp128004)))
                            (_bind*119414_
                             (let ()
                               (declare (not safe))
                               (_bind-e__125660125661_
                                _L119353_
                                _expr*119412_
                                '#f))))
                       (let ((__tmp128007
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L119353_)))
                             (__tmp128006
                              (map gxc#identifier-symbol _ids119405_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp128007
                          '" => "
                          __tmp128006))
                       (let ((__tmp128009
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2119048_ _xbind119410_)))
                             (__tmp128008
                              (let ()
                                (declare (not safe))
                                (cons _bind*119414_ _bind119049_))))
                         (declare (not safe))
                         (_lp119044_
                          _rest119069_
                          _lift1119047_
                          __tmp128009
                          __tmp128008)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match127391127392_
                                                       (lambda (_e119373119422_
                                                                _hd119372119425_
                                                                _tl119371119427_)
                                                         (let ((_L119430_
                                                                _tl119371119427_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L119430_))
                       (___kont127382127383_ _L119430_)
                       (___kont127384127385_ _tl119371119427_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx127380127381_))
                                                      (let ((_e119373119422_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx127380127381_))))
                (let ((_tl119371119427_
                       (let () (declare (not safe)) (##cdr _e119373119422_)))
                      (_hd119372119425_
                       (let () (declare (not safe)) (##car _e119373119422_))))
                  (___match127391127392_
                   _e119373119422_
                   _hd119372119425_
                   _tl119371119427_)))
              (let () (declare (not safe)) (_g119368119382_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont127404127405_
                                          (lambda (_L119180_ _L119181_)
                                            (let* ((_g119195119225_
                                                    (lambda (_g119196119222_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119196119222_))))
                                                   (_g119194119320_
                                                    (lambda (_g119196119228_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119196119228_))
                                                          (let ((_e119202119230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119196119228_))))
                    (let ((_hd119201119233_
                           (let ()
                             (declare (not safe))
                             (##car _e119202119230_)))
                          (_tl119200119235_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119202119230_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119200119235_))
                          (let ((_e119205119238_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119200119235_))))
                            (let ((_hd119204119241_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119205119238_)))
                                  (_tl119203119243_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119205119238_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119204119241_))
                                  (let ((_e119208119246_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119204119241_))))
                                    (let ((_hd119207119249_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119208119246_)))
                                          (_tl119206119251_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119208119246_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119207119249_))
                                          (let ((_e119211119254_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119207119249_))))
                                            (let ((_hd119210119257_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119211119254_)))
                                                  (_tl119209119259_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119211119254_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119210119257_))
                                                  (let ((_e119214119262_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119210119257_))))
                                                    (let ((_hd119213119265_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119214119262_)))
                                                          (_tl119212119267_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119214119262_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119212119267_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119209119259_))
                      (let ((_e119217119270_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119209119259_))))
                        (let ((_hd119216119273_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119217119270_)))
                              (_tl119215119275_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119217119270_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119215119275_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119206119251_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119203119243_))
                                      (let ((_e119220119278_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119203119243_))))
                                        (let ((_hd119219119281_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119220119278_)))
                                              (_tl119218119283_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119220119278_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119218119283_))
                                              ((lambda (_L119286_
                                                        _L119287_
                                                        _L119288_)
                                                 (let* ((_lambda-id119312_
                                                         (let ((__tmp128011
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L119181_)))
                       (__tmp128010 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp128011 __tmp128010)))
                (_lambda-id119314_
                 (let ((__tmp128012
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx118406_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id119312_ __tmp128012)))
                (_g128013_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id119314_)))
                (_new-case-lambda-expr119317_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L119286_
                    _L119288_
                    _lambda-id119314_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp128015
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L119181_)))
                                                         (__tmp128014
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id119314_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp128015
                                                      '" => "
                                                      __tmp128014))
                                                   (let ((__tmp128018
                                                          (let ((__tmp128019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__125660125661_
                            _L119181_
                            _new-case-lambda-expr119317_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp128019 _rest119069_)))
                 (__tmp128016
                  (let ((__tmp128017
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__125662125663_
                            _lambda-id119314_
                            _L119287_))))
                    (declare (not safe))
                    (cons __tmp128017 _lift1119047_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp119044_
                                                      __tmp128018
                                                      __tmp128016
                                                      _lift2119048_
                                                      _bind119049_))))
                                               _hd119219119281_
                                               _hd119216119273_
                                               _hd119213119265_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119195119225_
                                                 _g119196119228_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119195119225_ _g119196119228_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119195119225_ _g119196119228_)))
                              (let ()
                                (declare (not safe))
                                (_g119195119225_ _g119196119228_)))))
                      (let ()
                        (declare (not safe))
                        (_g119195119225_ _g119196119228_)))
                  (let ()
                    (declare (not safe))
                    (_g119195119225_ _g119196119228_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119195119225_
                                                     _g119196119228_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119195119225_
                                             _g119196119228_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119195119225_ _g119196119228_)))))
                          (let ()
                            (declare (not safe))
                            (_g119195119225_ _g119196119228_)))))
                  (let ()
                    (declare (not safe))
                    (_g119195119225_ _g119196119228_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119194119320_ _L119180_))))
                                         (___kont127406127407_
                                          (lambda (_L119131_ _L119132_)
                                            (let ((__tmp128020
                                                   (let ((__tmp128021
                                                          (let ((__tmp128022
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128023
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L119131_))))
                           (declare (not safe))
                           (cons __tmp128023 '()))))
                    (declare (not safe))
                    (cons _L119132_ __tmp128022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128021
                                                           _bind119049_))))
                                              (declare (not safe))
                                              (_lp119044_
                                               _rest119069_
                                               _lift1119047_
                                               _lift2119048_
                                               __tmp128020)))))
                                     (let* ((___match127451127452_
                                             (lambda (_e119091119156_
                                                      _hd119090119159_
                                                      _tl119089119161_
                                                      _e119094119164_
                                                      _hd119093119167_
                                                      _tl119092119169_
                                                      _e119097119172_
                                                      _hd119096119175_
                                                      _tl119095119177_)
                                               (let ((_L119180_
                                                      _hd119096119175_)
                                                     (_L119181_
                                                      _hd119093119167_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119181_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L119180_)))
                                                     (___kont127404127405_
                                                      _L119180_
                                                      _L119181_)
                                                     (___kont127406127407_
                                                      _hd119096119175_
                                                      _hd119090119159_)))))
                                            (___match127429127430_
                                             (lambda (_e119080119328_
                                                      _hd119079119331_
                                                      _tl119078119333_
                                                      _e119083119336_
                                                      _hd119082119339_
                                                      _tl119081119341_
                                                      _e119086119344_
                                                      _hd119085119347_
                                                      _tl119084119349_)
                                               (let ((_L119352_
                                                      _hd119085119347_)
                                                     (_L119353_
                                                      _hd119082119339_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119353_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L119352_)))
                                                     (___kont127402127403_
                                                      _L119352_
                                                      _L119353_)
                                                     (___match127451127452_
                                                      _e119080119328_
                                                      _hd119079119331_
                                                      _tl119078119333_
                                                      _e119083119336_
                                                      _hd119082119339_
                                                      _tl119081119341_
                                                      _e119086119344_
                                                      _hd119085119347_
                                                      _tl119084119349_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx127400127401_))
                                           (let ((_e119080119328_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx127400127401_))))
                                             (let ((_tl119078119333_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119080119328_)))
                                                   (_hd119079119331_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119080119328_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119079119331_))
                                                   (let ((_e119083119336_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119079119331_))))
                                                     (let ((_tl119081119341_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119083119336_)))
                                                           (_hd119082119339_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119083119336_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119081119341_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119078119333_))
                       (let ((_e119086119344_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119078119333_))))
                         (let ((_tl119084119349_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119086119344_)))
                               (_hd119085119347_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119086119344_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119084119349_))
                               (___match127429127430_
                                _e119080119328_
                                _hd119079119331_
                                _tl119078119333_
                                _e119083119336_
                                _hd119082119339_
                                _tl119081119341_
                                _e119086119344_
                                _hd119085119347_
                                _tl119084119349_)
                               (let ()
                                 (declare (not safe))
                                 (_g119074119110_)))))
                       (let () (declare (not safe)) (_g119074119110_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119078119333_))
                       (let ((_e119105119123_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119078119333_))))
                         (let ((_tl119103119128_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119105119123_)))
                               (_hd119104119126_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119105119123_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119103119128_))
                               (___kont127406127407_
                                _hd119104119126_
                                _hd119079119331_)
                               (let ()
                                 (declare (not safe))
                                 (_g119074119110_)))))
                       (let () (declare (not safe)) (_g119074119110_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119078119333_))
                                                       (let ((_e119105119123_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119078119333_))))
                 (let ((_tl119103119128_
                        (let () (declare (not safe)) (##cdr _e119105119123_)))
                       (_hd119104119126_
                        (let () (declare (not safe)) (##car _e119105119123_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119103119128_))
                       (___kont127406127407_ _hd119104119126_ _hd119079119331_)
                       (let () (declare (not safe)) (_g119074119110_)))))
               (let () (declare (not safe)) (_g119074119110_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119074119110_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest119050119058_))
                             (let ((_hd119055119448_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest119050119058_)))
                                   (_tl119056119450_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest119050119058_))))
                               (let* ((_hd119453_ _hd119055119448_)
                                      (_rest119455_ _tl119056119450_))
                                 (declare (not safe))
                                 (_K119054119445_ _rest119455_ _hd119453_)))
                             (let ()
                               (declare (not safe))
                               (_else119052119066_)))))))
                  (_lift-kw-lambda?118410_
                   (lambda (_bind118966_)
                     (let* ((___stx127468127469_ _bind118966_)
                            (_g118969118986_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx127468127469_)))))
                       (let ((___kont127470127471_
                              (lambda (_L119022_ _L119023_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L119023_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L119022_))
                                    '#f)))
                             (___kont127472127473_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx127468127469_))
                             (let ((_e118975118998_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx127468127469_))))
                               (let ((_tl118973119003_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e118975118998_)))
                                     (_hd118974119001_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e118975118998_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd118974119001_))
                                     (let ((_e118978119006_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd118974119001_))))
                                       (let ((_tl118976119011_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e118978119006_)))
                                             (_hd118977119009_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e118978119006_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl118976119011_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl118973119003_))
                                                 (let ((_e118981119014_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl118973119003_))))
                                                   (let ((_tl118979119019_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e118981119014_)))
                                                         (_hd118980119017_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e118981119014_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl118979119019_))
                                                         (___kont127470127471_
                                                          _hd118980119017_
                                                          _hd118977119009_)
                                                         (___kont127472127473_))))
                                                 (___kont127472127473_))
                                             (___kont127472127473_))))
                                     (___kont127472127473_))))
                             (___kont127472127473_))))))
                  (_lift-kw-lambda-bindings118411_
                   (lambda (_bindings118578_)
                     (let _lp118580_ ((_rest118582_ _bindings118578_)
                                      (_lift1118583_ '())
                                      (_lift2118584_ '())
                                      (_bind118585_ '()))
                       (let* ((_rest118586118594_ _rest118582_)
                              (_else118588118602_
                               (lambda ()
                                 (values (reverse _lift1118583_)
                                         (reverse _lift2118584_)
                                         (reverse _bind118585_))))
                              (_K118590118954_
                               (lambda (_rest118605_ _hd118606_)
                                 (let* ((___stx127498127499_ _hd118606_)
                                        (_g118609118634_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx127498127499_)))))
                                   (let ((___kont127500127501_
                                          (lambda (_L118704_ _L118705_)
                                            (let* ((_g118719118772_
                                                    (lambda (_g118720118769_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118720118769_))))
                                                   (_g118718118948_
                                                    (lambda (_g118720118775_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118720118775_))
                                                          (let ((_e118728118777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118720118775_))))
                    (let ((_hd118727118780_
                           (let ()
                             (declare (not safe))
                             (##car _e118728118777_)))
                          (_tl118726118782_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118728118777_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118726118782_))
                          (let ((_e118731118785_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118726118782_))))
                            (let ((_hd118730118788_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118731118785_)))
                                  (_tl118729118790_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118731118785_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118730118788_))
                                  (let ((_e118734118793_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118730118788_))))
                                    (let ((_hd118733118796_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118734118793_)))
                                          (_tl118732118798_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118734118793_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118733118796_))
                                          (let ((_e118737118801_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118733118796_))))
                                            (let ((_hd118736118804_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118737118801_)))
                                                  (_tl118735118806_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118737118801_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd118736118804_))
                                                  (let ((_e118740118809_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd118736118804_))))
                                                    (let ((_hd118739118812_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118740118809_)))
                                                          (_tl118738118814_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118740118809_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118738118814_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118735118806_))
                      (let ((_e118743118817_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118735118806_))))
                        (let ((_hd118742118820_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118743118817_)))
                              (_tl118741118822_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118743118817_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118742118820_))
                              (let ((_e118746118825_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118742118820_))))
                                (let ((_hd118745118828_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118746118825_)))
                                      (_tl118744118830_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118746118825_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118744118830_))
                                      (let ((_e118749118833_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118744118830_))))
                                        (let ((_hd118748118836_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118749118833_)))
                                              (_tl118747118838_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118749118833_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd118748118836_))
                                              (let ((_e118752118841_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd118748118836_))))
                                                (let ((_hd118751118844_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118752118841_)))
                                                      (_tl118750118846_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118752118841_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118751118844_))
                                                      (let ((_e118755118849_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd118751118844_))))
                (let ((_hd118754118852_
                       (let () (declare (not safe)) (##car _e118755118849_)))
                      (_tl118753118854_
                       (let () (declare (not safe)) (##cdr _e118755118849_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118754118852_))
                      (let ((_e118758118857_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118754118852_))))
                        (let ((_hd118757118860_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118758118857_)))
                              (_tl118756118862_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118758118857_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118756118862_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118753118854_))
                                  (let ((_e118761118865_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118753118854_))))
                                    (let ((_hd118760118868_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118761118865_)))
                                          (_tl118759118870_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118761118865_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118759118870_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118750118846_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118747118838_))
                                                  (let ((_e118764118873_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118747118838_))))
                                                    (let ((_hd118763118876_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118764118873_)))
                                                          (_tl118762118878_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118764118873_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118762118878_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl118741118822_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl118732118798_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118729118790_))
                              (let ((_e118767118881_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118729118790_))))
                                (let ((_hd118766118884_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118767118881_)))
                                      (_tl118765118886_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118767118881_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118765118886_))
                                      ((lambda (_L118889_
                                                _L118890_
                                                _L118891_
                                                _L118892_
                                                _L118893_)
                                         (let* ((_get-kws-id118933_
                                                 (let ((__tmp128025
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118705_)))
                                                       (__tmp128024
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128025
                                                    __tmp128024)))
                                                (_get-kws-id118935_
                                                 (let ((__tmp128026
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118406_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id118933_
                                                    __tmp128026)))
                                                (_main-id118937_
                                                 (let ((__tmp128028
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118705_)))
                                                       (__tmp128027
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128028
                                                    __tmp128027)))
                                                (_main-id118939_
                                                 (let ((__tmp128029
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118406_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id118937_
                                                    __tmp128029)))
                                                (_g128030_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id118935_)))
                                                (_g128031_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id118939_)))
                                                (_new-kw-dispatch118943_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118889_
                                                    _L118893_
                                                    _get-kws-id118935_)))
                                                (_new-get-kws118945_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118890_
                                                    _L118892_
                                                    _main-id118939_))))
                                           (let ((__tmp128034
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L118705_)))
                                                 (__tmp128033
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id118935_)))
                                                 (__tmp128032
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id118939_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp128034
                                              '" => "
                                              __tmp128033
                                              '" => "
                                              __tmp128032))
                                           (let ((__tmp128039
                                                  (let ((__tmp128040
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125660125661_
                                                            _main-id118939_
                                                            _L118891_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp128040
                                                          _lift1118583_)))
                                                 (__tmp128037
                                                  (let ((__tmp128038
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125660125661_
                                                            _get-kws-id118935_
                                                            _new-get-kws118945_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp128038
                                                          _lift2118584_)))
                                                 (__tmp128035
                                                  (let ((__tmp128036
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125660125661_
                                                            _L118705_
                                                            _new-kw-dispatch118943_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp128036
                                                          _bind118585_))))
                                             (declare (not safe))
                                             (_lp118580_
                                              _rest118605_
                                              __tmp128039
                                              __tmp128037
                                              __tmp128035))))
                                       _hd118766118884_
                                       _hd118763118876_
                                       _hd118760118868_
                                       _hd118757118860_
                                       _hd118739118812_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118719118772_ _g118720118775_)))))
                              (let ()
                                (declare (not safe))
                                (_g118719118772_ _g118720118775_)))
                          (let ()
                            (declare (not safe))
                            (_g118719118772_ _g118720118775_)))
                      (let ()
                        (declare (not safe))
                        (_g118719118772_ _g118720118775_)))
                  (let ()
                    (declare (not safe))
                    (_g118719118772_ _g118720118775_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118719118772_
                                                     _g118720118775_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g118719118772_
                                                 _g118720118775_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g118719118772_
                                             _g118720118775_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118719118772_ _g118720118775_)))
                              (let ()
                                (declare (not safe))
                                (_g118719118772_ _g118720118775_)))))
                      (let ()
                        (declare (not safe))
                        (_g118719118772_ _g118720118775_)))))
              (let ()
                (declare (not safe))
                (_g118719118772_ _g118720118775_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g118719118772_
                                                 _g118720118775_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118719118772_ _g118720118775_)))))
                              (let ()
                                (declare (not safe))
                                (_g118719118772_ _g118720118775_)))))
                      (let ()
                        (declare (not safe))
                        (_g118719118772_ _g118720118775_)))
                  (let ()
                    (declare (not safe))
                    (_g118719118772_ _g118720118775_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118719118772_
                                                     _g118720118775_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118719118772_
                                             _g118720118775_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118719118772_ _g118720118775_)))))
                          (let ()
                            (declare (not safe))
                            (_g118719118772_ _g118720118775_)))))
                  (let ()
                    (declare (not safe))
                    (_g118719118772_ _g118720118775_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118718118948_ _L118704_))))
                                         (___kont127502127503_
                                          (lambda (_L118655_ _L118656_)
                                            (let ((__tmp128041
                                                   (let ((__tmp128042
                                                          (let ((__tmp128043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L118655_ '()))))
                    (declare (not safe))
                    (cons _L118656_ __tmp128043))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128042
                                                           _bind118585_))))
                                              (declare (not safe))
                                              (_lp118580_
                                               _rest118605_
                                               _lift1118583_
                                               _lift2118584_
                                               __tmp128041)))))
                                     (let ((___match127525127526_
                                            (lambda (_e118615118680_
                                                     _hd118614118683_
                                                     _tl118613118685_
                                                     _e118618118688_
                                                     _hd118617118691_
                                                     _tl118616118693_
                                                     _e118621118696_
                                                     _hd118620118699_
                                                     _tl118619118701_)
                                              (let ((_L118704_
                                                     _hd118620118699_)
                                                    (_L118705_
                                                     _hd118617118691_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L118705_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L118704_)))
                                                    (___kont127500127501_
                                                     _L118704_
                                                     _L118705_)
                                                    (___kont127502127503_
                                                     _hd118620118699_
                                                     _hd118614118683_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx127498127499_))
                                           (let ((_e118615118680_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx127498127499_))))
                                             (let ((_tl118613118685_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e118615118680_)))
                                                   (_hd118614118683_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e118615118680_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd118614118683_))
                                                   (let ((_e118618118688_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd118614118683_))))
                                                     (let ((_tl118616118693_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e118618118688_)))
                                                           (_hd118617118691_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e118618118688_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl118616118693_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl118613118685_))
                       (let ((_e118621118696_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118613118685_))))
                         (let ((_tl118619118701_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118621118696_)))
                               (_hd118620118699_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118621118696_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118619118701_))
                               (___match127525127526_
                                _e118615118680_
                                _hd118614118683_
                                _tl118613118685_
                                _e118618118688_
                                _hd118617118691_
                                _tl118616118693_
                                _e118621118696_
                                _hd118620118699_
                                _tl118619118701_)
                               (let ()
                                 (declare (not safe))
                                 (_g118609118634_)))))
                       (let () (declare (not safe)) (_g118609118634_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl118613118685_))
                       (let ((_e118629118647_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118613118685_))))
                         (let ((_tl118627118652_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118629118647_)))
                               (_hd118628118650_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118629118647_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118627118652_))
                               (___kont127502127503_
                                _hd118628118650_
                                _hd118614118683_)
                               (let ()
                                 (declare (not safe))
                                 (_g118609118634_)))))
                       (let () (declare (not safe)) (_g118609118634_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl118613118685_))
                                                       (let ((_e118629118647_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl118613118685_))))
                 (let ((_tl118627118652_
                        (let () (declare (not safe)) (##cdr _e118629118647_)))
                       (_hd118628118650_
                        (let () (declare (not safe)) (##car _e118629118647_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl118627118652_))
                       (___kont127502127503_ _hd118628118650_ _hd118614118683_)
                       (let () (declare (not safe)) (_g118609118634_)))))
               (let () (declare (not safe)) (_g118609118634_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g118609118634_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest118586118594_))
                             (let ((_hd118591118957_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest118586118594_)))
                                   (_tl118592118959_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest118586118594_))))
                               (let* ((_hd118962_ _hd118591118957_)
                                      (_rest118964_ _tl118592118959_))
                                 (declare (not safe))
                                 (_K118590118954_ _rest118964_ _hd118962_)))
                             (let ()
                               (declare (not safe))
                               (_else118588118602_))))))))
          (let* ((___stx127542127543_ _stx118406_)
                 (_g118414118440_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx127542127543_)))))
            (let ((___kont127544127545_
                   (lambda (_L118500_ _L118501_)
                     (let ((__tmp128045
                            (lambda ()
                              (if (let ((__tmp128072
                                         (let ((__tmp128073
                                                (lambda (_g118529118532_
                                                         _g118530118534_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g118529118532_
                                                          _g118530118534_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp128073
                                                   '()
                                                   _L118501_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?118410_
                                            __tmp128072))
                                  (let ((_g128059_
                                         (let ((__tmp128061
                                                (let ((__tmp128062
                                                       (lambda (_g118536118539_
                                                                _g118537118541_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g118536118539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g118537118541_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp128062
                                                          '()
                                                          _L118501_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings118411_
                                            __tmp128061))))
                                    (begin
                                      (let ((_g128060_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g128059_)
                                                   (##vector-length _g128059_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g128060_ 3)))
                                            (error "Context expects 3 values"
                                                   _g128060_)))
                                      (let ((_lift1118544_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128059_ 0)))
                                            (_lift2118545_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128059_ 1)))
                                            (_hd118546_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128059_ 2))))
                                        (let* ((_expr118548_
                                                (let ((__tmp128063
                                                       (let ((__tmp128064
                                                              (let ((__tmp128065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L118500_ '()))))
                        (declare (not safe))
                        (cons _hd118546_ __tmp128065))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128064))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128063
                                                   _stx118406_)))
                                               (_expr118550_
                                                (let ((__tmp128066
                                                       (let ((__tmp128067
                                                              (let ((__tmp128068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr118548_ '()))))
                        (declare (not safe))
                        (cons _lift2118545_ __tmp128068))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128067))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128066
                                                   _stx118406_)))
                                               (_expr118552_
                                                (let ((__tmp128069
                                                       (let ((__tmp128070
                                                              (let ((__tmp128071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr118550_ '()))))
                        (declare (not safe))
                        (cons _lift1118544_ __tmp128071))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128070))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128069
                                                   _stx118406_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr118552_))))))
                                  (let ((_g128046_
                                         (let ((__tmp128048
                                                (let ((__tmp128049
                                                       (lambda (_g118554118557_
                                                                _g118555118559_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g118554118557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g118555118559_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp128049
                                                          '()
                                                          _L118501_))))
                                           (declare (not safe))
                                           (_compile-bindings118409_
                                            __tmp128048))))
                                    (begin
                                      (let ((_g128047_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g128046_)
                                                   (##vector-length _g128046_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g128047_ 3)))
                                            (error "Context expects 3 values"
                                                   _g128047_)))
                                      (let ((_lift1118562_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128046_ 0)))
                                            (_lift2118563_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128046_ 1)))
                                            (_hd118564_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128046_ 2))))
                                        (let* ((_body118566_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L118500_)))
                                               (_expr118568_
                                                (let ((__tmp128050
                                                       (let ((__tmp128051
                                                              (let ((__tmp128052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body118566_ '()))))
                        (declare (not safe))
                        (cons _hd118564_ __tmp128052))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128051))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128050
                                                   _stx118406_)))
                                               (_expr118570_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2118563_))
                                                    _expr118568_
                                                    (let ((__tmp128053
                                                           (let ((__tmp128054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128055
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr118568_ '()))))
                            (declare (not safe))
                            (cons _lift2118563_ __tmp128055))))
                     (declare (not safe))
                     (cons '%#let-values __tmp128054))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp128053 _stx118406_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr118572_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1118562_))
                                                    _expr118570_
                                                    (let ((__tmp128056
                                                           (let ((__tmp128057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128058
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr118570_ '()))))
                            (declare (not safe))
                            (cons _lift1118562_ __tmp128058))))
                     (declare (not safe))
                     (cons '%#let-values __tmp128057))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp128056 _stx118406_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr118572_)))))))
                           (__tmp128044
                            (let ((__obj127748
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj127748)
                              __obj127748)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp128045
                        gx#current-expander-context
                        __tmp128044))))
                  (___kont127548127549_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx118406_)))))
              (let ((___match127569127570_
                     (lambda (_e118420118452_
                              _hd118419118455_
                              _tl118418118457_
                              _e118423118460_
                              _hd118422118463_
                              _tl118421118465_
                              ___splice127546127547_
                              _target118424118468_
                              _tl118426118470_)
                       (letrec ((_loop118427118473_
                                 (lambda (_hd118425118476_ _bind118431118478_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd118425118476_))
                                       (let ((_e118428118481_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd118425118476_))))
                                         (let ((_lp-tl118430118486_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e118428118481_)))
                                               (_lp-hd118429118484_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e118428118481_))))
                                           (let ((__tmp128076
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd118429118484_
                                                          _bind118431118478_))))
                                             (declare (not safe))
                                             (_loop118427118473_
                                              _lp-tl118430118486_
                                              __tmp128076))))
                                       (let ((_bind118432118489_
                                              (reverse _bind118431118478_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl118421118465_))
                                             (let ((_e118435118492_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl118421118465_))))
                                               (let ((_tl118433118497_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e118435118492_)))
                                                     (_hd118434118495_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e118435118492_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl118433118497_))
                                                     (let ((_L118500_
                                                            _hd118434118495_)
                                                           (_L118501_
                                                            _bind118432118489_))
                                                       (if (let ((__tmp128074
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128075
                                 (lambda (_g118521118524_ _g118522118526_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g118521118524_ _g118522118526_)))))
                            (declare (not safe))
                            (foldr1 __tmp128075 '() _L118501_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp128074))
                   (___kont127544127545_ _L118500_ _L118501_)
                   (___kont127548127549_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont127548127549_))))
                                             (___kont127548127549_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop118427118473_ _target118424118468_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx127542127543_))
                    (let ((_e118420118452_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx127542127543_))))
                      (let ((_tl118418118457_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118420118452_)))
                            (_hd118419118455_
                             (let ()
                               (declare (not safe))
                               (##car _e118420118452_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118418118457_))
                            (let ((_e118423118460_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118418118457_))))
                              (let ((_tl118421118465_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118423118460_)))
                                    (_hd118422118463_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118423118460_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd118422118463_))
                                    (let ((___splice127546127547_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd118422118463_
                                              '0))))
                                      (let ((_tl118426118470_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127546127547_
                                                '1)))
                                            (_target118424118468_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127546127547_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118426118470_))
                                            (___match127569127570_
                                             _e118420118452_
                                             _hd118419118455_
                                             _tl118418118457_
                                             _e118423118460_
                                             _hd118422118463_
                                             _tl118421118465_
                                             ___splice127546127547_
                                             _target118424118468_
                                             _tl118426118470_)
                                            (___kont127548127549_))))
                                    (___kont127548127549_))))
                            (___kont127548127549_))))
                    (___kont127548127549_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx117550_)
        (letrec* ((_bind-e__125665125666_
                   (lambda (_id118390_ _expr118391_ _compile?118392_)
                     (let ((__tmp128079
                            (let ()
                              (declare (not safe))
                              (cons _id118390_ '())))
                           (__tmp128077
                            (let ((__tmp128078
                                   (if _compile?118392_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr118391_))
                                       _expr118391_)))
                              (declare (not safe))
                              (cons __tmp128078 '()))))
                       (declare (not safe))
                       (cons __tmp128079 __tmp128077))))
                  (_bind-e__0__125667125668_
                   (lambda (_id118397_ _expr118398_)
                     (let ((_compile?118400_ '#t))
                       (declare (not safe))
                       (_bind-e__125665125666_
                        _id118397_
                        _expr118398_
                        _compile?118400_))))
                  (_bind-e117552_
                   (lambda _g128081_
                     (let ((_g128080_
                            (let ()
                              (declare (not safe))
                              (##length _g128081_))))
                       (cond ((let () (declare (not safe)) (##fx= _g128080_ 2))
                              (apply (lambda (_id118397_ _expr118398_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__125667125668_
                                          _id118397_
                                          _expr118398_)))
                                     _g128081_))
                             ((let () (declare (not safe)) (##fx= _g128080_ 3))
                              (apply (lambda (_id118402_
                                              _expr118403_
                                              _compile?118404_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__125665125666_
                                          _id118402_
                                          _expr118403_
                                          _compile?118404_)))
                                     _g128081_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g128081_))))))
                  (_compile-bindings117553_
                   (lambda (_rest117688_)
                     (let _lp117690_ ((_rest117692_ _rest117688_)
                                      (_bind117693_ '()))
                       (let* ((_rest117694117702_ _rest117692_)
                              (_else117696117710_
                               (lambda () (reverse _bind117693_)))
                              (_K117698118377_
                               (lambda (_rest117713_ _hd117714_)
                                 (let* ((___stx127592127593_ _hd117714_)
                                        (_g117719117766_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx127592127593_)))))
                                   (let ((___kont127594127595_
                                          (lambda (_L118284_ _L118285_)
                                            (let* ((___stx127572127573_
                                                    _L118284_)
                                                   (_g118300118314_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx127572127573_)))))
                                              (let ((___kont127574127575_
                                                     (lambda (_L118362_)
                                                       (let ((__tmp128082
                                                              (let ((__tmp128083
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__125665125666_
                                _L118285_
                                _L118284_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp128083 _bind117693_))))
                 (declare (not safe))
                 (_lp117690_ _rest117713_ __tmp128082))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127576127577_
                                                     (lambda (_L118327_)
                                                       (let ((_g128084_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx117550_
                         _L118285_
                         _L118327_
                         '#t))))
                 (begin
                   (let ((_g128085_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g128084_)
                                (##vector-length _g128084_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g128085_ 3)))
                         (error "Context expects 3 values" _g128085_)))
                   (let ((_ids118337_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128084_ 0)))
                         (_impls118338_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128084_ 1)))
                         (_clauses118339_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128084_ 2))))
                     (let* ((_g128086_
                             (for-each gx#core-bind-runtime! _ids118337_))
                            (_xbind118342_
                             (map _bind-e117552_ _ids118337_ _impls118338_))
                            (_expr*118344_
                             (let ((__tmp128088
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses118339_)))
                                   (__tmp128087
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp128088
                                __tmp128087)))
                            (_bind*118346_
                             (let ()
                               (declare (not safe))
                               (_bind-e__125665125666_
                                _L118285_
                                _expr*118344_
                                '#f))))
                       (let ((__tmp128090
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L118285_)))
                             (__tmp128089
                              (map gxc#identifier-symbol _ids118337_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp128090
                          '" => "
                          __tmp128089))
                       (let ((__tmp128091
                              (let ((__tmp128092
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind117693_
                                               _xbind118342_))))
                                (declare (not safe))
                                (cons _bind*118346_ __tmp128092))))
                         (declare (not safe))
                         (_lp117690_ _rest117713_ __tmp128091)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match127583127584_
                                                       (lambda (_e118305118354_
                                                                _hd118304118357_
                                                                _tl118303118359_)
                                                         (let ((_L118362_
                                                                _tl118303118359_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L118362_))
                       (___kont127574127575_ _L118362_)
                       (___kont127576127577_ _tl118303118359_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx127572127573_))
                                                      (let ((_e118305118354_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx127572127573_))))
                (let ((_tl118303118359_
                       (let () (declare (not safe)) (##cdr _e118305118354_)))
                      (_hd118304118357_
                       (let () (declare (not safe)) (##car _e118305118354_))))
                  (___match127583127584_
                   _e118305118354_
                   _hd118304118357_
                   _tl118303118359_)))
              (let () (declare (not safe)) (_g118300118314_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont127596127597_
                                          (lambda (_L118112_ _L118113_)
                                            (let* ((_g118127118157_
                                                    (lambda (_g118128118154_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118128118154_))))
                                                   (_g118126118252_
                                                    (lambda (_g118128118160_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118128118160_))
                                                          (let ((_e118134118162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118128118160_))))
                    (let ((_hd118133118165_
                           (let ()
                             (declare (not safe))
                             (##car _e118134118162_)))
                          (_tl118132118167_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118134118162_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118132118167_))
                          (let ((_e118137118170_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118132118167_))))
                            (let ((_hd118136118173_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118137118170_)))
                                  (_tl118135118175_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118137118170_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118136118173_))
                                  (let ((_e118140118178_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118136118173_))))
                                    (let ((_hd118139118181_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118140118178_)))
                                          (_tl118138118183_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118140118178_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118139118181_))
                                          (let ((_e118143118186_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118139118181_))))
                                            (let ((_hd118142118189_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118143118186_)))
                                                  (_tl118141118191_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118143118186_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd118142118189_))
                                                  (let ((_e118146118194_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd118142118189_))))
                                                    (let ((_hd118145118197_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118146118194_)))
                                                          (_tl118144118199_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118146118194_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118144118199_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118141118191_))
                      (let ((_e118149118202_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118141118191_))))
                        (let ((_hd118148118205_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118149118202_)))
                              (_tl118147118207_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118149118202_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118147118207_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl118138118183_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118135118175_))
                                      (let ((_e118152118210_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118135118175_))))
                                        (let ((_hd118151118213_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118152118210_)))
                                              (_tl118150118215_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118152118210_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118150118215_))
                                              ((lambda (_L118218_
                                                        _L118219_
                                                        _L118220_)
                                                 (let* ((_lambda-id118244_
                                                         (let ((__tmp128094
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L118113_)))
                       (__tmp128093 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp128094 __tmp128093)))
                (_lambda-id118246_
                 (let ((__tmp128095
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx117550_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id118244_ __tmp128095)))
                (_g128096_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id118246_)))
                (_new-case-lambda-expr118249_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L118218_
                    _L118220_
                    _lambda-id118246_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp128098
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L118113_)))
                                                         (__tmp128097
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id118246_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp128098
                                                      '" => "
                                                      __tmp128097))
                                                   (let ((__tmp128101
                                                          (let ((__tmp128102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__125665125666_
                            _L118113_
                            _new-case-lambda-expr118249_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp128102 _rest117713_)))
                 (__tmp128099
                  (let ((__tmp128100
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__125667125668_
                            _lambda-id118246_
                            _L118219_))))
                    (declare (not safe))
                    (cons __tmp128100 _bind117693_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp117690_
                                                      __tmp128101
                                                      __tmp128099))))
                                               _hd118151118213_
                                               _hd118148118205_
                                               _hd118145118197_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118127118157_
                                                 _g118128118160_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118127118157_ _g118128118160_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g118127118157_ _g118128118160_)))
                              (let ()
                                (declare (not safe))
                                (_g118127118157_ _g118128118160_)))))
                      (let ()
                        (declare (not safe))
                        (_g118127118157_ _g118128118160_)))
                  (let ()
                    (declare (not safe))
                    (_g118127118157_ _g118128118160_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118127118157_
                                                     _g118128118160_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118127118157_
                                             _g118128118160_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118127118157_ _g118128118160_)))))
                          (let ()
                            (declare (not safe))
                            (_g118127118157_ _g118128118160_)))))
                  (let ()
                    (declare (not safe))
                    (_g118127118157_ _g118128118160_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118126118252_ _L118112_))))
                                         (___kont127598127599_
                                          (lambda (_L117836_ _L117837_)
                                            (let* ((_g117851117904_
                                                    (lambda (_g117852117901_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g117852117901_))))
                                                   (_g117850118080_
                                                    (lambda (_g117852117907_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g117852117907_))
                                                          (let ((_e117860117909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g117852117907_))))
                    (let ((_hd117859117912_
                           (let ()
                             (declare (not safe))
                             (##car _e117860117909_)))
                          (_tl117858117914_
                           (let ()
                             (declare (not safe))
                             (##cdr _e117860117909_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl117858117914_))
                          (let ((_e117863117917_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl117858117914_))))
                            (let ((_hd117862117920_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e117863117917_)))
                                  (_tl117861117922_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e117863117917_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd117862117920_))
                                  (let ((_e117866117925_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd117862117920_))))
                                    (let ((_hd117865117928_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117866117925_)))
                                          (_tl117864117930_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117866117925_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd117865117928_))
                                          (let ((_e117869117933_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd117865117928_))))
                                            (let ((_hd117868117936_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e117869117933_)))
                                                  (_tl117867117938_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e117869117933_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd117868117936_))
                                                  (let ((_e117872117941_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd117868117936_))))
                                                    (let ((_hd117871117944_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e117872117941_)))
                                                          (_tl117870117946_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e117872117941_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl117870117946_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl117867117938_))
                      (let ((_e117875117949_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl117867117938_))))
                        (let ((_hd117874117952_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117875117949_)))
                              (_tl117873117954_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117875117949_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd117874117952_))
                              (let ((_e117878117957_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd117874117952_))))
                                (let ((_hd117877117960_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117878117957_)))
                                      (_tl117876117962_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117878117957_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117876117962_))
                                      (let ((_e117881117965_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117876117962_))))
                                        (let ((_hd117880117968_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117881117965_)))
                                              (_tl117879117970_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117881117965_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd117880117968_))
                                              (let ((_e117884117973_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd117880117968_))))
                                                (let ((_hd117883117976_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e117884117973_)))
                                                      (_tl117882117978_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e117884117973_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd117883117976_))
                                                      (let ((_e117887117981_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd117883117976_))))
                (let ((_hd117886117984_
                       (let () (declare (not safe)) (##car _e117887117981_)))
                      (_tl117885117986_
                       (let () (declare (not safe)) (##cdr _e117887117981_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd117886117984_))
                      (let ((_e117890117989_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd117886117984_))))
                        (let ((_hd117889117992_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117890117989_)))
                              (_tl117888117994_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117890117989_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl117888117994_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl117885117986_))
                                  (let ((_e117893117997_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl117885117986_))))
                                    (let ((_hd117892118000_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117893117997_)))
                                          (_tl117891118002_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117893117997_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl117891118002_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117882117978_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl117879117970_))
                                                  (let ((_e117896118005_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl117879117970_))))
                                                    (let ((_hd117895118008_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e117896118005_)))
                                                          (_tl117894118010_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e117896118005_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl117894118010_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl117873117954_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl117864117930_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117861117922_))
                              (let ((_e117899118013_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117861117922_))))
                                (let ((_hd117898118016_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117899118013_)))
                                      (_tl117897118018_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117899118013_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117897118018_))
                                      ((lambda (_L118021_
                                                _L118022_
                                                _L118023_
                                                _L118024_
                                                _L118025_)
                                         (let* ((_get-kws-id118065_
                                                 (let ((__tmp128104
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L117837_)))
                                                       (__tmp128103
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128104
                                                    __tmp128103)))
                                                (_get-kws-id118067_
                                                 (let ((__tmp128105
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx117550_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id118065_
                                                    __tmp128105)))
                                                (_main-id118069_
                                                 (let ((__tmp128107
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L117837_)))
                                                       (__tmp128106
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128107
                                                    __tmp128106)))
                                                (_main-id118071_
                                                 (let ((__tmp128108
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx117550_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id118069_
                                                    __tmp128108)))
                                                (_g128109_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id118067_)))
                                                (_g128110_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id118071_)))
                                                (_new-kw-dispatch118075_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118021_
                                                    _L118025_
                                                    _get-kws-id118067_)))
                                                (_new-get-kws118077_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118022_
                                                    _L118024_
                                                    _main-id118071_))))
                                           (let ((__tmp128113
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L117837_)))
                                                 (__tmp128112
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id118067_)))
                                                 (__tmp128111
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id118071_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp128113
                                              '" => "
                                              __tmp128112
                                              '" => "
                                              __tmp128111))
                                           (let ((__tmp128114
                                                  (let ((__tmp128119
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125665125666_
                                                            _main-id118071_
                                                            _L118023_
                                                            '#f)))
                                                        (__tmp128115
                                                         (let ((__tmp128118
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__125665125666_
                           _get-kws-id118067_
                           _new-get-kws118077_
                           '#f)))
                       (__tmp128116
                        (let ((__tmp128117
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__125665125666_
                                  _L117837_
                                  _new-kw-dispatch118075_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp128117 _rest117713_))))
                   (declare (not safe))
                   (cons __tmp128118 __tmp128116))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp128119
                                                          __tmp128115))))
                                             (declare (not safe))
                                             (_lp117690_
                                              __tmp128114
                                              _bind117693_))))
                                       _hd117898118016_
                                       _hd117895118008_
                                       _hd117892118000_
                                       _hd117889117992_
                                       _hd117871117944_)
                                      (let ()
                                        (declare (not safe))
                                        (_g117851117904_ _g117852117907_)))))
                              (let ()
                                (declare (not safe))
                                (_g117851117904_ _g117852117907_)))
                          (let ()
                            (declare (not safe))
                            (_g117851117904_ _g117852117907_)))
                      (let ()
                        (declare (not safe))
                        (_g117851117904_ _g117852117907_)))
                  (let ()
                    (declare (not safe))
                    (_g117851117904_ _g117852117907_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g117851117904_
                                                     _g117852117907_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g117851117904_
                                                 _g117852117907_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g117851117904_
                                             _g117852117907_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g117851117904_ _g117852117907_)))
                              (let ()
                                (declare (not safe))
                                (_g117851117904_ _g117852117907_)))))
                      (let ()
                        (declare (not safe))
                        (_g117851117904_ _g117852117907_)))))
              (let ()
                (declare (not safe))
                (_g117851117904_ _g117852117907_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g117851117904_
                                                 _g117852117907_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117851117904_ _g117852117907_)))))
                              (let ()
                                (declare (not safe))
                                (_g117851117904_ _g117852117907_)))))
                      (let ()
                        (declare (not safe))
                        (_g117851117904_ _g117852117907_)))
                  (let ()
                    (declare (not safe))
                    (_g117851117904_ _g117852117907_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g117851117904_
                                                     _g117852117907_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g117851117904_
                                             _g117852117907_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g117851117904_ _g117852117907_)))))
                          (let ()
                            (declare (not safe))
                            (_g117851117904_ _g117852117907_)))))
                  (let ()
                    (declare (not safe))
                    (_g117851117904_ _g117852117907_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g117850118080_ _L117836_))))
                                         (___kont127600127601_
                                          (lambda (_L117787_ _L117788_)
                                            (let ((__tmp128120
                                                   (let ((__tmp128121
                                                          (let ((__tmp128122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128123
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L117787_))))
                           (declare (not safe))
                           (cons __tmp128123 '()))))
                    (declare (not safe))
                    (cons _L117788_ __tmp128122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128121
                                                           _bind117693_))))
                                              (declare (not safe))
                                              (_lp117690_
                                               _rest117713_
                                               __tmp128120)))))
                                     (let* ((___match127667127668_
                                             (lambda (_e117747117812_
                                                      _hd117746117815_
                                                      _tl117745117817_
                                                      _e117750117820_
                                                      _hd117749117823_
                                                      _tl117748117825_
                                                      _e117753117828_
                                                      _hd117752117831_
                                                      _tl117751117833_)
                                               (let ((_L117836_
                                                      _hd117752117831_)
                                                     (_L117837_
                                                      _hd117749117823_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L117837_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L117836_)))
                                                     (___kont127598127599_
                                                      _L117836_
                                                      _L117837_)
                                                     (___kont127600127601_
                                                      _hd117752117831_
                                                      _hd117746117815_)))))
                                            (___match127645127646_
                                             (lambda (_e117736118088_
                                                      _hd117735118091_
                                                      _tl117734118093_
                                                      _e117739118096_
                                                      _hd117738118099_
                                                      _tl117737118101_
                                                      _e117742118104_
                                                      _hd117741118107_
                                                      _tl117740118109_)
                                               (let ((_L118112_
                                                      _hd117741118107_)
                                                     (_L118113_
                                                      _hd117738118099_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118113_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L118112_)))
                                                     (___kont127596127597_
                                                      _L118112_
                                                      _L118113_)
                                                     (___match127667127668_
                                                      _e117736118088_
                                                      _hd117735118091_
                                                      _tl117734118093_
                                                      _e117739118096_
                                                      _hd117738118099_
                                                      _tl117737118101_
                                                      _e117742118104_
                                                      _hd117741118107_
                                                      _tl117740118109_)))))
                                            (___match127623127624_
                                             (lambda (_e117725118260_
                                                      _hd117724118263_
                                                      _tl117723118265_
                                                      _e117728118268_
                                                      _hd117727118271_
                                                      _tl117726118273_
                                                      _e117731118276_
                                                      _hd117730118279_
                                                      _tl117729118281_)
                                               (let ((_L118284_
                                                      _hd117730118279_)
                                                     (_L118285_
                                                      _hd117727118271_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118285_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L118284_)))
                                                     (___kont127594127595_
                                                      _L118284_
                                                      _L118285_)
                                                     (___match127645127646_
                                                      _e117725118260_
                                                      _hd117724118263_
                                                      _tl117723118265_
                                                      _e117728118268_
                                                      _hd117727118271_
                                                      _tl117726118273_
                                                      _e117731118276_
                                                      _hd117730118279_
                                                      _tl117729118281_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx127592127593_))
                                           (let ((_e117725118260_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx127592127593_))))
                                             (let ((_tl117723118265_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e117725118260_)))
                                                   (_hd117724118263_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e117725118260_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd117724118263_))
                                                   (let ((_e117728118268_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd117724118263_))))
                                                     (let ((_tl117726118273_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e117728118268_)))
                                                           (_hd117727118271_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e117728118268_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl117726118273_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl117723118265_))
                       (let ((_e117731118276_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl117723118265_))))
                         (let ((_tl117729118281_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e117731118276_)))
                               (_hd117730118279_
                                (let ()
                                  (declare (not safe))
                                  (##car _e117731118276_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl117729118281_))
                               (___match127623127624_
                                _e117725118260_
                                _hd117724118263_
                                _tl117723118265_
                                _e117728118268_
                                _hd117727118271_
                                _tl117726118273_
                                _e117731118276_
                                _hd117730118279_
                                _tl117729118281_)
                               (let ()
                                 (declare (not safe))
                                 (_g117719117766_)))))
                       (let () (declare (not safe)) (_g117719117766_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl117723118265_))
                       (let ((_e117761117779_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl117723118265_))))
                         (let ((_tl117759117784_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e117761117779_)))
                               (_hd117760117782_
                                (let ()
                                  (declare (not safe))
                                  (##car _e117761117779_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl117759117784_))
                               (___kont127600127601_
                                _hd117760117782_
                                _hd117724118263_)
                               (let ()
                                 (declare (not safe))
                                 (_g117719117766_)))))
                       (let () (declare (not safe)) (_g117719117766_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl117723118265_))
                                                       (let ((_e117761117779_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl117723118265_))))
                 (let ((_tl117759117784_
                        (let () (declare (not safe)) (##cdr _e117761117779_)))
                       (_hd117760117782_
                        (let () (declare (not safe)) (##car _e117761117779_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl117759117784_))
                       (___kont127600127601_ _hd117760117782_ _hd117724118263_)
                       (let () (declare (not safe)) (_g117719117766_)))))
               (let () (declare (not safe)) (_g117719117766_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g117719117766_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest117694117702_))
                             (let ((_hd117699118380_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest117694117702_)))
                                   (_tl117700118382_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest117694117702_))))
                               (let* ((_hd118385_ _hd117699118380_)
                                      (_rest118387_ _tl117700118382_))
                                 (declare (not safe))
                                 (_K117698118377_ _rest118387_ _hd118385_)))
                             (let ()
                               (declare (not safe))
                               (_else117696117710_))))))))
          (let* ((___stx127684127685_ _stx117550_)
                 (_g117556117583_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx127684127685_)))))
            (let ((___kont127686127687_
                   (lambda (_L117643_ _L117644_ _L117645_)
                     (let ((__tmp128125
                            (lambda ()
                              (let ((_hd117682_
                                     (let ((__tmp128126
                                            (let ((__tmp128127
                                                   (lambda (_g117674117677_
                                                            _g117675117679_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g117674117677_
                                                             _g117675117679_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128127
                                                      '()
                                                      _L117644_))))
                                       (declare (not safe))
                                       (_compile-bindings117553_ __tmp128126)))
                                    (_body117683_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L117643_))))
                                (let ((__tmp128128
                                       (let ((__tmp128129
                                              (let ((__tmp128130
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body117683_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd117682_
                                                      __tmp128130))))
                                         (declare (not safe))
                                         (cons _L117645_ __tmp128129))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp128128
                                   _stx117550_)))))
                           (__tmp128124
                            (let ((__obj127749
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj127749)
                              __obj127749)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp128125
                        gx#current-expander-context
                        __tmp128124))))
                  (___kont127690127691_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx117550_)))))
              (let ((___match127711127712_
                     (lambda (_e117563117595_
                              _hd117562117598_
                              _tl117561117600_
                              _e117566117603_
                              _hd117565117606_
                              _tl117564117608_
                              ___splice127688127689_
                              _target117567117611_
                              _tl117569117613_)
                       (letrec ((_loop117570117616_
                                 (lambda (_hd117568117619_ _bind117574117621_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd117568117619_))
                                       (let ((_e117571117624_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd117568117619_))))
                                         (let ((_lp-tl117573117629_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e117571117624_)))
                                               (_lp-hd117572117627_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e117571117624_))))
                                           (let ((__tmp128133
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd117572117627_
                                                          _bind117574117621_))))
                                             (declare (not safe))
                                             (_loop117570117616_
                                              _lp-tl117573117629_
                                              __tmp128133))))
                                       (let ((_bind117575117632_
                                              (reverse _bind117574117621_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl117564117608_))
                                             (let ((_e117578117635_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl117564117608_))))
                                               (let ((_tl117576117640_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e117578117635_)))
                                                     (_hd117577117638_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e117578117635_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl117576117640_))
                                                     (let ((_L117643_
                                                            _hd117577117638_)
                                                           (_L117644_
                                                            _bind117575117632_)
                                                           (_L117645_
                                                            _hd117562117598_))
                                                       (if (let ((__tmp128131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128132
                                 (lambda (_g117666117669_ _g117667117671_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g117666117669_ _g117667117671_)))))
                            (declare (not safe))
                            (foldr1 __tmp128132 '() _L117644_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp128131))
                   (___kont127686127687_ _L117643_ _L117644_ _L117645_)
                   (___kont127690127691_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont127690127691_))))
                                             (___kont127690127691_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop117570117616_ _target117567117611_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx127684127685_))
                    (let ((_e117563117595_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx127684127685_))))
                      (let ((_tl117561117600_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117563117595_)))
                            (_hd117562117598_
                             (let ()
                               (declare (not safe))
                               (##car _e117563117595_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl117561117600_))
                            (let ((_e117566117603_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl117561117600_))))
                              (let ((_tl117564117608_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e117566117603_)))
                                    (_hd117565117606_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e117566117603_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd117565117606_))
                                    (let ((___splice127688127689_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd117565117606_
                                              '0))))
                                      (let ((_tl117569117613_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127688127689_
                                                '1)))
                                            (_target117567117611_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127688127689_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl117569117613_))
                                            (___match127711127712_
                                             _e117563117595_
                                             _hd117562117598_
                                             _tl117561117600_
                                             _e117566117603_
                                             _hd117565117606_
                                             _tl117564117608_
                                             ___splice127688127689_
                                             _target117567117611_
                                             _tl117569117613_)
                                            (___kont127690127691_))))
                                    (___kont127690127691_))))
                            (___kont127690127691_))))
                    (___kont127690127691_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind117468_)
        (let* ((___stx127714127715_ _bind117468_)
               (_g117471117488_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127714127715_)))))
          (let ((___kont127716127717_
                 (lambda (_L117524_ _L117525_)
                   (if (let () (declare (not safe)) (gx#identifier? _L117525_))
                       (let ((_$e117541_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L117524_))))
                         (if _$e117541_
                             _$e117541_
                             (let ((_$e117544_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L117524_))))
                               (if _$e117544_
                                   _$e117544_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L117524_))))))
                       '#f)))
                (___kont127718127719_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127714127715_))
                (let ((_e117477117500_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127714127715_))))
                  (let ((_tl117475117505_
                         (let () (declare (not safe)) (##cdr _e117477117500_)))
                        (_hd117476117503_
                         (let ()
                           (declare (not safe))
                           (##car _e117477117500_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd117476117503_))
                        (let ((_e117480117508_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd117476117503_))))
                          (let ((_tl117478117513_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117480117508_)))
                                (_hd117479117511_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117480117508_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl117478117513_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl117475117505_))
                                    (let ((_e117483117516_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl117475117505_))))
                                      (let ((_tl117481117521_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e117483117516_)))
                                            (_hd117482117519_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e117483117516_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl117481117521_))
                                            (___kont127716127717_
                                             _hd117482117519_
                                             _hd117479117511_)
                                            (___kont127718127719_))))
                                    (___kont127718127719_))
                                (___kont127718127719_))))
                        (___kont127718127719_))))
                (___kont127718127719_))))))))
