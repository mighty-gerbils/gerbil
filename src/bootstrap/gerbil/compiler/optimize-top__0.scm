(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1708418156)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl125726_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp127819 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl125726_ __tmp127819))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125726_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125726_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125726_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125726_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl125726_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx125709_ . _args125711_)
        (let ((__tmp127821
               (lambda ()
                 (declare (not safe))
                 (if (null? _args125711_)
                     (gxc#compile-e__0 _stx125709_)
                     (let ((_arg1125716_ (car _args125711_))
                           (_rest125718_ (cdr _args125711_)))
                       (if (null? _rest125718_)
                           (gxc#compile-e__1 _stx125709_ _arg1125716_)
                           (let ((_arg2125721_ (car _rest125718_))
                                 (_rest125723_ (cdr _rest125718_)))
                             (if (null? _rest125723_)
                                 (gxc#compile-e__2
                                  _stx125709_
                                  _arg1125716_
                                  _arg2125721_)
                                 (apply gxc#compile-e
                                        _stx125709_
                                        _arg1125716_
                                        _arg2125721_
                                        _rest125723_))))))))
              (__tmp127820 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp127821
           gxc#current-compile-methods
           __tmp127820))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl125706_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp127822 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl125706_ __tmp127822))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125706_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125706_ '%#call gxc#basic-expression-type-call%))
           _tbl125706_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx125689_ . _args125691_)
        (let ((__tmp127824
               (lambda ()
                 (declare (not safe))
                 (if (null? _args125691_)
                     (gxc#compile-e__0 _stx125689_)
                     (let ((_arg1125696_ (car _args125691_))
                           (_rest125698_ (cdr _args125691_)))
                       (if (null? _rest125698_)
                           (gxc#compile-e__1 _stx125689_ _arg1125696_)
                           (let ((_arg2125701_ (car _rest125698_))
                                 (_rest125703_ (cdr _rest125698_)))
                             (if (null? _rest125703_)
                                 (gxc#compile-e__2
                                  _stx125689_
                                  _arg1125696_
                                  _arg2125701_)
                                 (apply gxc#compile-e
                                        _stx125689_
                                        _arg1125696_
                                        _arg2125701_
                                        _rest125703_))))))))
              (__tmp127823 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp127824
           gxc#current-compile-methods
           __tmp127823))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl125686_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp127825 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl125686_ __tmp127825))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125686_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125686_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125686_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125686_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125686_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125686_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125686_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125686_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125686_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125686_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125686_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125686_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125686_ '%#set! gxc#collect-body-setq%))
           _tbl125686_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx125669_ . _args125671_)
        (let ((__tmp127827
               (lambda ()
                 (declare (not safe))
                 (if (null? _args125671_)
                     (gxc#compile-e__0 _stx125669_)
                     (let ((_arg1125676_ (car _args125671_))
                           (_rest125678_ (cdr _args125671_)))
                       (if (null? _rest125678_)
                           (gxc#compile-e__1 _stx125669_ _arg1125676_)
                           (let ((_arg2125681_ (car _rest125678_))
                                 (_rest125683_ (cdr _rest125678_)))
                             (if (null? _rest125683_)
                                 (gxc#compile-e__2
                                  _stx125669_
                                  _arg1125676_
                                  _arg2125681_)
                                 (apply gxc#compile-e
                                        _stx125669_
                                        _arg1125676_
                                        _arg2125681_
                                        _rest125683_))))))))
              (__tmp127826 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp127827
           gxc#current-compile-methods
           __tmp127826))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl125666_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp127828 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl125666_ __tmp127828))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125666_ '%#begin gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125666_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125666_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125666_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125666_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125666_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125666_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125666_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl125666_ '%#ref gxc#basic-expression-type-ref%))
           _tbl125666_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx125649_ . _args125651_)
        (let ((__tmp127830
               (lambda ()
                 (declare (not safe))
                 (if (null? _args125651_)
                     (gxc#compile-e__0 _stx125649_)
                     (let ((_arg1125656_ (car _args125651_))
                           (_rest125658_ (cdr _args125651_)))
                       (if (null? _rest125658_)
                           (gxc#compile-e__1 _stx125649_ _arg1125656_)
                           (let ((_arg2125661_ (car _rest125658_))
                                 (_rest125663_ (cdr _rest125658_)))
                             (if (null? _rest125663_)
                                 (gxc#compile-e__2
                                  _stx125649_
                                  _arg1125656_
                                  _arg2125661_)
                                 (apply gxc#compile-e
                                        _stx125649_
                                        _arg1125656_
                                        _arg2125661_
                                        _rest125663_))))))))
              (__tmp127829 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp127830
           gxc#current-compile-methods
           __tmp127829))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl125646_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp127831 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl125646_ __tmp127831))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125646_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125646_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125646_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl125646_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl125646_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx125629_ . _args125631_)
        (let ((__tmp127833
               (lambda ()
                 (declare (not safe))
                 (if (null? _args125631_)
                     (gxc#compile-e__0 _stx125629_)
                     (let ((_arg1125636_ (car _args125631_))
                           (_rest125638_ (cdr _args125631_)))
                       (if (null? _rest125638_)
                           (gxc#compile-e__1 _stx125629_ _arg1125636_)
                           (let ((_arg2125641_ (car _rest125638_))
                                 (_rest125643_ (cdr _rest125638_)))
                             (if (null? _rest125643_)
                                 (gxc#compile-e__2
                                  _stx125629_
                                  _arg1125636_
                                  _arg2125641_)
                                 (apply gxc#compile-e
                                        _stx125629_
                                        _arg1125636_
                                        _arg2125641_
                                        _rest125643_))))))))
              (__tmp127832 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp127833
           gxc#current-compile-methods
           __tmp127832))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx125532_)
        (let* ((___stx125739125740_ _stx125532_)
               (_g125535125555_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125739125740_)))))
          (let ((___kont125741125742_
                 (lambda (_L125599_ _L125600_)
                   (let ((_sym125618_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125600_))))
                     (if (let ((__tmp127834 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp127834 _sym125618_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym125618_))
                         (let ((_type125619125621_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L125599_))))
                           (if _type125619125621_
                               (let ((_type125624_ _type125619125621_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym125618_
                                  _type125624_))
                               '#f))))))
                (___kont125743125744_ (lambda () '#!void)))
            (let ((___match125772125773_
                   (lambda (_e125541125567_
                            _hd125540125570_
                            _tl125539125572_
                            _e125544125575_
                            _hd125543125578_
                            _tl125542125580_
                            _e125547125583_
                            _hd125546125586_
                            _tl125545125588_
                            _e125550125591_
                            _hd125549125594_
                            _tl125548125596_)
                     (let ((_L125599_ _hd125549125594_)
                           (_L125600_ _hd125546125586_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L125600_))
                           (___kont125741125742_ _L125599_ _L125600_)
                           (___kont125743125744_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx125739125740_))
                  (let ((_e125541125567_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx125739125740_))))
                    (let ((_tl125539125572_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125541125567_)))
                          (_hd125540125570_
                           (let ()
                             (declare (not safe))
                             (##car _e125541125567_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125539125572_))
                          (let ((_e125544125575_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125539125572_))))
                            (let ((_tl125542125580_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125544125575_)))
                                  (_hd125543125578_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125544125575_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125543125578_))
                                  (let ((_e125547125583_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125543125578_))))
                                    (let ((_tl125545125588_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125547125583_)))
                                          (_hd125546125586_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125547125583_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125545125588_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125542125580_))
                                              (let ((_e125550125591_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125542125580_))))
                                                (let ((_tl125548125596_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125550125591_)))
                                                      (_hd125549125594_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125550125591_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125548125596_))
                                                      (___match125772125773_
                                                       _e125541125567_
                                                       _hd125540125570_
                                                       _tl125539125572_
                                                       _e125544125575_
                                                       _hd125543125578_
                                                       _tl125542125580_
                                                       _e125547125583_
                                                       _hd125546125586_
                                                       _tl125545125588_
                                                       _e125550125591_
                                                       _hd125549125594_
                                                       _tl125548125596_)
                                                      (___kont125743125744_))))
                                              (___kont125743125744_))
                                          (___kont125743125744_))))
                                  (___kont125743125744_))))
                          (___kont125743125744_))))
                  (___kont125743125744_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx125388_)
        (let* ((___stx125775125776_ _stx125388_)
               (_g125391125422_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125775125776_)))))
          (let ((___kont125777125778_
                 (lambda (_L125504_ _L125505_)
                   (let ((_sym125521_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125505_))))
                     (if (let ((__tmp127835 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp127835 _sym125521_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym125521_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym125521_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym125521_))
                             (let ((_type125522125524_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L125504_))))
                               (if _type125522125524_
                                   (let ((_type125527_ _type125522125524_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym125521_
                                      _type125527_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L125504_)))))
                (___kont125779125780_
                 (lambda (_L125451_ _L125452_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L125451_)))))
            (let ((___match125808125809_
                   (lambda (_e125397125472_
                            _hd125396125475_
                            _tl125395125477_
                            _e125400125480_
                            _hd125399125483_
                            _tl125398125485_
                            _e125403125488_
                            _hd125402125491_
                            _tl125401125493_
                            _e125406125496_
                            _hd125405125499_
                            _tl125404125501_)
                     (let ((_L125504_ _hd125405125499_)
                           (_L125505_ _hd125402125491_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L125505_))
                           (___kont125777125778_ _L125504_ _L125505_)
                           (___kont125779125780_
                            _hd125405125499_
                            _hd125399125483_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx125775125776_))
                  (let ((_e125397125472_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx125775125776_))))
                    (let ((_tl125395125477_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125397125472_)))
                          (_hd125396125475_
                           (let ()
                             (declare (not safe))
                             (##car _e125397125472_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125395125477_))
                          (let ((_e125400125480_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125395125477_))))
                            (let ((_tl125398125485_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125400125480_)))
                                  (_hd125399125483_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125400125480_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125399125483_))
                                  (let ((_e125403125488_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125399125483_))))
                                    (let ((_tl125401125493_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125403125488_)))
                                          (_hd125402125491_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125403125488_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125401125493_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125398125485_))
                                              (let ((_e125406125496_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125398125485_))))
                                                (let ((_tl125404125501_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125406125496_)))
                                                      (_hd125405125499_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125406125496_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125404125501_))
                                                      (___match125808125809_
                                                       _e125397125472_
                                                       _hd125396125475_
                                                       _tl125395125477_
                                                       _e125400125480_
                                                       _hd125399125483_
                                                       _tl125398125485_
                                                       _e125403125488_
                                                       _hd125402125491_
                                                       _tl125401125493_
                                                       _e125406125496_
                                                       _hd125405125499_
                                                       _tl125404125501_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125391125422_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125391125422_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125398125485_))
                                              (let ((_e125417125443_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125398125485_))))
                                                (let ((_tl125415125448_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125417125443_)))
                                                      (_hd125416125446_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125417125443_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125415125448_))
                                                      (___kont125779125780_
                                                       _hd125416125446_
                                                       _hd125399125483_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125391125422_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125391125422_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125398125485_))
                                      (let ((_e125417125443_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125398125485_))))
                                        (let ((_tl125415125448_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125417125443_)))
                                              (_hd125416125446_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125417125443_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125415125448_))
                                              (___kont125779125780_
                                               _hd125416125446_
                                               _hd125399125483_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125391125422_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125391125422_))))))
                          (let () (declare (not safe)) (_g125391125422_)))))
                  (let () (declare (not safe)) (_g125391125422_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx125173_)
        (letrec ((_collect-e125175_
                  (lambda (_hd125332_ _expr125333_)
                    (let* ((___stx125831125832_ _hd125332_)
                           (_g125336125346_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx125831125832_)))))
                      (let ((___kont125833125834_
                             (lambda (_L125366_)
                               (let ((_sym125377_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L125366_))))
                                 (if (let ((__tmp127836
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp127836 _sym125377_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym125377_))
                                     (let ((_type125378125380_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr125333_))))
                                       (if _type125378125380_
                                           (let ((_type125383_
                                                  _type125378125380_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym125377_
                                              _type125383_
                                              '#t))
                                           '#f))))))
                            (___kont125835125836_ (lambda () '#!void)))
                        (let ((___match125844125845_
                               (lambda (_e125341125358_
                                        _hd125340125361_
                                        _tl125339125363_)
                                 (let ((_L125366_ _hd125340125361_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L125366_))
                                       (___kont125833125834_ _L125366_)
                                       (___kont125835125836_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx125831125832_))
                              (let ((_e125341125358_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx125831125832_))))
                                (let ((_tl125339125363_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125341125358_)))
                                      (_hd125340125361_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125341125358_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125339125363_))
                                      (___match125844125845_
                                       _e125341125358_
                                       _hd125340125361_
                                       _tl125339125363_)
                                      (___kont125835125836_))))
                              (___kont125835125836_))))))))
          (let* ((_g125177125212_
                  (lambda (_g125178125209_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g125178125209_))))
                 (_g125176125329_
                  (lambda (_g125178125215_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g125178125215_))
                        (let ((_e125184125217_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g125178125215_))))
                          (let ((_hd125183125220_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125184125217_)))
                                (_tl125182125222_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125184125217_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125182125222_))
                                (let ((_e125187125225_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125182125222_))))
                                  (let ((_hd125186125228_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125187125225_)))
                                        (_tl125185125230_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125187125225_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd125186125228_))
                                        (let ((_g127837_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd125186125228_
                                                  '0))))
                                          (begin
                                            (let ((_g127838_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g127837_)
                                                         (##vector-length
                                                          _g127837_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g127838_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g127838_)))
                                            (let ((_target125188125233_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g127837_
                                                      0)))
                                                  (_tl125190125235_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g127837_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125190125235_))
                                                  (letrec ((_loop125191125238_
                                                            (lambda (_hd125189125241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr125195125243_
                             _hd125196125245_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125189125241_))
                          (let ((_e125192125248_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125189125241_))))
                            (let ((_lp-hd125193125251_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125192125248_)))
                                  (_lp-tl125194125253_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125192125248_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd125193125251_))
                                  (let ((_e125201125256_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd125193125251_))))
                                    (let ((_hd125200125259_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125201125256_)))
                                          (_tl125199125261_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125201125256_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125199125261_))
                                          (let ((_e125204125264_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125199125261_))))
                                            (let ((_hd125203125267_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125204125264_)))
                                                  (_tl125202125269_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125204125264_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125202125269_))
                                                  (let ((__tmp127843
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd125203125267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr125195125243_)))
                (__tmp127842
                 (let ()
                   (declare (not safe))
                   (cons _hd125200125259_ _hd125196125245_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop125191125238_
                                                     _lp-tl125194125253_
                                                     __tmp127843
                                                     __tmp127842))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125177125212_
                                                     _g125178125215_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125177125212_
                                             _g125178125215_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125177125212_ _g125178125215_)))))
                          (let ((_expr125197125272_
                                 (reverse _expr125195125243_))
                                (_hd125198125274_ (reverse _hd125196125245_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125185125230_))
                                (let ((_e125207125277_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125185125230_))))
                                  (let ((_hd125206125280_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125207125277_)))
                                        (_tl125205125282_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125207125277_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl125205125282_))
                                        ((lambda (_L125285_
                                                  _L125286_
                                                  _L125287_)
                                           (for-each
                                            _collect-e125175_
                                            (let ((__tmp127839
                                                   (lambda (_g125307125310_
                                                            _g125308125312_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125307125310_
                                                             _g125308125312_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp127839
                                                      '()
                                                      _L125287_))
                                            (let ((__tmp127840
                                                   (lambda (_g125314125317_
                                                            _g125315125319_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125314125317_
                                                             _g125315125319_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp127840
                                                      '()
                                                      _L125286_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp127841
                                                   (lambda (_g125321125324_
                                                            _g125322125326_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125321125324_
                                                             _g125322125326_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp127841
                                                      '()
                                                      _L125286_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L125285_)))
                                         _hd125206125280_
                                         _expr125197125272_
                                         _hd125198125274_)
                                        (let ()
                                          (declare (not safe))
                                          (_g125177125212_ _g125178125215_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125177125212_ _g125178125215_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop125191125238_
                                                       _target125188125233_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125177125212_
                                                     _g125178125215_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g125177125212_ _g125178125215_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125177125212_ _g125178125215_)))))
                        (let ()
                          (declare (not safe))
                          (_g125177125212_ _g125178125215_))))))
            (declare (not safe))
            (_g125176125329_ _stx125173_)))))
    (define gxc#collect-type-call%
      (lambda (_stx124665_)
        (let* ((___stx125847125848_ _stx124665_)
               (_g124669124784_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125847125848_)))))
          (let ((___kont125849125850_
                 (lambda (_L125123_ _L125124_ _L125125_ _L125126_ _L125127_)
                   (let ((__tmp127847
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125126_)))
                         (__tmp127846
                          (let () (declare (not safe)) (gx#stx-e _L125125_)))
                         (__tmp127845
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125124_)))
                         (__tmp127844
                          (let () (declare (not safe)) (gx#stx-e _L125123_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp127847
                      __tmp127846
                      __tmp127845
                      __tmp127844))))
                (___kont125851125852_
                 (lambda (_L124951_ _L124952_ _L124953_ _L124954_)
                   (let ((__tmp127850
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124953_)))
                         (__tmp127849
                          (let () (declare (not safe)) (gx#stx-e _L124952_)))
                         (__tmp127848
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124951_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp127850
                      __tmp127849
                      __tmp127848
                      '#f))))
                (___kont125853125854_
                 (lambda (_L124821_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp127851
                           (lambda (_g124834124837_ _g124835124839_)
                             (let ()
                               (declare (not safe))
                               (cons _g124834124837_ _g124835124839_)))))
                      (declare (not safe))
                      (foldr1 __tmp127851 '() _L124821_))))))
            (let* ((___match126104126105_
                    (lambda (_e124770124789_
                             _hd124769124792_
                             _tl124768124794_
                             ___splice125855125856_
                             _target124771124797_
                             _tl124773124799_)
                      (letrec ((_loop124774124802_
                                (lambda (_hd124772124805_ _expr124778124807_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124772124805_))
                                      (let ((_e124775124810_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124772124805_))))
                                        (let ((_lp-tl124777124815_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124775124810_)))
                                              (_lp-hd124776124813_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124775124810_))))
                                          (let ((__tmp127852
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124776124813_
                                                         _expr124778124807_))))
                                            (declare (not safe))
                                            (_loop124774124802_
                                             _lp-tl124777124815_
                                             __tmp127852))))
                                      (let ((_expr124779124818_
                                             (reverse _expr124778124807_)))
                                        (___kont125853125854_
                                         _expr124779124818_))))))
                        (let ()
                          (declare (not safe))
                          (_loop124774124802_ _target124771124797_ '())))))
                   (___match125984125985_
                    (lambda (_e124678124995_
                             _hd124677124998_
                             _tl124676125000_
                             _e124681125003_
                             _hd124680125006_
                             _tl124679125008_
                             _e124684125011_
                             _hd124683125014_
                             _tl124682125016_
                             _e124687125019_
                             _hd124686125022_
                             _tl124685125024_
                             _e124690125027_
                             _hd124689125030_
                             _tl124688125032_
                             _e124693125035_
                             _hd124692125038_
                             _tl124691125040_
                             _e124696125043_
                             _hd124695125046_
                             _tl124694125048_
                             _e124699125051_
                             _hd124698125054_
                             _tl124697125056_
                             _e124702125059_
                             _hd124701125062_
                             _tl124700125064_
                             _e124705125067_
                             _hd124704125070_
                             _tl124703125072_
                             _e124708125075_
                             _hd124707125078_
                             _tl124706125080_
                             _e124711125083_
                             _hd124710125086_
                             _tl124709125088_
                             _e124714125091_
                             _hd124713125094_
                             _tl124712125096_
                             _e124717125099_
                             _hd124716125102_
                             _tl124715125104_
                             _e124720125107_
                             _hd124719125110_
                             _tl124718125112_
                             _e124723125115_
                             _hd124722125118_
                             _tl124721125120_)
                      (let ((_L125123_ _hd124722125118_)
                            (_L125124_ _hd124713125094_)
                            (_L125125_ _hd124704125070_)
                            (_L125126_ _hd124695125046_)
                            (_L125127_ _hd124686125022_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L125127_
                               'bind-method!))
                            (___kont125849125850_
                             _L125123_
                             _L125124_
                             _L125125_
                             _L125126_
                             _L125127_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl124676125000_))
                                (let ((___splice125855125856_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl124676125000_
                                          '0))))
                                  (let ((_tl124773124799_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice125855125856_
                                            '1)))
                                        (_target124771124797_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice125855125856_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124773124799_))
                                        (___match126104126105_
                                         _e124678124995_
                                         _hd124677124998_
                                         _tl124676125000_
                                         ___splice125855125856_
                                         _target124771124797_
                                         _tl124773124799_)
                                        (let ()
                                          (declare (not safe))
                                          (_g124669124784_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g124669124784_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx125847125848_))
                  (let ((_e124678124995_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx125847125848_))))
                    (let ((_tl124676125000_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124678124995_)))
                          (_hd124677124998_
                           (let ()
                             (declare (not safe))
                             (##car _e124678124995_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124676125000_))
                          (let ((_e124681125003_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124676125000_))))
                            (let ((_tl124679125008_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124681125003_)))
                                  (_hd124680125006_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124681125003_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd124680125006_))
                                  (let ((_e124684125011_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd124680125006_))))
                                    (let ((_tl124682125016_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124684125011_)))
                                          (_hd124683125014_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124684125011_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd124683125014_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd124683125014_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124682125016_))
                                                  (let ((_e124687125019_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124682125016_))))
                                                    (let ((_tl124685125024_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124687125019_)))
                                                          (_hd124686125022_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124687125019_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124685125024_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl124679125008_))
                      (let ((_e124690125027_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124679125008_))))
                        (let ((_tl124688125032_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124690125027_)))
                              (_hd124689125030_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124690125027_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd124689125030_))
                              (let ((_e124693125035_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd124689125030_))))
                                (let ((_tl124691125040_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124693125035_)))
                                      (_hd124692125038_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124693125035_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd124692125038_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd124692125038_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124691125040_))
                                              (let ((_e124696125043_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124691125040_))))
                                                (let ((_tl124694125048_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124696125043_)))
                                                      (_hd124695125046_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124696125043_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124694125048_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124688125032_))
                                                          (let ((_e124699125051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124688125032_))))
                    (let ((_tl124697125056_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124699125051_)))
                          (_hd124698125054_
                           (let ()
                             (declare (not safe))
                             (##car _e124699125051_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124698125054_))
                          (let ((_e124702125059_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124698125054_))))
                            (let ((_tl124700125064_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124702125059_)))
                                  (_hd124701125062_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124702125059_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124701125062_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd124701125062_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124700125064_))
                                          (let ((_e124705125067_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124700125064_))))
                                            (let ((_tl124703125072_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124705125067_)))
                                                  (_hd124704125070_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124705125067_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124703125072_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124697125056_))
                                                      (let ((_e124708125075_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124697125056_))))
                (let ((_tl124706125080_
                       (let () (declare (not safe)) (##cdr _e124708125075_)))
                      (_hd124707125078_
                       (let () (declare (not safe)) (##car _e124708125075_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124707125078_))
                      (let ((_e124711125083_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124707125078_))))
                        (let ((_tl124709125088_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124711125083_)))
                              (_hd124710125086_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124711125083_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124710125086_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124710125086_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124709125088_))
                                      (let ((_e124714125091_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124709125088_))))
                                        (let ((_tl124712125096_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124714125091_)))
                                              (_hd124713125094_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124714125091_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124712125096_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124706125080_))
                                                  (let ((_e124717125099_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124706125080_))))
                                                    (let ((_tl124715125104_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124717125099_)))
                                                          (_hd124716125102_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124717125099_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124716125102_))
                                                          (let ((_e124720125107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124716125102_))))
                    (let ((_tl124718125112_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124720125107_)))
                          (_hd124719125110_
                           (let ()
                             (declare (not safe))
                             (##car _e124720125107_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124719125110_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd124719125110_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124718125112_))
                                  (let ((_e124723125115_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124718125112_))))
                                    (let ((_tl124721125120_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124723125115_)))
                                          (_hd124722125118_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124723125115_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124721125120_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124715125104_))
                                              (___match125984125985_
                                               _e124678124995_
                                               _hd124677124998_
                                               _tl124676125000_
                                               _e124681125003_
                                               _hd124680125006_
                                               _tl124679125008_
                                               _e124684125011_
                                               _hd124683125014_
                                               _tl124682125016_
                                               _e124687125019_
                                               _hd124686125022_
                                               _tl124685125024_
                                               _e124690125027_
                                               _hd124689125030_
                                               _tl124688125032_
                                               _e124693125035_
                                               _hd124692125038_
                                               _tl124691125040_
                                               _e124696125043_
                                               _hd124695125046_
                                               _tl124694125048_
                                               _e124699125051_
                                               _hd124698125054_
                                               _tl124697125056_
                                               _e124702125059_
                                               _hd124701125062_
                                               _tl124700125064_
                                               _e124705125067_
                                               _hd124704125070_
                                               _tl124703125072_
                                               _e124708125075_
                                               _hd124707125078_
                                               _tl124706125080_
                                               _e124711125083_
                                               _hd124710125086_
                                               _tl124709125088_
                                               _e124714125091_
                                               _hd124713125094_
                                               _tl124712125096_
                                               _e124717125099_
                                               _hd124716125102_
                                               _tl124715125104_
                                               _e124720125107_
                                               _hd124719125110_
                                               _tl124718125112_
                                               _e124723125115_
                                               _hd124722125118_
                                               _tl124721125120_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124676125000_))
                                                  (let ((___splice125855125856_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124676125000_
                                                            '0))))
                                                    (let ((_tl124773124799_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125855125856_
                                                              '1)))
                                                          (_target124771124797_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125855125856_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124773124799_))
                                                          (___match126104126105_
                                                           _e124678124995_
                                                           _hd124677124998_
                                                           _tl124676125000_
                                                           ___splice125855125856_
                                                           _target124771124797_
                                                           _tl124773124799_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124669124784_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124669124784_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124676125000_))
                                              (let ((___splice125855125856_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124676125000_
                                                        '0))))
                                                (let ((_tl124773124799_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125855125856_
                                                          '1)))
                                                      (_target124771124797_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125855125856_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124773124799_))
                                                      (___match126104126105_
                                                       _e124678124995_
                                                       _hd124677124998_
                                                       _tl124676125000_
                                                       ___splice125855125856_
                                                       _target124771124797_
                                                       _tl124773124799_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124669124784_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124669124784_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124676125000_))
                                      (let ((___splice125855125856_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124676125000_
                                                '0))))
                                        (let ((_tl124773124799_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125855125856_
                                                  '1)))
                                              (_target124771124797_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125855125856_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124773124799_))
                                              (___match126104126105_
                                               _e124678124995_
                                               _hd124677124998_
                                               _tl124676125000_
                                               ___splice125855125856_
                                               _target124771124797_
                                               _tl124773124799_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124669124784_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124669124784_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl124676125000_))
                                  (let ((___splice125855125856_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl124676125000_
                                            '0))))
                                    (let ((_tl124773124799_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125855125856_
                                              '1)))
                                          (_target124771124797_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125855125856_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124773124799_))
                                          (___match126104126105_
                                           _e124678124995_
                                           _hd124677124998_
                                           _tl124676125000_
                                           ___splice125855125856_
                                           _target124771124797_
                                           _tl124773124799_)
                                          (let ()
                                            (declare (not safe))
                                            (_g124669124784_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124669124784_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl124676125000_))
                              (let ((___splice125855125856_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl124676125000_
                                        '0))))
                                (let ((_tl124773124799_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125855125856_
                                          '1)))
                                      (_target124771124797_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125855125856_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124773124799_))
                                      (___match126104126105_
                                       _e124678124995_
                                       _hd124677124998_
                                       _tl124676125000_
                                       ___splice125855125856_
                                       _target124771124797_
                                       _tl124773124799_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124669124784_)))))
                              (let ()
                                (declare (not safe))
                                (_g124669124784_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124676125000_))
                      (let ((___splice125855125856_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124676125000_ '0))))
                        (let ((_tl124773124799_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125855125856_ '1)))
                              (_target124771124797_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125855125856_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124773124799_))
                              (___match126104126105_
                               _e124678124995_
                               _hd124677124998_
                               _tl124676125000_
                               ___splice125855125856_
                               _target124771124797_
                               _tl124773124799_)
                              (let ()
                                (declare (not safe))
                                (_g124669124784_)))))
                      (let () (declare (not safe)) (_g124669124784_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124706125080_))
                                                      (if (let ((__tmp127853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp127853 'bind-method!))
                  (let ((_L124951_ _hd124713125094_)
                        (_L124952_ _hd124704125070_)
                        (_L124953_ _hd124695125046_)
                        (_L124954_ _hd124686125022_))
                    (___kont125851125852_
                     _L124951_
                     _L124952_
                     _L124953_
                     _L124954_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124676125000_))
                      (let ((___splice125855125856_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124676125000_ '0))))
                        (let ((_tl124773124799_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125855125856_ '1)))
                              (_target124771124797_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125855125856_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124773124799_))
                              (___match126104126105_
                               _e124678124995_
                               _hd124677124998_
                               _tl124676125000_
                               ___splice125855125856_
                               _target124771124797_
                               _tl124773124799_)
                              (let ()
                                (declare (not safe))
                                (_g124669124784_)))))
                      (let () (declare (not safe)) (_g124669124784_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl124676125000_))
                  (let ((___splice125855125856_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl124676125000_ '0))))
                    (let ((_tl124773124799_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125855125856_ '1)))
                          (_target124771124797_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125855125856_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl124773124799_))
                          (___match126104126105_
                           _e124678124995_
                           _hd124677124998_
                           _tl124676125000_
                           ___splice125855125856_
                           _target124771124797_
                           _tl124773124799_)
                          (let () (declare (not safe)) (_g124669124784_)))))
                  (let () (declare (not safe)) (_g124669124784_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124676125000_))
                                                  (let ((___splice125855125856_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124676125000_
                                                            '0))))
                                                    (let ((_tl124773124799_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125855125856_
                                                              '1)))
                                                          (_target124771124797_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125855125856_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124773124799_))
                                                          (___match126104126105_
                                                           _e124678124995_
                                                           _hd124677124998_
                                                           _tl124676125000_
                                                           ___splice125855125856_
                                                           _target124771124797_
                                                           _tl124773124799_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124669124784_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124669124784_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl124676125000_))
                                          (let ((___splice125855125856_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl124676125000_
                                                    '0))))
                                            (let ((_tl124773124799_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125855125856_
                                                      '1)))
                                                  (_target124771124797_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125855125856_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124773124799_))
                                                  (___match126104126105_
                                                   _e124678124995_
                                                   _hd124677124998_
                                                   _tl124676125000_
                                                   ___splice125855125856_
                                                   _target124771124797_
                                                   _tl124773124799_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124669124784_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g124669124784_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124676125000_))
                                      (let ((___splice125855125856_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124676125000_
                                                '0))))
                                        (let ((_tl124773124799_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125855125856_
                                                  '1)))
                                              (_target124771124797_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125855125856_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124773124799_))
                                              (___match126104126105_
                                               _e124678124995_
                                               _hd124677124998_
                                               _tl124676125000_
                                               ___splice125855125856_
                                               _target124771124797_
                                               _tl124773124799_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124669124784_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124669124784_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl124676125000_))
                                  (let ((___splice125855125856_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl124676125000_
                                            '0))))
                                    (let ((_tl124773124799_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125855125856_
                                              '1)))
                                          (_target124771124797_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125855125856_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124773124799_))
                                          (___match126104126105_
                                           _e124678124995_
                                           _hd124677124998_
                                           _tl124676125000_
                                           ___splice125855125856_
                                           _target124771124797_
                                           _tl124773124799_)
                                          (let ()
                                            (declare (not safe))
                                            (_g124669124784_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124669124784_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl124676125000_))
                          (let ((___splice125855125856_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl124676125000_
                                    '0))))
                            (let ((_tl124773124799_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice125855125856_ '1)))
                                  (_target124771124797_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice125855125856_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124773124799_))
                                  (___match126104126105_
                                   _e124678124995_
                                   _hd124677124998_
                                   _tl124676125000_
                                   ___splice125855125856_
                                   _target124771124797_
                                   _tl124773124799_)
                                  (let ()
                                    (declare (not safe))
                                    (_g124669124784_)))))
                          (let () (declare (not safe)) (_g124669124784_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl124676125000_))
                  (let ((___splice125855125856_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl124676125000_ '0))))
                    (let ((_tl124773124799_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125855125856_ '1)))
                          (_target124771124797_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125855125856_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl124773124799_))
                          (___match126104126105_
                           _e124678124995_
                           _hd124677124998_
                           _tl124676125000_
                           ___splice125855125856_
                           _target124771124797_
                           _tl124773124799_)
                          (let () (declare (not safe)) (_g124669124784_)))))
                  (let () (declare (not safe)) (_g124669124784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl124676125000_))
                                                      (let ((___splice125855125856_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl124676125000_ '0))))
                (let ((_tl124773124799_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125855125856_ '1)))
                      (_target124771124797_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125855125856_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl124773124799_))
                      (___match126104126105_
                       _e124678124995_
                       _hd124677124998_
                       _tl124676125000_
                       ___splice125855125856_
                       _target124771124797_
                       _tl124773124799_)
                      (let () (declare (not safe)) (_g124669124784_)))))
              (let () (declare (not safe)) (_g124669124784_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124676125000_))
                                              (let ((___splice125855125856_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124676125000_
                                                        '0))))
                                                (let ((_tl124773124799_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125855125856_
                                                          '1)))
                                                      (_target124771124797_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125855125856_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124773124799_))
                                                      (___match126104126105_
                                                       _e124678124995_
                                                       _hd124677124998_
                                                       _tl124676125000_
                                                       ___splice125855125856_
                                                       _target124771124797_
                                                       _tl124773124799_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124669124784_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124669124784_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl124676125000_))
                                          (let ((___splice125855125856_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl124676125000_
                                                    '0))))
                                            (let ((_tl124773124799_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125855125856_
                                                      '1)))
                                                  (_target124771124797_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125855125856_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124773124799_))
                                                  (___match126104126105_
                                                   _e124678124995_
                                                   _hd124677124998_
                                                   _tl124676125000_
                                                   ___splice125855125856_
                                                   _target124771124797_
                                                   _tl124773124799_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124669124784_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g124669124784_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124676125000_))
                                      (let ((___splice125855125856_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124676125000_
                                                '0))))
                                        (let ((_tl124773124799_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125855125856_
                                                  '1)))
                                              (_target124771124797_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125855125856_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124773124799_))
                                              (___match126104126105_
                                               _e124678124995_
                                               _hd124677124998_
                                               _tl124676125000_
                                               ___splice125855125856_
                                               _target124771124797_
                                               _tl124773124799_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124669124784_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124669124784_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl124676125000_))
                              (let ((___splice125855125856_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl124676125000_
                                        '0))))
                                (let ((_tl124773124799_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125855125856_
                                          '1)))
                                      (_target124771124797_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125855125856_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124773124799_))
                                      (___match126104126105_
                                       _e124678124995_
                                       _hd124677124998_
                                       _tl124676125000_
                                       ___splice125855125856_
                                       _target124771124797_
                                       _tl124773124799_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124669124784_)))))
                              (let ()
                                (declare (not safe))
                                (_g124669124784_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124676125000_))
                      (let ((___splice125855125856_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124676125000_ '0))))
                        (let ((_tl124773124799_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125855125856_ '1)))
                              (_target124771124797_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125855125856_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124773124799_))
                              (___match126104126105_
                               _e124678124995_
                               _hd124677124998_
                               _tl124676125000_
                               ___splice125855125856_
                               _target124771124797_
                               _tl124773124799_)
                              (let ()
                                (declare (not safe))
                                (_g124669124784_)))))
                      (let () (declare (not safe)) (_g124669124784_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl124676125000_))
                  (let ((___splice125855125856_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl124676125000_ '0))))
                    (let ((_tl124773124799_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125855125856_ '1)))
                          (_target124771124797_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125855125856_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl124773124799_))
                          (___match126104126105_
                           _e124678124995_
                           _hd124677124998_
                           _tl124676125000_
                           ___splice125855125856_
                           _target124771124797_
                           _tl124773124799_)
                          (let () (declare (not safe)) (_g124669124784_)))))
                  (let () (declare (not safe)) (_g124669124784_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124676125000_))
                                                  (let ((___splice125855125856_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124676125000_
                                                            '0))))
                                                    (let ((_tl124773124799_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125855125856_
                                                              '1)))
                                                          (_target124771124797_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125855125856_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124773124799_))
                                                          (___match126104126105_
                                                           _e124678124995_
                                                           _hd124677124998_
                                                           _tl124676125000_
                                                           ___splice125855125856_
                                                           _target124771124797_
                                                           _tl124773124799_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124669124784_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124669124784_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124676125000_))
                                              (let ((___splice125855125856_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124676125000_
                                                        '0))))
                                                (let ((_tl124773124799_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125855125856_
                                                          '1)))
                                                      (_target124771124797_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125855125856_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124773124799_))
                                                      (___match126104126105_
                                                       _e124678124995_
                                                       _hd124677124998_
                                                       _tl124676125000_
                                                       ___splice125855125856_
                                                       _target124771124797_
                                                       _tl124773124799_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124669124784_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124669124784_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl124676125000_))
                                          (let ((___splice125855125856_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl124676125000_
                                                    '0))))
                                            (let ((_tl124773124799_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125855125856_
                                                      '1)))
                                                  (_target124771124797_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125855125856_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124773124799_))
                                                  (___match126104126105_
                                                   _e124678124995_
                                                   _hd124677124998_
                                                   _tl124676125000_
                                                   ___splice125855125856_
                                                   _target124771124797_
                                                   _tl124773124799_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124669124784_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g124669124784_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl124676125000_))
                                  (let ((___splice125855125856_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl124676125000_
                                            '0))))
                                    (let ((_tl124773124799_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125855125856_
                                              '1)))
                                          (_target124771124797_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125855125856_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124773124799_))
                                          (___match126104126105_
                                           _e124678124995_
                                           _hd124677124998_
                                           _tl124676125000_
                                           ___splice125855125856_
                                           _target124771124797_
                                           _tl124773124799_)
                                          (let ()
                                            (declare (not safe))
                                            (_g124669124784_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124669124784_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl124676125000_))
                          (let ((___splice125855125856_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl124676125000_
                                    '0))))
                            (let ((_tl124773124799_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice125855125856_ '1)))
                                  (_target124771124797_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice125855125856_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124773124799_))
                                  (___match126104126105_
                                   _e124678124995_
                                   _hd124677124998_
                                   _tl124676125000_
                                   ___splice125855125856_
                                   _target124771124797_
                                   _tl124773124799_)
                                  (let ()
                                    (declare (not safe))
                                    (_g124669124784_)))))
                          (let () (declare (not safe)) (_g124669124784_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124676125000_))
                      (let ((___splice125855125856_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124676125000_ '0))))
                        (let ((_tl124773124799_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125855125856_ '1)))
                              (_target124771124797_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125855125856_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124773124799_))
                              (___match126104126105_
                               _e124678124995_
                               _hd124677124998_
                               _tl124676125000_
                               ___splice125855125856_
                               _target124771124797_
                               _tl124773124799_)
                              (let ()
                                (declare (not safe))
                                (_g124669124784_)))))
                      (let () (declare (not safe)) (_g124669124784_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl124676125000_))
                                                      (let ((___splice125855125856_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl124676125000_ '0))))
                (let ((_tl124773124799_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125855125856_ '1)))
                      (_target124771124797_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125855125856_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl124773124799_))
                      (___match126104126105_
                       _e124678124995_
                       _hd124677124998_
                       _tl124676125000_
                       ___splice125855125856_
                       _target124771124797_
                       _tl124773124799_)
                      (let () (declare (not safe)) (_g124669124784_)))))
              (let () (declare (not safe)) (_g124669124784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124676125000_))
                                                  (let ((___splice125855125856_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124676125000_
                                                            '0))))
                                                    (let ((_tl124773124799_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125855125856_
                                                              '1)))
                                                          (_target124771124797_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125855125856_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124773124799_))
                                                          (___match126104126105_
                                                           _e124678124995_
                                                           _hd124677124998_
                                                           _tl124676125000_
                                                           ___splice125855125856_
                                                           _target124771124797_
                                                           _tl124773124799_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124669124784_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124669124784_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124676125000_))
                                              (let ((___splice125855125856_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124676125000_
                                                        '0))))
                                                (let ((_tl124773124799_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125855125856_
                                                          '1)))
                                                      (_target124771124797_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125855125856_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124773124799_))
                                                      (___match126104126105_
                                                       _e124678124995_
                                                       _hd124677124998_
                                                       _tl124676125000_
                                                       ___splice125855125856_
                                                       _target124771124797_
                                                       _tl124773124799_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124669124784_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124669124784_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124676125000_))
                                      (let ((___splice125855125856_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124676125000_
                                                '0))))
                                        (let ((_tl124773124799_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125855125856_
                                                  '1)))
                                              (_target124771124797_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125855125856_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124773124799_))
                                              (___match126104126105_
                                               _e124678124995_
                                               _hd124677124998_
                                               _tl124676125000_
                                               ___splice125855125856_
                                               _target124771124797_
                                               _tl124773124799_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124669124784_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124669124784_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl124676125000_))
                              (let ((___splice125855125856_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl124676125000_
                                        '0))))
                                (let ((_tl124773124799_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125855125856_
                                          '1)))
                                      (_target124771124797_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125855125856_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124773124799_))
                                      (___match126104126105_
                                       _e124678124995_
                                       _hd124677124998_
                                       _tl124676125000_
                                       ___splice125855125856_
                                       _target124771124797_
                                       _tl124773124799_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124669124784_)))))
                              (let ()
                                (declare (not safe))
                                (_g124669124784_))))))
                  (let () (declare (not safe)) (_g124669124784_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx124605_)
        (let* ((___stx126107126108_ _stx124605_)
               (_g124608124621_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126107126108_)))))
          (let ((___kont126109126110_
                 (lambda (_L124649_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L124649_))))
                (___kont126111126112_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126107126108_))
                (let ((_e124613124633_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126107126108_))))
                  (let ((_tl124611124638_
                         (let () (declare (not safe)) (##cdr _e124613124633_)))
                        (_hd124612124636_
                         (let ()
                           (declare (not safe))
                           (##car _e124613124633_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124611124638_))
                        (let ((_e124616124641_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124611124638_))))
                          (let ((_tl124614124646_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124616124641_)))
                                (_hd124615124644_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124616124641_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124614124646_))
                                (___kont126109126110_ _hd124615124644_)
                                (___kont126111126112_))))
                        (___kont126111126112_))))
                (___kont126111126112_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx124485_)
        (let* ((_g124487124504_
                (lambda (_g124488124501_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124488124501_))))
               (_g124486124602_
                (lambda (_g124488124507_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124488124507_))
                      (let ((_e124493124509_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124488124507_))))
                        (let ((_hd124492124512_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124493124509_)))
                              (_tl124491124514_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124493124509_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124491124514_))
                              (let ((_e124496124517_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124491124514_))))
                                (let ((_hd124495124520_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124496124517_)))
                                      (_tl124494124522_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124496124517_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124494124522_))
                                      (let ((_e124499124525_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124494124522_))))
                                        (let ((_hd124498124528_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124499124525_)))
                                              (_tl124497124530_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124499124525_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124497124530_))
                                              ((lambda (_L124533_ _L124534_)
                                                 (let* ((___stx126129126130_
                                                         _L124534_)
                                                        (_g124550124561_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx126129126130_)))))
                                                   (let ((___kont126131126132_
                                                          (lambda (_L124581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L124582_)
                    (let ((_$e124594_
                           (let ((__tmp127854
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L124582_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp127854))))
                      (if _$e124594_
                          ((lambda (_type-e124597_)
                             (_type-e124597_ _stx124485_ _L124534_))
                           _$e124594_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L124533_))))))
                 (___kont126133126134_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L124533_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match126140126141_
                                                            (lambda (_e124556124573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd124555124576_
                             _tl124554124578_)
                      (let ((_L124581_ _tl124554124578_)
                            (_L124582_ _hd124555124576_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L124582_))
                            (___kont126131126132_ _L124581_ _L124582_)
                            (___kont126133126134_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx126129126130_))
                   (let ((_e124556124573_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx126129126130_))))
                     (let ((_tl124554124578_
                            (let ()
                              (declare (not safe))
                              (##cdr _e124556124573_)))
                           (_hd124555124576_
                            (let ()
                              (declare (not safe))
                              (##car _e124556124573_))))
                       (___match126140126141_
                        _e124556124573_
                        _hd124555124576_
                        _tl124554124578_)))
                   (___kont126133126134_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd124498124528_
                                               _hd124495124520_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124487124504_
                                                 _g124488124507_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124487124504_ _g124488124507_)))))
                              (let ()
                                (declare (not safe))
                                (_g124487124504_ _g124488124507_)))))
                      (let ()
                        (declare (not safe))
                        (_g124487124504_ _g124488124507_))))))
          (declare (not safe))
          (_g124486124602_ _stx124485_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx124329_ _ann124330_)
        (let* ((_g124332124369_
                (lambda (_g124333124366_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124333124366_))))
               (_g124331124482_
                (lambda (_g124333124372_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124333124372_))
                      (let ((_e124343124374_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124333124372_))))
                        (let ((_hd124342124377_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124343124374_)))
                              (_tl124341124379_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124343124374_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124341124379_))
                              (let ((_e124346124382_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124341124379_))))
                                (let ((_hd124345124385_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124346124382_)))
                                      (_tl124344124387_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124346124382_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124344124387_))
                                      (let ((_e124349124390_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124344124387_))))
                                        (let ((_hd124348124393_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124349124390_)))
                                              (_tl124347124395_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124349124390_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124347124395_))
                                              (let ((_e124352124398_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124347124395_))))
                                                (let ((_hd124351124401_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124352124398_)))
                                                      (_tl124350124403_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124352124398_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124350124403_))
                                                      (let ((_e124355124406_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124350124403_))))
                (let ((_hd124354124409_
                       (let () (declare (not safe)) (##car _e124355124406_)))
                      (_tl124353124411_
                       (let () (declare (not safe)) (##cdr _e124355124406_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl124353124411_))
                      (let ((_e124358124414_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124353124411_))))
                        (let ((_hd124357124417_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124358124414_)))
                              (_tl124356124419_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124358124414_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124356124419_))
                              (let ((_e124361124422_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124356124419_))))
                                (let ((_hd124360124425_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124361124422_)))
                                      (_tl124359124427_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124361124422_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124359124427_))
                                      (let ((_e124364124430_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124359124427_))))
                                        (let ((_hd124363124433_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124364124430_)))
                                              (_tl124362124435_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124364124430_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124362124435_))
                                              ((lambda (_L124438_
                                                        _L124439_
                                                        _L124440_
                                                        _L124441_
                                                        _L124442_
                                                        _L124443_
                                                        _L124444_)
                                                 (let ((_type-id124474_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124444_)))
                                                       (_super124475_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L124443_)))
                                                       (_slots124476_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L124442_)))
                                                       (_ctor-method124477_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124441_)))
                                                       (_struct?124478_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124440_)))
                                                       (_final?124479_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124439_)))
                                                       (_metaclass124480_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L124438_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L124438_))
                                                            '#f)))
                                                   (let ((__obj127812
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
                                                      __obj127812
                                                      _type-id124474_
                                                      _super124475_
                                                      _slots124476_
                                                      _ctor-method124477_
                                                      _struct?124478_
                                                      _final?124479_
                                                      _metaclass124480_)
                                                     __obj127812)))
                                               _hd124363124433_
                                               _hd124360124425_
                                               _hd124357124417_
                                               _hd124354124409_
                                               _hd124351124401_
                                               _hd124348124393_
                                               _hd124345124385_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124332124369_
                                                 _g124333124372_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124332124369_ _g124333124372_)))))
                              (let ()
                                (declare (not safe))
                                (_g124332124369_ _g124333124372_)))))
                      (let ()
                        (declare (not safe))
                        (_g124332124369_ _g124333124372_)))))
              (let ()
                (declare (not safe))
                (_g124332124369_ _g124333124372_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g124332124369_
                                                 _g124333124372_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124332124369_ _g124333124372_)))))
                              (let ()
                                (declare (not safe))
                                (_g124332124369_ _g124333124372_)))))
                      (let ()
                        (declare (not safe))
                        (_g124332124369_ _g124333124372_))))))
          (declare (not safe))
          (_g124331124482_ _ann124330_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx124277_ _ann124278_)
        (let* ((_g124280124293_
                (lambda (_g124281124290_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124281124290_))))
               (_g124279124326_
                (lambda (_g124281124296_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124281124296_))
                      (let ((_e124285124298_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124281124296_))))
                        (let ((_hd124284124301_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124285124298_)))
                              (_tl124283124303_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124285124298_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124283124303_))
                              (let ((_e124288124306_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124283124303_))))
                                (let ((_hd124287124309_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124288124306_)))
                                      (_tl124286124311_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124288124306_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124286124311_))
                                      ((lambda (_L124314_)
                                         (let ((__tmp127855
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124314_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp127855)))
                                       _hd124287124309_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124280124293_ _g124281124296_)))))
                              (let ()
                                (declare (not safe))
                                (_g124280124293_ _g124281124296_)))))
                      (let ()
                        (declare (not safe))
                        (_g124280124293_ _g124281124296_))))))
          (declare (not safe))
          (_g124279124326_ _ann124278_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx124225_ _ann124226_)
        (let* ((_g124228124241_
                (lambda (_g124229124238_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124229124238_))))
               (_g124227124274_
                (lambda (_g124229124244_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124229124244_))
                      (let ((_e124233124246_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124229124244_))))
                        (let ((_hd124232124249_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124233124246_)))
                              (_tl124231124251_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124233124246_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124231124251_))
                              (let ((_e124236124254_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124231124251_))))
                                (let ((_hd124235124257_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124236124254_)))
                                      (_tl124234124259_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124236124254_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124234124259_))
                                      ((lambda (_L124262_)
                                         (let ((__tmp127856
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124262_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp127856)))
                                       _hd124235124257_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124228124241_ _g124229124244_)))))
                              (let ()
                                (declare (not safe))
                                (_g124228124241_ _g124229124244_)))))
                      (let ()
                        (declare (not safe))
                        (_g124228124241_ _g124229124244_))))))
          (declare (not safe))
          (_g124227124274_ _ann124226_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx124141_ _ann124142_)
        (let* ((_g124144124165_
                (lambda (_g124145124162_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124145124162_))))
               (_g124143124222_
                (lambda (_g124145124168_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124145124168_))
                      (let ((_e124151124170_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124145124168_))))
                        (let ((_hd124150124173_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124151124170_)))
                              (_tl124149124175_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124151124170_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124149124175_))
                              (let ((_e124154124178_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124149124175_))))
                                (let ((_hd124153124181_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124154124178_)))
                                      (_tl124152124183_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124154124178_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124152124183_))
                                      (let ((_e124157124186_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124152124183_))))
                                        (let ((_hd124156124189_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124157124186_)))
                                              (_tl124155124191_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124157124186_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124155124191_))
                                              (let ((_e124160124194_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124155124191_))))
                                                (let ((_hd124159124197_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124160124194_)))
                                                      (_tl124158124199_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124160124194_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124158124199_))
                                                      ((lambda (_L124202_
                                                                _L124203_
                                                                _L124204_)
                                                         (let ((__tmp127859
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L124204_)))
                       (__tmp127858
                        (let () (declare (not safe)) (gx#stx-e _L124203_)))
                       (__tmp127857
                        (let () (declare (not safe)) (gx#stx-e _L124202_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp127859
                    __tmp127858
                    __tmp127857)))
               _hd124159124197_
               _hd124156124189_
               _hd124153124181_)
              (let ()
                (declare (not safe))
                (_g124144124165_ _g124145124168_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g124144124165_
                                                 _g124145124168_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124144124165_ _g124145124168_)))))
                              (let ()
                                (declare (not safe))
                                (_g124144124165_ _g124145124168_)))))
                      (let ()
                        (declare (not safe))
                        (_g124144124165_ _g124145124168_))))))
          (declare (not safe))
          (_g124143124222_ _ann124142_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx124057_ _ann124058_)
        (let* ((_g124060124081_
                (lambda (_g124061124078_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124061124078_))))
               (_g124059124138_
                (lambda (_g124061124084_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124061124084_))
                      (let ((_e124067124086_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124061124084_))))
                        (let ((_hd124066124089_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124067124086_)))
                              (_tl124065124091_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124067124086_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124065124091_))
                              (let ((_e124070124094_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124065124091_))))
                                (let ((_hd124069124097_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124070124094_)))
                                      (_tl124068124099_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124070124094_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124068124099_))
                                      (let ((_e124073124102_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124068124099_))))
                                        (let ((_hd124072124105_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124073124102_)))
                                              (_tl124071124107_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124073124102_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124071124107_))
                                              (let ((_e124076124110_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124071124107_))))
                                                (let ((_hd124075124113_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124076124110_)))
                                                      (_tl124074124115_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124076124110_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124074124115_))
                                                      ((lambda (_L124118_
                                                                _L124119_
                                                                _L124120_)
                                                         (let ((__tmp127862
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L124120_)))
                       (__tmp127861
                        (let () (declare (not safe)) (gx#stx-e _L124119_)))
                       (__tmp127860
                        (let () (declare (not safe)) (gx#stx-e _L124118_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp127862
                    __tmp127861
                    __tmp127860)))
               _hd124075124113_
               _hd124072124105_
               _hd124069124097_)
              (let ()
                (declare (not safe))
                (_g124060124081_ _g124061124084_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g124060124081_
                                                 _g124061124084_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124060124081_ _g124061124084_)))))
                              (let ()
                                (declare (not safe))
                                (_g124060124081_ _g124061124084_)))))
                      (let ()
                        (declare (not safe))
                        (_g124060124081_ _g124061124084_))))))
          (declare (not safe))
          (_g124059124138_ _ann124058_))))
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
      (lambda (_stx123177_)
        (let* ((___stx126143126144_ _stx123177_)
               (_g123183123379_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126143126144_)))))
          (let ((___kont126145126146_
                 (lambda (_L124045_)
                   (let ((__obj127813
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj127813
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L124045_))
                      '#f)
                     __obj127813)))
                (___kont126147126148_
                 (lambda (_L123972_
                          _L123973_
                          _L123974_
                          _L123975_
                          _L123976_
                          _L123977_)
                   (let* ((_tab124027_
                           (let () (declare (not safe)) (gx#stx-e _L123974_)))
                          (_keys124029_
                           (if _tab124027_
                               (let ((__tmp127863 (vector->list _tab124027_)))
                                 (declare (not safe))
                                 (filter values __tmp127863))
                               '#f)))
                     (let ((__tmp127864
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L123973_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys124029_
                        __tmp127864)))))
                (___kont126149126150_
                 (lambda (_L123705_
                          _L123706_
                          _L123707_
                          _L123708_
                          _L123709_
                          _L123710_
                          _L123711_
                          _L123712_
                          _L123713_
                          _L123714_)
                   (let ((__tmp127866
                          (map gx#stx-e
                               (let ((__tmp127867
                                      (lambda (_g123807123810_ _g123808123812_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g123807123810_
                                                _g123808123812_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp127867 '() _L123707_))))
                         (__tmp127865
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L123711_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp127866
                      __tmp127865))))
                (___kont126153126154_
                 (lambda (_L123415_)
                   (let ((__obj127814
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj127814
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123415_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L123415_)))
                     __obj127814)))
                (___kont126155126156_
                 (lambda (_L123392_)
                   (let ((__obj127815
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj127815
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123392_))
                      '#f)
                     __obj127815))))
            (let* ((___match126462126463_
                    (lambda (_e123370123407_ _hd123369123410_ _tl123368123412_)
                      (let ((_L123415_ _tl123368123412_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L123415_))
                            (___kont126153126154_ _L123415_)
                            (___kont126155126156_ _tl123368123412_)))))
                   (___match126456126457_
                    (lambda (_e123264123429_
                             _hd123263123432_
                             _tl123262123434_
                             _e123267123437_
                             _hd123266123440_
                             _tl123265123442_
                             _e123270123445_
                             _hd123269123448_
                             _tl123268123450_
                             _e123273123453_
                             _hd123272123456_
                             _tl123271123458_
                             _e123276123461_
                             _hd123275123464_
                             _tl123274123466_
                             _e123279123469_
                             _hd123278123472_
                             _tl123277123474_
                             _e123282123477_
                             _hd123281123480_
                             _tl123280123482_
                             _e123285123485_
                             _hd123284123488_
                             _tl123283123490_
                             _e123288123493_
                             _hd123287123496_
                             _tl123286123498_
                             _e123291123501_
                             _hd123290123504_
                             _tl123289123506_
                             _e123294123509_
                             _hd123293123512_
                             _tl123292123514_
                             _e123297123517_
                             _hd123296123520_
                             _tl123295123522_
                             _e123300123525_
                             _hd123299123528_
                             _tl123298123530_
                             _e123303123533_
                             _hd123302123536_
                             _tl123301123538_
                             ___splice126151126152_
                             _target123304123541_
                             _tl123306123543_
                             _e123321123546_
                             _hd123320123549_
                             _tl123319123551_
                             _e123324123554_
                             _hd123323123557_
                             _tl123322123559_
                             _e123327123562_
                             _hd123326123565_
                             _tl123325123567_)
                      (letrec ((_loop123307123570_
                                (lambda (_hd123305123573_
                                         _-absent-value123311123575_
                                         _key123312123577_
                                         _-xkwvar123313123579_
                                         _-hash-ref123314123581_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123305123573_))
                                      (let ((_e123308123584_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123305123573_))))
                                        (let ((_lp-tl123310123589_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123308123584_)))
                                              (_lp-hd123309123587_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123308123584_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd123309123587_))
                                              (let ((_e123330123592_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd123309123587_))))
                                                (let ((_tl123328123597_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123330123592_)))
                                                      (_hd123329123595_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123330123592_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd123329123595_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd123329123595_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl123328123597_))
                      (let ((_e123333123600_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl123328123597_))))
                        (let ((_tl123331123605_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123333123600_)))
                              (_hd123332123603_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123333123600_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd123332123603_))
                              (let ((_e123336123608_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd123332123603_))))
                                (let ((_tl123334123613_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123336123608_)))
                                      (_hd123335123611_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123336123608_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd123335123611_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd123335123611_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123334123613_))
                                              (let ((_e123339123616_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123334123613_))))
                                                (let ((_tl123337123621_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123339123616_)))
                                                      (_hd123338123619_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123339123616_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123337123621_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123331123605_))
                                                          (let ((_e123342123624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123331123605_))))
                    (let ((_tl123340123629_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123342123624_)))
                          (_hd123341123627_
                           (let ()
                             (declare (not safe))
                             (##car _e123342123624_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123341123627_))
                          (let ((_e123345123632_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123341123627_))))
                            (let ((_tl123343123637_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123345123632_)))
                                  (_hd123344123635_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123345123632_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123344123635_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123344123635_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123343123637_))
                                          (let ((_e123348123640_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123343123637_))))
                                            (let ((_tl123346123645_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123348123640_)))
                                                  (_hd123347123643_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123348123640_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123346123645_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123340123629_))
                                                      (let ((_e123351123648_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123340123629_))))
                (let ((_tl123349123653_
                       (let () (declare (not safe)) (##cdr _e123351123648_)))
                      (_hd123350123651_
                       (let () (declare (not safe)) (##car _e123351123648_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123350123651_))
                      (let ((_e123354123656_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123350123651_))))
                        (let ((_tl123352123661_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123354123656_)))
                              (_hd123353123659_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123354123656_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123353123659_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd123353123659_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123352123661_))
                                      (let ((_e123357123664_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123352123661_))))
                                        (let ((_tl123355123669_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123357123664_)))
                                              (_hd123356123667_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123357123664_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123355123669_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123349123653_))
                                                  (let ((_e123360123672_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123349123653_))))
                                                    (let ((_tl123358123677_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123360123672_)))
                                                          (_hd123359123675_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123360123672_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123359123675_))
                                                          (let ((_e123363123680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123359123675_))))
                    (let ((_tl123361123685_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123363123680_)))
                          (_hd123362123683_
                           (let ()
                             (declare (not safe))
                             (##car _e123363123680_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123362123683_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123362123683_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123361123685_))
                                  (let ((_e123366123688_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123361123685_))))
                                    (let ((_tl123364123693_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123366123688_)))
                                          (_hd123365123691_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123366123688_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123364123693_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123358123677_))
                                              (let ((__tmp127882
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123365123691_
                                                             _-absent-value123311123575_)))
                                                    (__tmp127881
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123356123667_
                                                             _key123312123577_)))
                                                    (__tmp127880
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123347123643_
                                                             _-xkwvar123313123579_)))
                                                    (__tmp127879
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123338123619_
                                                             _-hash-ref123314123581_))))
                                                (declare (not safe))
                                                (_loop123307123570_
                                                 _lp-tl123310123589_
                                                 __tmp127882
                                                 __tmp127881
                                                 __tmp127880
                                                 __tmp127879))
                                              (___match126462126463_
                                               _e123264123429_
                                               _hd123263123432_
                                               _tl123262123434_))
                                          (___match126462126463_
                                           _e123264123429_
                                           _hd123263123432_
                                           _tl123262123434_))))
                                  (___match126462126463_
                                   _e123264123429_
                                   _hd123263123432_
                                   _tl123262123434_))
                              (___match126462126463_
                               _e123264123429_
                               _hd123263123432_
                               _tl123262123434_))
                          (___match126462126463_
                           _e123264123429_
                           _hd123263123432_
                           _tl123262123434_))))
                  (___match126462126463_
                   _e123264123429_
                   _hd123263123432_
                   _tl123262123434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126462126463_
                                                   _e123264123429_
                                                   _hd123263123432_
                                                   _tl123262123434_))
                                              (___match126462126463_
                                               _e123264123429_
                                               _hd123263123432_
                                               _tl123262123434_))))
                                      (___match126462126463_
                                       _e123264123429_
                                       _hd123263123432_
                                       _tl123262123434_))
                                  (___match126462126463_
                                   _e123264123429_
                                   _hd123263123432_
                                   _tl123262123434_))
                              (___match126462126463_
                               _e123264123429_
                               _hd123263123432_
                               _tl123262123434_))))
                      (___match126462126463_
                       _e123264123429_
                       _hd123263123432_
                       _tl123262123434_))))
              (___match126462126463_
               _e123264123429_
               _hd123263123432_
               _tl123262123434_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126462126463_
                                                   _e123264123429_
                                                   _hd123263123432_
                                                   _tl123262123434_))))
                                          (___match126462126463_
                                           _e123264123429_
                                           _hd123263123432_
                                           _tl123262123434_))
                                      (___match126462126463_
                                       _e123264123429_
                                       _hd123263123432_
                                       _tl123262123434_))
                                  (___match126462126463_
                                   _e123264123429_
                                   _hd123263123432_
                                   _tl123262123434_))))
                          (___match126462126463_
                           _e123264123429_
                           _hd123263123432_
                           _tl123262123434_))))
                  (___match126462126463_
                   _e123264123429_
                   _hd123263123432_
                   _tl123262123434_))
              (___match126462126463_
               _e123264123429_
               _hd123263123432_
               _tl123262123434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126462126463_
                                               _e123264123429_
                                               _hd123263123432_
                                               _tl123262123434_))
                                          (___match126462126463_
                                           _e123264123429_
                                           _hd123263123432_
                                           _tl123262123434_))
                                      (___match126462126463_
                                       _e123264123429_
                                       _hd123263123432_
                                       _tl123262123434_))))
                              (___match126462126463_
                               _e123264123429_
                               _hd123263123432_
                               _tl123262123434_))))
                      (___match126462126463_
                       _e123264123429_
                       _hd123263123432_
                       _tl123262123434_))
                  (___match126462126463_
                   _e123264123429_
                   _hd123263123432_
                   _tl123262123434_))
              (___match126462126463_
               _e123264123429_
               _hd123263123432_
               _tl123262123434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126462126463_
                                               _e123264123429_
                                               _hd123263123432_
                                               _tl123262123434_))))
                                      (let ((_-hash-ref123318123702_
                                             (reverse _-hash-ref123314123581_))
                                            (_-xkwvar123317123700_
                                             (reverse _-xkwvar123313123579_))
                                            (_key123316123698_
                                             (reverse _key123312123577_))
                                            (_-absent-value123315123696_
                                             (reverse _-absent-value123311123575_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123271123458_))
                                            (let ((_L123705_ _hd123326123565_)
                                                  (_L123706_
                                                   _-absent-value123315123696_)
                                                  (_L123707_ _key123316123698_)
                                                  (_L123708_
                                                   _-xkwvar123317123700_)
                                                  (_L123709_
                                                   _-hash-ref123318123702_)
                                                  (_L123710_ _hd123302123536_)
                                                  (_L123711_ _hd123293123512_)
                                                  (_L123712_ _hd123284123488_)
                                                  (_L123713_ _tl123268123450_)
                                                  (_L123714_ _hd123269123448_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L123714_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L123713_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L123712_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L123714_
                                                          _L123710_))
                                                       (let ((__tmp127877
                                                              (let ((__tmp127878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g123767123770_ _g123768123772_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123767123770_ _g123768123772_)))))
                        (declare (not safe))
                        (foldr1 __tmp127878 '() _L123707_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp127877))
               (let ((__tmp127876
                      (lambda (_g123774123776_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g123774123776_
                           'hash-ref))))
                     (__tmp127874
                      (let ((__tmp127875
                             (lambda (_g123778123781_ _g123779123783_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123778123781_ _g123779123783_)))))
                        (declare (not safe))
                        (foldr1 __tmp127875 '() _L123709_))))
                 (declare (not safe))
                 (andmap1 __tmp127876 __tmp127874))
               (let ((__tmp127873
                      (lambda (_g123785123787_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g123785123787_
                           'absent-value))))
                     (__tmp127871
                      (let ((__tmp127872
                             (lambda (_g123789123792_ _g123790123794_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123789123792_ _g123790123794_)))))
                        (declare (not safe))
                        (foldr1 __tmp127872 '() _L123706_))))
                 (declare (not safe))
                 (andmap1 __tmp127873 __tmp127871))
               (let ((__tmp127870
                      (lambda (_g123796123798_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g123796123798_ _L123714_))))
                     (__tmp127868
                      (let ((__tmp127869
                             (lambda (_g123800123803_ _g123801123805_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123800123803_ _g123801123805_)))))
                        (declare (not safe))
                        (foldr1 __tmp127869 '() _L123708_))))
                 (declare (not safe))
                 (andmap1 __tmp127870 __tmp127868)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126149126150_
                                                   _L123705_
                                                   _L123706_
                                                   _L123707_
                                                   _L123708_
                                                   _L123709_
                                                   _L123710_
                                                   _L123711_
                                                   _L123712_
                                                   _L123713_
                                                   _L123714_)
                                                  (___match126462126463_
                                                   _e123264123429_
                                                   _hd123263123432_
                                                   _tl123262123434_)))
                                            (___match126462126463_
                                             _e123264123429_
                                             _hd123263123432_
                                             _tl123262123434_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123307123570_
                           _target123304123541_
                           '()
                           '()
                           '()
                           '())))))
                   (___match126328126329_
                    (lambda (_e123264123429_
                             _hd123263123432_
                             _tl123262123434_
                             _e123267123437_
                             _hd123266123440_
                             _tl123265123442_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123266123440_))
                          (let ((_e123270123445_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123266123440_))))
                            (let ((_tl123268123450_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123270123445_)))
                                  (_hd123269123448_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123270123445_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123265123442_))
                                  (let ((_e123273123453_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123265123442_))))
                                    (let ((_tl123271123458_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123273123453_)))
                                          (_hd123272123456_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123273123453_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd123272123456_))
                                          (let ((_e123276123461_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd123272123456_))))
                                            (let ((_tl123274123466_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123276123461_)))
                                                  (_hd123275123464_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123276123461_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd123275123464_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd123275123464_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123274123466_))
                                                          (let ((_e123279123469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123274123466_))))
                    (let ((_tl123277123474_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123279123469_)))
                          (_hd123278123472_
                           (let ()
                             (declare (not safe))
                             (##car _e123279123469_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123278123472_))
                          (let ((_e123282123477_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123278123472_))))
                            (let ((_tl123280123482_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123282123477_)))
                                  (_hd123281123480_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123282123477_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123281123480_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123281123480_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123280123482_))
                                          (let ((_e123285123485_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123280123482_))))
                                            (let ((_tl123283123490_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123285123485_)))
                                                  (_hd123284123488_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123285123485_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123283123490_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123277123474_))
                                                      (let ((_e123288123493_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123277123474_))))
                (let ((_tl123286123498_
                       (let () (declare (not safe)) (##cdr _e123288123493_)))
                      (_hd123287123496_
                       (let () (declare (not safe)) (##car _e123288123493_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123287123496_))
                      (let ((_e123291123501_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123287123496_))))
                        (let ((_tl123289123506_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123291123501_)))
                              (_hd123290123504_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123291123501_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123290123504_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123290123504_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123289123506_))
                                      (let ((_e123294123509_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123289123506_))))
                                        (let ((_tl123292123514_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123294123509_)))
                                              (_hd123293123512_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123294123509_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123292123514_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123286123498_))
                                                  (let ((_e123297123517_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123286123498_))))
                                                    (let ((_tl123295123522_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123297123517_)))
                                                          (_hd123296123520_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123297123517_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123296123520_))
                                                          (let ((_e123300123525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123296123520_))))
                    (let ((_tl123298123530_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123300123525_)))
                          (_hd123299123528_
                           (let ()
                             (declare (not safe))
                             (##car _e123300123525_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123299123528_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123299123528_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123298123530_))
                                  (let ((_e123303123533_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123298123530_))))
                                    (let ((_tl123301123538_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123303123533_)))
                                          (_hd123302123536_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123303123533_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123301123538_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl123295123522_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl123295123522_))
                                                        '1)
                                                  (let ((___splice126151126152_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl123295123522_
                                                            '1))))
                                                    (let ((_tl123306123543_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126151126152_
                                                              '1)))
                                                          (_target123304123541_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126151126152_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123306123543_))
                                                          (let ((_e123321123546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123306123543_))))
                    (let ((_tl123319123551_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123321123546_)))
                          (_hd123320123549_
                           (let ()
                             (declare (not safe))
                             (##car _e123321123546_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123320123549_))
                          (let ((_e123324123554_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123320123549_))))
                            (let ((_tl123322123559_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123324123554_)))
                                  (_hd123323123557_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123324123554_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123323123557_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123323123557_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123322123559_))
                                          (let ((_e123327123562_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123322123559_))))
                                            (let ((_tl123325123567_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123327123562_)))
                                                  (_hd123326123565_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123327123562_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123325123567_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123319123551_))
                                                      (___match126456126457_
                                                       _e123264123429_
                                                       _hd123263123432_
                                                       _tl123262123434_
                                                       _e123267123437_
                                                       _hd123266123440_
                                                       _tl123265123442_
                                                       _e123270123445_
                                                       _hd123269123448_
                                                       _tl123268123450_
                                                       _e123273123453_
                                                       _hd123272123456_
                                                       _tl123271123458_
                                                       _e123276123461_
                                                       _hd123275123464_
                                                       _tl123274123466_
                                                       _e123279123469_
                                                       _hd123278123472_
                                                       _tl123277123474_
                                                       _e123282123477_
                                                       _hd123281123480_
                                                       _tl123280123482_
                                                       _e123285123485_
                                                       _hd123284123488_
                                                       _tl123283123490_
                                                       _e123288123493_
                                                       _hd123287123496_
                                                       _tl123286123498_
                                                       _e123291123501_
                                                       _hd123290123504_
                                                       _tl123289123506_
                                                       _e123294123509_
                                                       _hd123293123512_
                                                       _tl123292123514_
                                                       _e123297123517_
                                                       _hd123296123520_
                                                       _tl123295123522_
                                                       _e123300123525_
                                                       _hd123299123528_
                                                       _tl123298123530_
                                                       _e123303123533_
                                                       _hd123302123536_
                                                       _tl123301123538_
                                                       ___splice126151126152_
                                                       _target123304123541_
                                                       _tl123306123543_
                                                       _e123321123546_
                                                       _hd123320123549_
                                                       _tl123319123551_
                                                       _e123324123554_
                                                       _hd123323123557_
                                                       _tl123322123559_
                                                       _e123327123562_
                                                       _hd123326123565_
                                                       _tl123325123567_)
                                                      (___match126462126463_
                                                       _e123264123429_
                                                       _hd123263123432_
                                                       _tl123262123434_))
                                                  (___match126462126463_
                                                   _e123264123429_
                                                   _hd123263123432_
                                                   _tl123262123434_))))
                                          (___match126462126463_
                                           _e123264123429_
                                           _hd123263123432_
                                           _tl123262123434_))
                                      (___match126462126463_
                                       _e123264123429_
                                       _hd123263123432_
                                       _tl123262123434_))
                                  (___match126462126463_
                                   _e123264123429_
                                   _hd123263123432_
                                   _tl123262123434_))))
                          (___match126462126463_
                           _e123264123429_
                           _hd123263123432_
                           _tl123262123434_))))
                  (___match126462126463_
                   _e123264123429_
                   _hd123263123432_
                   _tl123262123434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126462126463_
                                                   _e123264123429_
                                                   _hd123263123432_
                                                   _tl123262123434_))
                                              (___match126462126463_
                                               _e123264123429_
                                               _hd123263123432_
                                               _tl123262123434_))
                                          (___match126462126463_
                                           _e123264123429_
                                           _hd123263123432_
                                           _tl123262123434_))))
                                  (___match126462126463_
                                   _e123264123429_
                                   _hd123263123432_
                                   _tl123262123434_))
                              (___match126462126463_
                               _e123264123429_
                               _hd123263123432_
                               _tl123262123434_))
                          (___match126462126463_
                           _e123264123429_
                           _hd123263123432_
                           _tl123262123434_))))
                  (___match126462126463_
                   _e123264123429_
                   _hd123263123432_
                   _tl123262123434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126462126463_
                                                   _e123264123429_
                                                   _hd123263123432_
                                                   _tl123262123434_))
                                              (___match126462126463_
                                               _e123264123429_
                                               _hd123263123432_
                                               _tl123262123434_))))
                                      (___match126462126463_
                                       _e123264123429_
                                       _hd123263123432_
                                       _tl123262123434_))
                                  (___match126462126463_
                                   _e123264123429_
                                   _hd123263123432_
                                   _tl123262123434_))
                              (___match126462126463_
                               _e123264123429_
                               _hd123263123432_
                               _tl123262123434_))))
                      (___match126462126463_
                       _e123264123429_
                       _hd123263123432_
                       _tl123262123434_))))
              (___match126462126463_
               _e123264123429_
               _hd123263123432_
               _tl123262123434_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126462126463_
                                                   _e123264123429_
                                                   _hd123263123432_
                                                   _tl123262123434_))))
                                          (___match126462126463_
                                           _e123264123429_
                                           _hd123263123432_
                                           _tl123262123434_))
                                      (___match126462126463_
                                       _e123264123429_
                                       _hd123263123432_
                                       _tl123262123434_))
                                  (___match126462126463_
                                   _e123264123429_
                                   _hd123263123432_
                                   _tl123262123434_))))
                          (___match126462126463_
                           _e123264123429_
                           _hd123263123432_
                           _tl123262123434_))))
                  (___match126462126463_
                   _e123264123429_
                   _hd123263123432_
                   _tl123262123434_))
              (___match126462126463_
               _e123264123429_
               _hd123263123432_
               _tl123262123434_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126462126463_
                                                   _e123264123429_
                                                   _hd123263123432_
                                                   _tl123262123434_))))
                                          (___match126462126463_
                                           _e123264123429_
                                           _hd123263123432_
                                           _tl123262123434_))))
                                  (___match126462126463_
                                   _e123264123429_
                                   _hd123263123432_
                                   _tl123262123434_))))
                          (___match126462126463_
                           _e123264123429_
                           _hd123263123432_
                           _tl123262123434_))))
                   (___match126316126317_
                    (lambda (_e123197123820_
                             _hd123196123823_
                             _tl123195123825_
                             _e123200123828_
                             _hd123199123831_
                             _tl123198123833_
                             _e123203123836_
                             _hd123202123839_
                             _tl123201123841_
                             _e123206123844_
                             _hd123205123847_
                             _tl123204123849_
                             _e123209123852_
                             _hd123208123855_
                             _tl123207123857_
                             _e123212123860_
                             _hd123211123863_
                             _tl123210123865_
                             _e123215123868_
                             _hd123214123871_
                             _tl123213123873_
                             _e123218123876_
                             _hd123217123879_
                             _tl123216123881_
                             _e123221123884_
                             _hd123220123887_
                             _tl123219123889_
                             _e123224123892_
                             _hd123223123895_
                             _tl123222123897_
                             _e123227123900_
                             _hd123226123903_
                             _tl123225123905_
                             _e123230123908_
                             _hd123229123911_
                             _tl123228123913_
                             _e123233123916_
                             _hd123232123919_
                             _tl123231123921_
                             _e123236123924_
                             _hd123235123927_
                             _tl123234123929_
                             _e123239123932_
                             _hd123238123935_
                             _tl123237123937_
                             _e123242123940_
                             _hd123241123943_
                             _tl123240123945_
                             _e123245123948_
                             _hd123244123951_
                             _tl123243123953_
                             _e123248123956_
                             _hd123247123959_
                             _tl123246123961_
                             _e123251123964_
                             _hd123250123967_
                             _tl123249123969_)
                      (let ((_L123972_ _hd123250123967_)
                            (_L123973_ _hd123241123943_)
                            (_L123974_ _hd123232123919_)
                            (_L123975_ _hd123223123895_)
                            (_L123976_ _hd123214123871_)
                            (_L123977_ _hd123199123831_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L123977_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L123976_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L123975_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L123977_ _L123972_)))
                            (___kont126147126148_
                             _L123972_
                             _L123973_
                             _L123974_
                             _L123975_
                             _L123976_
                             _L123977_)
                            (___match126328126329_
                             _e123197123820_
                             _hd123196123823_
                             _tl123195123825_
                             _e123200123828_
                             _hd123199123831_
                             _tl123198123833_)))))
                   (___match126170126171_
                    (lambda (_e123197123820_ _hd123196123823_ _tl123195123825_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123195123825_))
                          (let ((_e123200123828_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123195123825_))))
                            (let ((_tl123198123833_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123200123828_)))
                                  (_hd123199123831_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123200123828_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123198123833_))
                                  (let ((_e123203123836_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123198123833_))))
                                    (let ((_tl123201123841_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123203123836_)))
                                          (_hd123202123839_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123203123836_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd123202123839_))
                                          (let ((_e123206123844_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd123202123839_))))
                                            (let ((_tl123204123849_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123206123844_)))
                                                  (_hd123205123847_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123206123844_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd123205123847_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd123205123847_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123204123849_))
                                                          (let ((_e123209123852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123204123849_))))
                    (let ((_tl123207123857_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123209123852_)))
                          (_hd123208123855_
                           (let ()
                             (declare (not safe))
                             (##car _e123209123852_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123208123855_))
                          (let ((_e123212123860_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123208123855_))))
                            (let ((_tl123210123865_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123212123860_)))
                                  (_hd123211123863_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123212123860_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123211123863_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123211123863_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123210123865_))
                                          (let ((_e123215123868_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123210123865_))))
                                            (let ((_tl123213123873_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123215123868_)))
                                                  (_hd123214123871_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123215123868_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123213123873_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123207123857_))
                                                      (let ((_e123218123876_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123207123857_))))
                (let ((_tl123216123881_
                       (let () (declare (not safe)) (##cdr _e123218123876_)))
                      (_hd123217123879_
                       (let () (declare (not safe)) (##car _e123218123876_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123217123879_))
                      (let ((_e123221123884_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123217123879_))))
                        (let ((_tl123219123889_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123221123884_)))
                              (_hd123220123887_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123221123884_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123220123887_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123220123887_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123219123889_))
                                      (let ((_e123224123892_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123219123889_))))
                                        (let ((_tl123222123897_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123224123892_)))
                                              (_hd123223123895_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123224123892_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123222123897_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123216123881_))
                                                  (let ((_e123227123900_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123216123881_))))
                                                    (let ((_tl123225123905_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123227123900_)))
                                                          (_hd123226123903_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123227123900_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123226123903_))
                                                          (let ((_e123230123908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123226123903_))))
                    (let ((_tl123228123913_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123230123908_)))
                          (_hd123229123911_
                           (let ()
                             (declare (not safe))
                             (##car _e123230123908_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123229123911_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd123229123911_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123228123913_))
                                  (let ((_e123233123916_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123228123913_))))
                                    (let ((_tl123231123921_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123233123916_)))
                                          (_hd123232123919_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123233123916_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123231123921_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123225123905_))
                                              (let ((_e123236123924_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123225123905_))))
                                                (let ((_tl123234123929_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123236123924_)))
                                                      (_hd123235123927_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123236123924_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd123235123927_))
                                                      (let ((_e123239123932_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd123235123927_))))
                (let ((_tl123237123937_
                       (let () (declare (not safe)) (##cdr _e123239123932_)))
                      (_hd123238123935_
                       (let () (declare (not safe)) (##car _e123239123932_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd123238123935_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd123238123935_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123237123937_))
                              (let ((_e123242123940_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123237123937_))))
                                (let ((_tl123240123945_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123242123940_)))
                                      (_hd123241123943_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123242123940_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123240123945_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123234123929_))
                                          (let ((_e123245123948_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123234123929_))))
                                            (let ((_tl123243123953_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123245123948_)))
                                                  (_hd123244123951_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123245123948_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd123244123951_))
                                                  (let ((_e123248123956_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd123244123951_))))
                                                    (let ((_tl123246123961_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123248123956_)))
                                                          (_hd123247123959_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123248123956_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd123247123959_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd123247123959_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123246123961_))
                          (let ((_e123251123964_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123246123961_))))
                            (let ((_tl123249123969_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123251123964_)))
                                  (_hd123250123967_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123251123964_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123249123969_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123243123953_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123201123841_))
                                          (___match126316126317_
                                           _e123197123820_
                                           _hd123196123823_
                                           _tl123195123825_
                                           _e123200123828_
                                           _hd123199123831_
                                           _tl123198123833_
                                           _e123203123836_
                                           _hd123202123839_
                                           _tl123201123841_
                                           _e123206123844_
                                           _hd123205123847_
                                           _tl123204123849_
                                           _e123209123852_
                                           _hd123208123855_
                                           _tl123207123857_
                                           _e123212123860_
                                           _hd123211123863_
                                           _tl123210123865_
                                           _e123215123868_
                                           _hd123214123871_
                                           _tl123213123873_
                                           _e123218123876_
                                           _hd123217123879_
                                           _tl123216123881_
                                           _e123221123884_
                                           _hd123220123887_
                                           _tl123219123889_
                                           _e123224123892_
                                           _hd123223123895_
                                           _tl123222123897_
                                           _e123227123900_
                                           _hd123226123903_
                                           _tl123225123905_
                                           _e123230123908_
                                           _hd123229123911_
                                           _tl123228123913_
                                           _e123233123916_
                                           _hd123232123919_
                                           _tl123231123921_
                                           _e123236123924_
                                           _hd123235123927_
                                           _tl123234123929_
                                           _e123239123932_
                                           _hd123238123935_
                                           _tl123237123937_
                                           _e123242123940_
                                           _hd123241123943_
                                           _tl123240123945_
                                           _e123245123948_
                                           _hd123244123951_
                                           _tl123243123953_
                                           _e123248123956_
                                           _hd123247123959_
                                           _tl123246123961_
                                           _e123251123964_
                                           _hd123250123967_
                                           _tl123249123969_)
                                          (___match126328126329_
                                           _e123197123820_
                                           _hd123196123823_
                                           _tl123195123825_
                                           _e123200123828_
                                           _hd123199123831_
                                           _tl123198123833_))
                                      (___match126328126329_
                                       _e123197123820_
                                       _hd123196123823_
                                       _tl123195123825_
                                       _e123200123828_
                                       _hd123199123831_
                                       _tl123198123833_))
                                  (___match126328126329_
                                   _e123197123820_
                                   _hd123196123823_
                                   _tl123195123825_
                                   _e123200123828_
                                   _hd123199123831_
                                   _tl123198123833_))))
                          (___match126328126329_
                           _e123197123820_
                           _hd123196123823_
                           _tl123195123825_
                           _e123200123828_
                           _hd123199123831_
                           _tl123198123833_))
                      (___match126328126329_
                       _e123197123820_
                       _hd123196123823_
                       _tl123195123825_
                       _e123200123828_
                       _hd123199123831_
                       _tl123198123833_))
                  (___match126328126329_
                   _e123197123820_
                   _hd123196123823_
                   _tl123195123825_
                   _e123200123828_
                   _hd123199123831_
                   _tl123198123833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126328126329_
                                                   _e123197123820_
                                                   _hd123196123823_
                                                   _tl123195123825_
                                                   _e123200123828_
                                                   _hd123199123831_
                                                   _tl123198123833_))))
                                          (___match126328126329_
                                           _e123197123820_
                                           _hd123196123823_
                                           _tl123195123825_
                                           _e123200123828_
                                           _hd123199123831_
                                           _tl123198123833_))
                                      (___match126328126329_
                                       _e123197123820_
                                       _hd123196123823_
                                       _tl123195123825_
                                       _e123200123828_
                                       _hd123199123831_
                                       _tl123198123833_))))
                              (___match126328126329_
                               _e123197123820_
                               _hd123196123823_
                               _tl123195123825_
                               _e123200123828_
                               _hd123199123831_
                               _tl123198123833_))
                          (___match126328126329_
                           _e123197123820_
                           _hd123196123823_
                           _tl123195123825_
                           _e123200123828_
                           _hd123199123831_
                           _tl123198123833_))
                      (___match126328126329_
                       _e123197123820_
                       _hd123196123823_
                       _tl123195123825_
                       _e123200123828_
                       _hd123199123831_
                       _tl123198123833_))))
              (___match126328126329_
               _e123197123820_
               _hd123196123823_
               _tl123195123825_
               _e123200123828_
               _hd123199123831_
               _tl123198123833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126328126329_
                                               _e123197123820_
                                               _hd123196123823_
                                               _tl123195123825_
                                               _e123200123828_
                                               _hd123199123831_
                                               _tl123198123833_))
                                          (___match126328126329_
                                           _e123197123820_
                                           _hd123196123823_
                                           _tl123195123825_
                                           _e123200123828_
                                           _hd123199123831_
                                           _tl123198123833_))))
                                  (___match126328126329_
                                   _e123197123820_
                                   _hd123196123823_
                                   _tl123195123825_
                                   _e123200123828_
                                   _hd123199123831_
                                   _tl123198123833_))
                              (___match126328126329_
                               _e123197123820_
                               _hd123196123823_
                               _tl123195123825_
                               _e123200123828_
                               _hd123199123831_
                               _tl123198123833_))
                          (___match126328126329_
                           _e123197123820_
                           _hd123196123823_
                           _tl123195123825_
                           _e123200123828_
                           _hd123199123831_
                           _tl123198123833_))))
                  (___match126328126329_
                   _e123197123820_
                   _hd123196123823_
                   _tl123195123825_
                   _e123200123828_
                   _hd123199123831_
                   _tl123198123833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126328126329_
                                                   _e123197123820_
                                                   _hd123196123823_
                                                   _tl123195123825_
                                                   _e123200123828_
                                                   _hd123199123831_
                                                   _tl123198123833_))
                                              (___match126328126329_
                                               _e123197123820_
                                               _hd123196123823_
                                               _tl123195123825_
                                               _e123200123828_
                                               _hd123199123831_
                                               _tl123198123833_))))
                                      (___match126328126329_
                                       _e123197123820_
                                       _hd123196123823_
                                       _tl123195123825_
                                       _e123200123828_
                                       _hd123199123831_
                                       _tl123198123833_))
                                  (___match126328126329_
                                   _e123197123820_
                                   _hd123196123823_
                                   _tl123195123825_
                                   _e123200123828_
                                   _hd123199123831_
                                   _tl123198123833_))
                              (___match126328126329_
                               _e123197123820_
                               _hd123196123823_
                               _tl123195123825_
                               _e123200123828_
                               _hd123199123831_
                               _tl123198123833_))))
                      (___match126328126329_
                       _e123197123820_
                       _hd123196123823_
                       _tl123195123825_
                       _e123200123828_
                       _hd123199123831_
                       _tl123198123833_))))
              (___match126328126329_
               _e123197123820_
               _hd123196123823_
               _tl123195123825_
               _e123200123828_
               _hd123199123831_
               _tl123198123833_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126328126329_
                                                   _e123197123820_
                                                   _hd123196123823_
                                                   _tl123195123825_
                                                   _e123200123828_
                                                   _hd123199123831_
                                                   _tl123198123833_))))
                                          (___match126328126329_
                                           _e123197123820_
                                           _hd123196123823_
                                           _tl123195123825_
                                           _e123200123828_
                                           _hd123199123831_
                                           _tl123198123833_))
                                      (___match126328126329_
                                       _e123197123820_
                                       _hd123196123823_
                                       _tl123195123825_
                                       _e123200123828_
                                       _hd123199123831_
                                       _tl123198123833_))
                                  (___match126328126329_
                                   _e123197123820_
                                   _hd123196123823_
                                   _tl123195123825_
                                   _e123200123828_
                                   _hd123199123831_
                                   _tl123198123833_))))
                          (___match126328126329_
                           _e123197123820_
                           _hd123196123823_
                           _tl123195123825_
                           _e123200123828_
                           _hd123199123831_
                           _tl123198123833_))))
                  (___match126328126329_
                   _e123197123820_
                   _hd123196123823_
                   _tl123195123825_
                   _e123200123828_
                   _hd123199123831_
                   _tl123198123833_))
              (___match126328126329_
               _e123197123820_
               _hd123196123823_
               _tl123195123825_
               _e123200123828_
               _hd123199123831_
               _tl123198123833_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126328126329_
                                                   _e123197123820_
                                                   _hd123196123823_
                                                   _tl123195123825_
                                                   _e123200123828_
                                                   _hd123199123831_
                                                   _tl123198123833_))))
                                          (___match126328126329_
                                           _e123197123820_
                                           _hd123196123823_
                                           _tl123195123825_
                                           _e123200123828_
                                           _hd123199123831_
                                           _tl123198123833_))))
                                  (___match126328126329_
                                   _e123197123820_
                                   _hd123196123823_
                                   _tl123195123825_
                                   _e123200123828_
                                   _hd123199123831_
                                   _tl123198123833_))))
                          (___match126462126463_
                           _e123197123820_
                           _hd123196123823_
                           _tl123195123825_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126143126144_))
                  (let ((_e123188124037_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126143126144_))))
                    (let ((_tl123186124042_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123188124037_)))
                          (_hd123187124040_
                           (let ()
                             (declare (not safe))
                             (##car _e123188124037_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L124045_ _tl123186124042_))
                            (___kont126145126146_ _L124045_))
                          (___match126170126171_
                           _e123188124037_
                           _hd123187124040_
                           _tl123186124042_))))
                  (let () (declare (not safe)) (_g123183123379_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx123132_)
        (letrec ((_clause-e123134_
                  (lambda (_form123175_)
                    (let ((__obj127816
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
                       __obj127816
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form123175_))
                       (if (let ((__tmp127883
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp127883))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form123175_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form123175_))
                               '#f)
                           '#f))
                      __obj127816))))
          (let* ((_g123136123146_
                  (lambda (_g123137123143_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g123137123143_))))
                 (_g123135123172_
                  (lambda (_g123137123149_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g123137123149_))
                        (let ((_e123141123151_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g123137123149_))))
                          (let ((_hd123140123154_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123141123151_)))
                                (_tl123139123156_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123141123151_))))
                            ((lambda (_L123159_)
                               (let ((_clauses123170_
                                      (map _clause-e123134_ _L123159_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses123170_)))
                             _tl123139123156_)))
                        (let ()
                          (declare (not safe))
                          (_g123136123146_ _g123137123149_))))))
            (declare (not safe))
            (_g123135123172_ _stx123132_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx123064_)
        (let* ((_g123066123083_
                (lambda (_g123067123080_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123067123080_))))
               (_g123065123129_
                (lambda (_g123067123086_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123067123086_))
                      (let ((_e123072123088_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123067123086_))))
                        (let ((_hd123071123091_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123072123088_)))
                              (_tl123070123093_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123072123088_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123070123093_))
                              (let ((_e123075123096_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123070123093_))))
                                (let ((_hd123074123099_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123075123096_)))
                                      (_tl123073123101_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123075123096_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123073123101_))
                                      (let ((_e123078123104_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123073123101_))))
                                        (let ((_hd123077123107_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123078123104_)))
                                              (_tl123076123109_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123078123104_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123076123109_))
                                              ((lambda (_L123112_ _L123113_)
                                                 (let ((__tmp127884
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L123112_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp127884
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd123077123107_
                                               _hd123074123099_)
                                              (let ()
                                                (declare (not safe))
                                                (_g123066123083_
                                                 _g123067123086_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g123066123083_ _g123067123086_)))))
                              (let ()
                                (declare (not safe))
                                (_g123066123083_ _g123067123086_)))))
                      (let ()
                        (declare (not safe))
                        (_g123066123083_ _g123067123086_))))))
          (declare (not safe))
          (_g123065123129_ _stx123064_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx122969_)
        (let* ((___stx126471126472_ _stx122969_)
               (_g122972122992_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126471126472_)))))
          (let ((___kont126473126474_
                 (lambda (_L123036_ _L123037_)
                   (let ((_type-e123054123056_
                          (let ((__tmp127885
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L123037_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp127885))))
                     (if _type-e123054123056_
                         (let ((_type-e123059_ _type-e123054123056_))
                           (_type-e123059_ _stx122969_ _L123036_))
                         '#f))))
                (___kont126475126476_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126471126472_))
                (let ((_e122978123004_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126471126472_))))
                  (let ((_tl122976123009_
                         (let () (declare (not safe)) (##cdr _e122978123004_)))
                        (_hd122977123007_
                         (let ()
                           (declare (not safe))
                           (##car _e122978123004_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122976123009_))
                        (let ((_e122981123012_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122976123009_))))
                          (let ((_tl122979123017_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122981123012_)))
                                (_hd122980123015_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122981123012_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122980123015_))
                                (let ((_e122984123020_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122980123015_))))
                                  (let ((_tl122982123025_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122984123020_)))
                                        (_hd122983123023_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122984123020_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122983123023_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122983123023_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122982123025_))
                                                (let ((_e122987123028_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122982123025_))))
                                                  (let ((_tl122985123033_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122987123028_)))
                                                        (_hd122986123031_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122987123028_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122985123033_))
                                                        (___kont126473126474_
                                                         _tl122979123017_
                                                         _hd122986123031_)
                                                        (___kont126475126476_))))
                                                (___kont126475126476_))
                                            (___kont126475126476_))
                                        (___kont126475126476_))))
                                (___kont126475126476_))))
                        (___kont126475126476_))))
                (___kont126475126476_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx122918_)
        (let* ((_g122920122933_
                (lambda (_g122921122930_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122921122930_))))
               (_g122919122966_
                (lambda (_g122921122936_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122921122936_))
                      (let ((_e122925122938_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122921122936_))))
                        (let ((_hd122924122941_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122925122938_)))
                              (_tl122923122943_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122925122938_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122923122943_))
                              (let ((_e122928122946_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122923122943_))))
                                (let ((_hd122927122949_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122928122946_)))
                                      (_tl122926122951_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122928122946_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122926122951_))
                                      ((lambda (_L122954_)
                                         (let ((__tmp127886
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L122954_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp127886)))
                                       _hd122927122949_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122920122933_ _g122921122936_)))))
                              (let ()
                                (declare (not safe))
                                (_g122920122933_ _g122921122936_)))))
                      (let ()
                        (declare (not safe))
                        (_g122920122933_ _g122921122936_))))))
          (declare (not safe))
          (_g122919122966_ _stx122918_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form122152_)
        (let* ((___stx126509126510_ _form122152_)
               (_g122157122314_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126509126510_)))))
          (let ((___kont126511126512_
                 (lambda (_L122838_ _L122839_ _L122840_) '#t))
                (___kont126517126518_
                 (lambda (_L122626_
                          _L122627_
                          _L122628_
                          _L122629_
                          _L122630_
                          _L122631_)
                   '#t))
                (___kont126523126524_
                 (lambda (_L122422_ _L122423_ _L122424_ _L122425_) '#t))
                (___kont126525126526_ (lambda () '#f)))
            (let* ((___match126650126651_
                    (lambda (_e122276122326_
                             _hd122275122329_
                             _tl122274122331_
                             _e122279122334_
                             _hd122278122337_
                             _tl122277122339_
                             _e122282122342_
                             _hd122281122345_
                             _tl122280122347_
                             _e122285122350_
                             _hd122284122353_
                             _tl122283122355_
                             _e122288122358_
                             _hd122287122361_
                             _tl122286122363_
                             _e122291122366_
                             _hd122290122369_
                             _tl122289122371_
                             _e122294122374_
                             _hd122293122377_
                             _tl122292122379_
                             _e122297122382_
                             _hd122296122385_
                             _tl122295122387_
                             _e122300122390_
                             _hd122299122393_
                             _tl122298122395_
                             _e122303122398_
                             _hd122302122401_
                             _tl122301122403_
                             _e122306122406_
                             _hd122305122409_
                             _tl122304122411_
                             _e122309122414_
                             _hd122308122417_
                             _tl122307122419_)
                      (let ((_L122422_ _hd122308122417_)
                            (_L122423_ _hd122299122393_)
                            (_L122424_ _hd122290122369_)
                            (_L122425_ _hd122275122329_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L122425_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L122424_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L122425_ _L122422_))
                                 (let ((__tmp127887
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L122423_
                                           _L122425_))))
                                   (declare (not safe))
                                   (not __tmp127887)))
                            (___kont126523126524_
                             _L122422_
                             _L122423_
                             _L122424_
                             _L122425_)
                            (___kont126525126526_)))))
                   (___match126622126623_
                    (lambda (_e122276122326_
                             _hd122275122329_
                             _tl122274122331_
                             _e122279122334_
                             _hd122278122337_
                             _tl122277122339_
                             _e122282122342_
                             _hd122281122345_
                             _tl122280122347_
                             _e122285122350_
                             _hd122284122353_
                             _tl122283122355_
                             _e122288122358_
                             _hd122287122361_
                             _tl122286122363_
                             _e122291122366_
                             _hd122290122369_
                             _tl122289122371_
                             _e122294122374_
                             _hd122293122377_
                             _tl122292122379_
                             _e122297122382_
                             _hd122296122385_
                             _tl122295122387_
                             _e122300122390_
                             _hd122299122393_
                             _tl122298122395_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122292122379_))
                          (let ((_e122303122398_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122292122379_))))
                            (let ((_tl122301122403_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122303122398_)))
                                  (_hd122302122401_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122303122398_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd122302122401_))
                                  (let ((_e122306122406_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd122302122401_))))
                                    (let ((_tl122304122411_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122306122406_)))
                                          (_hd122305122409_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122306122406_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd122305122409_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd122305122409_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122304122411_))
                                                  (let ((_e122309122414_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122304122411_))))
                                                    (let ((_tl122307122419_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122309122414_)))
                                                          (_hd122308122417_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122309122414_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122307122419_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl122301122403_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl122277122339_))
                          (___match126650126651_
                           _e122276122326_
                           _hd122275122329_
                           _tl122274122331_
                           _e122279122334_
                           _hd122278122337_
                           _tl122277122339_
                           _e122282122342_
                           _hd122281122345_
                           _tl122280122347_
                           _e122285122350_
                           _hd122284122353_
                           _tl122283122355_
                           _e122288122358_
                           _hd122287122361_
                           _tl122286122363_
                           _e122291122366_
                           _hd122290122369_
                           _tl122289122371_
                           _e122294122374_
                           _hd122293122377_
                           _tl122292122379_
                           _e122297122382_
                           _hd122296122385_
                           _tl122295122387_
                           _e122300122390_
                           _hd122299122393_
                           _tl122298122395_
                           _e122303122398_
                           _hd122302122401_
                           _tl122301122403_
                           _e122306122406_
                           _hd122305122409_
                           _tl122304122411_
                           _e122309122414_
                           _hd122308122417_
                           _tl122307122419_)
                          (___kont126525126526_))
                      (___kont126525126526_))
                  (___kont126525126526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126525126526_))
                                              (___kont126525126526_))
                                          (___kont126525126526_))))
                                  (___kont126525126526_))))
                          (___kont126525126526_))))
                   (___match126552126553_
                    (lambda (_e122212122466_
                             _hd122211122469_
                             _tl122210122471_
                             ___splice126519126520_
                             _target122213122474_
                             _tl122215122476_)
                      (letrec ((_loop122216122479_
                                (lambda (_hd122214122482_ _arg122220122484_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122214122482_))
                                      (let ((_e122217122487_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122214122482_))))
                                        (let ((_lp-tl122219122492_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122217122487_)))
                                              (_lp-hd122218122490_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122217122487_))))
                                          (let ((__tmp127902
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122218122490_
                                                         _arg122220122484_))))
                                            (declare (not safe))
                                            (_loop122216122479_
                                             _lp-tl122219122492_
                                             __tmp127902))))
                                      (let ((_arg122221122495_
                                             (reverse _arg122220122484_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122210122471_))
                                            (let ((_e122224122498_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122210122471_))))
                                              (let ((_tl122222122503_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122224122498_)))
                                                    (_hd122223122501_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122224122498_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122223122501_))
                                                    (let ((_e122227122506_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122223122501_))))
                                                      (let ((_tl122225122511_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122227122506_)))
                    (_hd122226122509_
                     (let () (declare (not safe)) (##car _e122227122506_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122226122509_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122226122509_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122225122511_))
                            (let ((_e122230122514_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122225122511_))))
                              (let ((_tl122228122519_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122230122514_)))
                                    (_hd122229122517_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122230122514_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122229122517_))
                                    (let ((_e122233122522_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122229122517_))))
                                      (let ((_tl122231122527_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122233122522_)))
                                            (_hd122232122525_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122233122522_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122232122525_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122232122525_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122231122527_))
                                                    (let ((_e122236122530_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122231122527_))))
                                                      (let ((_tl122234122535_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122236122530_)))
                    (_hd122235122533_
                     (let () (declare (not safe)) (##car _e122236122530_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122234122535_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122228122519_))
                        (let ((_e122239122538_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122228122519_))))
                          (let ((_tl122237122543_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122239122538_)))
                                (_hd122238122541_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122239122538_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122238122541_))
                                (let ((_e122242122546_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122238122541_))))
                                  (let ((_tl122240122551_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122242122546_)))
                                        (_hd122241122549_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122242122546_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122241122549_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122241122549_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122240122551_))
                                                (let ((_e122245122554_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122240122551_))))
                                                  (let ((_tl122243122559_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122245122554_)))
                                                        (_hd122244122557_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122245122554_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122243122559_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl122237122543_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl122237122543_))
                              '1)
                        (let ((___splice126521126522_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122237122543_
                                  '1))))
                          (let ((_tl122248122564_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126521126522_ '1)))
                                (_target122246122562_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126521126522_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122248122564_))
                                (let ((_e122257122567_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122248122564_))))
                                  (let ((_tl122255122572_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122257122567_)))
                                        (_hd122256122570_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122257122567_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122256122570_))
                                        (let ((_e122260122575_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122256122570_))))
                                          (let ((_tl122258122580_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122260122575_)))
                                                (_hd122259122578_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122260122575_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd122259122578_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd122259122578_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl122258122580_))
                                                        (let ((_e122263122583_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl122258122580_))))
                  (let ((_tl122261122588_
                         (let () (declare (not safe)) (##cdr _e122263122583_)))
                        (_hd122262122586_
                         (let ()
                           (declare (not safe))
                           (##car _e122263122583_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122261122588_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl122255122572_))
                            (letrec ((_loop122249122591_
                                      (lambda (_hd122247122594_
                                               _xarg122253122596_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd122247122594_))
                                            (let ((_e122250122599_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd122247122594_))))
                                              (let ((_lp-tl122252122604_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122250122599_)))
                                                    (_lp-hd122251122602_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122250122599_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd122251122602_))
                                                    (let ((_e122266122607_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd122251122602_))))
                                                      (let ((_tl122264122612_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122266122607_)))
                    (_hd122265122610_
                     (let () (declare (not safe)) (##car _e122266122607_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122265122610_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd122265122610_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122264122612_))
                            (let ((_e122269122615_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122264122612_))))
                              (let ((_tl122267122620_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122269122615_)))
                                    (_hd122268122618_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122269122615_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122267122620_))
                                    (let ((__tmp127901
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd122268122618_
                                                   _xarg122253122596_))))
                                      (declare (not safe))
                                      (_loop122249122591_
                                       _lp-tl122252122604_
                                       __tmp127901))
                                    (___match126622126623_
                                     _e122212122466_
                                     _hd122211122469_
                                     _tl122210122471_
                                     _e122224122498_
                                     _hd122223122501_
                                     _tl122222122503_
                                     _e122227122506_
                                     _hd122226122509_
                                     _tl122225122511_
                                     _e122230122514_
                                     _hd122229122517_
                                     _tl122228122519_
                                     _e122233122522_
                                     _hd122232122525_
                                     _tl122231122527_
                                     _e122236122530_
                                     _hd122235122533_
                                     _tl122234122535_
                                     _e122239122538_
                                     _hd122238122541_
                                     _tl122237122543_
                                     _e122242122546_
                                     _hd122241122549_
                                     _tl122240122551_
                                     _e122245122554_
                                     _hd122244122557_
                                     _tl122243122559_))))
                            (___match126622126623_
                             _e122212122466_
                             _hd122211122469_
                             _tl122210122471_
                             _e122224122498_
                             _hd122223122501_
                             _tl122222122503_
                             _e122227122506_
                             _hd122226122509_
                             _tl122225122511_
                             _e122230122514_
                             _hd122229122517_
                             _tl122228122519_
                             _e122233122522_
                             _hd122232122525_
                             _tl122231122527_
                             _e122236122530_
                             _hd122235122533_
                             _tl122234122535_
                             _e122239122538_
                             _hd122238122541_
                             _tl122237122543_
                             _e122242122546_
                             _hd122241122549_
                             _tl122240122551_
                             _e122245122554_
                             _hd122244122557_
                             _tl122243122559_))
                        (___match126622126623_
                         _e122212122466_
                         _hd122211122469_
                         _tl122210122471_
                         _e122224122498_
                         _hd122223122501_
                         _tl122222122503_
                         _e122227122506_
                         _hd122226122509_
                         _tl122225122511_
                         _e122230122514_
                         _hd122229122517_
                         _tl122228122519_
                         _e122233122522_
                         _hd122232122525_
                         _tl122231122527_
                         _e122236122530_
                         _hd122235122533_
                         _tl122234122535_
                         _e122239122538_
                         _hd122238122541_
                         _tl122237122543_
                         _e122242122546_
                         _hd122241122549_
                         _tl122240122551_
                         _e122245122554_
                         _hd122244122557_
                         _tl122243122559_))
                    (___match126622126623_
                     _e122212122466_
                     _hd122211122469_
                     _tl122210122471_
                     _e122224122498_
                     _hd122223122501_
                     _tl122222122503_
                     _e122227122506_
                     _hd122226122509_
                     _tl122225122511_
                     _e122230122514_
                     _hd122229122517_
                     _tl122228122519_
                     _e122233122522_
                     _hd122232122525_
                     _tl122231122527_
                     _e122236122530_
                     _hd122235122533_
                     _tl122234122535_
                     _e122239122538_
                     _hd122238122541_
                     _tl122237122543_
                     _e122242122546_
                     _hd122241122549_
                     _tl122240122551_
                     _e122245122554_
                     _hd122244122557_
                     _tl122243122559_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126622126623_
                                                     _e122212122466_
                                                     _hd122211122469_
                                                     _tl122210122471_
                                                     _e122224122498_
                                                     _hd122223122501_
                                                     _tl122222122503_
                                                     _e122227122506_
                                                     _hd122226122509_
                                                     _tl122225122511_
                                                     _e122230122514_
                                                     _hd122229122517_
                                                     _tl122228122519_
                                                     _e122233122522_
                                                     _hd122232122525_
                                                     _tl122231122527_
                                                     _e122236122530_
                                                     _hd122235122533_
                                                     _tl122234122535_
                                                     _e122239122538_
                                                     _hd122238122541_
                                                     _tl122237122543_
                                                     _e122242122546_
                                                     _hd122241122549_
                                                     _tl122240122551_
                                                     _e122245122554_
                                                     _hd122244122557_
                                                     _tl122243122559_))))
                                            (let ((_xarg122254122623_
                                                   (reverse _xarg122253122596_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl122222122503_))
                                                  (let ((_L122626_
                                                         _hd122262122586_)
                                                        (_L122627_
                                                         _xarg122254122623_)
                                                        (_L122628_
                                                         _hd122244122557_)
                                                        (_L122629_
                                                         _hd122235122533_)
                                                        (_L122630_
                                                         _tl122215122476_)
                                                        (_L122631_
                                                         _arg122221122495_))
                                                    (if (and (let ((__tmp127899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp127900
                                   (lambda (_g122674122677_ _g122675122679_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g122674122677_
                                             _g122675122679_)))))
                              (declare (not safe))
                              (foldr1 __tmp127900 '() _L122631_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp127899))
                     (let () (declare (not safe)) (gx#identifier? _L122630_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L122629_ 'apply))
                     (fx= (length (let ((__tmp127897
                                         (lambda (_g122681122684_
                                                  _g122682122686_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g122681122684_
                                                   _g122682122686_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp127897 '() _L122631_)))
                          (length (let ((__tmp127898
                                         (lambda (_g122688122691_
                                                  _g122689122693_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g122688122691_
                                                   _g122689122693_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp127898 '() _L122627_))))
                     (let ((__tmp127895
                            (let ((__tmp127896
                                   (lambda (_g122695122698_ _g122696122700_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g122695122698_
                                             _g122696122700_)))))
                              (declare (not safe))
                              (foldr1 __tmp127896 '() _L122631_)))
                           (__tmp127893
                            (let ((__tmp127894
                                   (lambda (_g122702122705_ _g122703122707_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g122702122705_
                                             _g122703122707_)))))
                              (declare (not safe))
                              (foldr1 __tmp127894 '() _L122627_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp127895 __tmp127893))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L122630_ _L122626_))
                     (let ((__tmp127888
                            (let ((__tmp127892
                                   (lambda (_g122709122711_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g122709122711_
                                        _L122628_))))
                                  (__tmp127889
                                   (let ((__tmp127891
                                          (lambda (_g122713122716_
                                                   _g122714122718_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g122713122716_
                                                    _g122714122718_))))
                                         (__tmp127890
                                          (let ()
                                            (declare (not safe))
                                            (cons _L122630_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp127891
                                             __tmp127890
                                             _L122631_))))
                              (declare (not safe))
                              (find __tmp127892 __tmp127889))))
                       (declare (not safe))
                       (not __tmp127888)))
                (___kont126517126518_
                 _L122626_
                 _L122627_
                 _L122628_
                 _L122629_
                 _L122630_
                 _L122631_)
                (___match126622126623_
                 _e122212122466_
                 _hd122211122469_
                 _tl122210122471_
                 _e122224122498_
                 _hd122223122501_
                 _tl122222122503_
                 _e122227122506_
                 _hd122226122509_
                 _tl122225122511_
                 _e122230122514_
                 _hd122229122517_
                 _tl122228122519_
                 _e122233122522_
                 _hd122232122525_
                 _tl122231122527_
                 _e122236122530_
                 _hd122235122533_
                 _tl122234122535_
                 _e122239122538_
                 _hd122238122541_
                 _tl122237122543_
                 _e122242122546_
                 _hd122241122549_
                 _tl122240122551_
                 _e122245122554_
                 _hd122244122557_
                 _tl122243122559_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126622126623_
                                                   _e122212122466_
                                                   _hd122211122469_
                                                   _tl122210122471_
                                                   _e122224122498_
                                                   _hd122223122501_
                                                   _tl122222122503_
                                                   _e122227122506_
                                                   _hd122226122509_
                                                   _tl122225122511_
                                                   _e122230122514_
                                                   _hd122229122517_
                                                   _tl122228122519_
                                                   _e122233122522_
                                                   _hd122232122525_
                                                   _tl122231122527_
                                                   _e122236122530_
                                                   _hd122235122533_
                                                   _tl122234122535_
                                                   _e122239122538_
                                                   _hd122238122541_
                                                   _tl122237122543_
                                                   _e122242122546_
                                                   _hd122241122549_
                                                   _tl122240122551_
                                                   _e122245122554_
                                                   _hd122244122557_
                                                   _tl122243122559_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop122249122591_ _target122246122562_ '())))
                            (___match126622126623_
                             _e122212122466_
                             _hd122211122469_
                             _tl122210122471_
                             _e122224122498_
                             _hd122223122501_
                             _tl122222122503_
                             _e122227122506_
                             _hd122226122509_
                             _tl122225122511_
                             _e122230122514_
                             _hd122229122517_
                             _tl122228122519_
                             _e122233122522_
                             _hd122232122525_
                             _tl122231122527_
                             _e122236122530_
                             _hd122235122533_
                             _tl122234122535_
                             _e122239122538_
                             _hd122238122541_
                             _tl122237122543_
                             _e122242122546_
                             _hd122241122549_
                             _tl122240122551_
                             _e122245122554_
                             _hd122244122557_
                             _tl122243122559_))
                        (___match126622126623_
                         _e122212122466_
                         _hd122211122469_
                         _tl122210122471_
                         _e122224122498_
                         _hd122223122501_
                         _tl122222122503_
                         _e122227122506_
                         _hd122226122509_
                         _tl122225122511_
                         _e122230122514_
                         _hd122229122517_
                         _tl122228122519_
                         _e122233122522_
                         _hd122232122525_
                         _tl122231122527_
                         _e122236122530_
                         _hd122235122533_
                         _tl122234122535_
                         _e122239122538_
                         _hd122238122541_
                         _tl122237122543_
                         _e122242122546_
                         _hd122241122549_
                         _tl122240122551_
                         _e122245122554_
                         _hd122244122557_
                         _tl122243122559_))))
                (___match126622126623_
                 _e122212122466_
                 _hd122211122469_
                 _tl122210122471_
                 _e122224122498_
                 _hd122223122501_
                 _tl122222122503_
                 _e122227122506_
                 _hd122226122509_
                 _tl122225122511_
                 _e122230122514_
                 _hd122229122517_
                 _tl122228122519_
                 _e122233122522_
                 _hd122232122525_
                 _tl122231122527_
                 _e122236122530_
                 _hd122235122533_
                 _tl122234122535_
                 _e122239122538_
                 _hd122238122541_
                 _tl122237122543_
                 _e122242122546_
                 _hd122241122549_
                 _tl122240122551_
                 _e122245122554_
                 _hd122244122557_
                 _tl122243122559_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126622126623_
                                                     _e122212122466_
                                                     _hd122211122469_
                                                     _tl122210122471_
                                                     _e122224122498_
                                                     _hd122223122501_
                                                     _tl122222122503_
                                                     _e122227122506_
                                                     _hd122226122509_
                                                     _tl122225122511_
                                                     _e122230122514_
                                                     _hd122229122517_
                                                     _tl122228122519_
                                                     _e122233122522_
                                                     _hd122232122525_
                                                     _tl122231122527_
                                                     _e122236122530_
                                                     _hd122235122533_
                                                     _tl122234122535_
                                                     _e122239122538_
                                                     _hd122238122541_
                                                     _tl122237122543_
                                                     _e122242122546_
                                                     _hd122241122549_
                                                     _tl122240122551_
                                                     _e122245122554_
                                                     _hd122244122557_
                                                     _tl122243122559_))
                                                (___match126622126623_
                                                 _e122212122466_
                                                 _hd122211122469_
                                                 _tl122210122471_
                                                 _e122224122498_
                                                 _hd122223122501_
                                                 _tl122222122503_
                                                 _e122227122506_
                                                 _hd122226122509_
                                                 _tl122225122511_
                                                 _e122230122514_
                                                 _hd122229122517_
                                                 _tl122228122519_
                                                 _e122233122522_
                                                 _hd122232122525_
                                                 _tl122231122527_
                                                 _e122236122530_
                                                 _hd122235122533_
                                                 _tl122234122535_
                                                 _e122239122538_
                                                 _hd122238122541_
                                                 _tl122237122543_
                                                 _e122242122546_
                                                 _hd122241122549_
                                                 _tl122240122551_
                                                 _e122245122554_
                                                 _hd122244122557_
                                                 _tl122243122559_))))
                                        (___match126622126623_
                                         _e122212122466_
                                         _hd122211122469_
                                         _tl122210122471_
                                         _e122224122498_
                                         _hd122223122501_
                                         _tl122222122503_
                                         _e122227122506_
                                         _hd122226122509_
                                         _tl122225122511_
                                         _e122230122514_
                                         _hd122229122517_
                                         _tl122228122519_
                                         _e122233122522_
                                         _hd122232122525_
                                         _tl122231122527_
                                         _e122236122530_
                                         _hd122235122533_
                                         _tl122234122535_
                                         _e122239122538_
                                         _hd122238122541_
                                         _tl122237122543_
                                         _e122242122546_
                                         _hd122241122549_
                                         _tl122240122551_
                                         _e122245122554_
                                         _hd122244122557_
                                         _tl122243122559_))))
                                (___match126622126623_
                                 _e122212122466_
                                 _hd122211122469_
                                 _tl122210122471_
                                 _e122224122498_
                                 _hd122223122501_
                                 _tl122222122503_
                                 _e122227122506_
                                 _hd122226122509_
                                 _tl122225122511_
                                 _e122230122514_
                                 _hd122229122517_
                                 _tl122228122519_
                                 _e122233122522_
                                 _hd122232122525_
                                 _tl122231122527_
                                 _e122236122530_
                                 _hd122235122533_
                                 _tl122234122535_
                                 _e122239122538_
                                 _hd122238122541_
                                 _tl122237122543_
                                 _e122242122546_
                                 _hd122241122549_
                                 _tl122240122551_
                                 _e122245122554_
                                 _hd122244122557_
                                 _tl122243122559_))))
                        (___match126622126623_
                         _e122212122466_
                         _hd122211122469_
                         _tl122210122471_
                         _e122224122498_
                         _hd122223122501_
                         _tl122222122503_
                         _e122227122506_
                         _hd122226122509_
                         _tl122225122511_
                         _e122230122514_
                         _hd122229122517_
                         _tl122228122519_
                         _e122233122522_
                         _hd122232122525_
                         _tl122231122527_
                         _e122236122530_
                         _hd122235122533_
                         _tl122234122535_
                         _e122239122538_
                         _hd122238122541_
                         _tl122237122543_
                         _e122242122546_
                         _hd122241122549_
                         _tl122240122551_
                         _e122245122554_
                         _hd122244122557_
                         _tl122243122559_))
                    (___match126622126623_
                     _e122212122466_
                     _hd122211122469_
                     _tl122210122471_
                     _e122224122498_
                     _hd122223122501_
                     _tl122222122503_
                     _e122227122506_
                     _hd122226122509_
                     _tl122225122511_
                     _e122230122514_
                     _hd122229122517_
                     _tl122228122519_
                     _e122233122522_
                     _hd122232122525_
                     _tl122231122527_
                     _e122236122530_
                     _hd122235122533_
                     _tl122234122535_
                     _e122239122538_
                     _hd122238122541_
                     _tl122237122543_
                     _e122242122546_
                     _hd122241122549_
                     _tl122240122551_
                     _e122245122554_
                     _hd122244122557_
                     _tl122243122559_))
                (___kont126525126526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126525126526_))
                                            (___kont126525126526_))
                                        (___kont126525126526_))))
                                (___kont126525126526_))))
                        (___kont126525126526_))
                    (___kont126525126526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126525126526_))
                                                (___kont126525126526_))
                                            (___kont126525126526_))))
                                    (___kont126525126526_))))
                            (___kont126525126526_))
                        (___kont126525126526_))
                    (___kont126525126526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126525126526_))))
                                            (___kont126525126526_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122216122479_ _target122213122474_ '())))))
                   (___match126540126541_
                    (lambda (_e122164122726_
                             _hd122163122729_
                             _tl122162122731_
                             ___splice126513126514_
                             _target122165122734_
                             _tl122167122736_)
                      (letrec ((_loop122168122739_
                                (lambda (_hd122166122742_ _arg122172122744_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122166122742_))
                                      (let ((_e122169122747_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122166122742_))))
                                        (let ((_lp-tl122171122752_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122169122747_)))
                                              (_lp-hd122170122750_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122169122747_))))
                                          (let ((__tmp127916
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122170122750_
                                                         _arg122172122744_))))
                                            (declare (not safe))
                                            (_loop122168122739_
                                             _lp-tl122171122752_
                                             __tmp127916))))
                                      (let ((_arg122173122755_
                                             (reverse _arg122172122744_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122162122731_))
                                            (let ((_e122176122758_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122162122731_))))
                                              (let ((_tl122174122763_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122176122758_)))
                                                    (_hd122175122761_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122176122758_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122175122761_))
                                                    (let ((_e122179122766_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122175122761_))))
                                                      (let ((_tl122177122771_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122179122766_)))
                    (_hd122178122769_
                     (let () (declare (not safe)) (##car _e122179122766_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122178122769_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122178122769_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122177122771_))
                            (let ((_e122182122774_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122177122771_))))
                              (let ((_tl122180122779_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122182122774_)))
                                    (_hd122181122777_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122182122774_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122181122777_))
                                    (let ((_e122185122782_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122181122777_))))
                                      (let ((_tl122183122787_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122185122782_)))
                                            (_hd122184122785_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122185122782_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122184122785_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122184122785_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122183122787_))
                                                    (let ((_e122188122790_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122183122787_))))
                                                      (let ((_tl122186122795_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122188122790_)))
                    (_hd122187122793_
                     (let () (declare (not safe)) (##car _e122188122790_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122186122795_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl122180122779_))
                        (let ((___splice126515126516_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122180122779_
                                  '0))))
                          (let ((_tl122191122800_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126515126516_ '1)))
                                (_target122189122798_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126515126516_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122191122800_))
                                (letrec ((_loop122192122803_
                                          (lambda (_hd122190122806_
                                                   _xarg122196122808_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122190122806_))
                                                (let ((_e122193122811_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122190122806_))))
                                                  (let ((_lp-tl122195122816_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122193122811_)))
                                                        (_lp-hd122194122814_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122193122811_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd122194122814_))
                                                        (let ((_e122200122819_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd122194122814_))))
                  (let ((_tl122198122824_
                         (let () (declare (not safe)) (##cdr _e122200122819_)))
                        (_hd122199122822_
                         (let ()
                           (declare (not safe))
                           (##car _e122200122819_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122199122822_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd122199122822_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122198122824_))
                                (let ((_e122203122827_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122198122824_))))
                                  (let ((_tl122201122832_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122203122827_)))
                                        (_hd122202122830_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122203122827_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122201122832_))
                                        (let ((__tmp127915
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd122202122830_
                                                       _xarg122196122808_))))
                                          (declare (not safe))
                                          (_loop122192122803_
                                           _lp-tl122195122816_
                                           __tmp127915))
                                        (___match126552126553_
                                         _e122164122726_
                                         _hd122163122729_
                                         _tl122162122731_
                                         ___splice126513126514_
                                         _target122165122734_
                                         _tl122167122736_))))
                                (___match126552126553_
                                 _e122164122726_
                                 _hd122163122729_
                                 _tl122162122731_
                                 ___splice126513126514_
                                 _target122165122734_
                                 _tl122167122736_))
                            (___match126552126553_
                             _e122164122726_
                             _hd122163122729_
                             _tl122162122731_
                             ___splice126513126514_
                             _target122165122734_
                             _tl122167122736_))
                        (___match126552126553_
                         _e122164122726_
                         _hd122163122729_
                         _tl122162122731_
                         ___splice126513126514_
                         _target122165122734_
                         _tl122167122736_))))
                (___match126552126553_
                 _e122164122726_
                 _hd122163122729_
                 _tl122162122731_
                 ___splice126513126514_
                 _target122165122734_
                 _tl122167122736_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg122197122835_
                                                       (reverse _xarg122196122808_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122174122763_))
                                                      (let ((_L122838_
                                                             _xarg122197122835_)
                                                            (_L122839_
                                                             _hd122187122793_)
                                                            (_L122840_
                                                             _arg122173122755_))
                                                        (if (and (let ((__tmp127913
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp127914
                                       (lambda (_g122868122871_
                                                _g122869122873_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g122868122871_
                                                 _g122869122873_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp127914 '() _L122840_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp127913))
                         (fx= (length (let ((__tmp127911
                                             (lambda (_g122875122878_
                                                      _g122876122880_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g122875122878_
                                                       _g122876122880_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp127911 '() _L122840_)))
                              (length (let ((__tmp127912
                                             (lambda (_g122882122885_
                                                      _g122883122887_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g122882122885_
                                                       _g122883122887_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp127912 '() _L122838_))))
                         (let ((__tmp127909
                                (let ((__tmp127910
                                       (lambda (_g122889122892_
                                                _g122890122894_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g122889122892_
                                                 _g122890122894_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp127910 '() _L122840_)))
                               (__tmp127907
                                (let ((__tmp127908
                                       (lambda (_g122896122899_
                                                _g122897122901_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g122896122899_
                                                 _g122897122901_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp127908 '() _L122838_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp127909
                                    __tmp127907))
                         (let ((__tmp127903
                                (let ((__tmp127906
                                       (lambda (_g122903122905_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g122903122905_
                                            _L122839_))))
                                      (__tmp127904
                                       (let ((__tmp127905
                                              (lambda (_g122907122910_
                                                       _g122908122912_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g122907122910_
                                                        _g122908122912_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp127905 '() _L122840_))))
                                  (declare (not safe))
                                  (find __tmp127906 __tmp127904))))
                           (declare (not safe))
                           (not __tmp127903)))
                    (___kont126511126512_ _L122838_ _L122839_ _L122840_)
                    (___match126552126553_
                     _e122164122726_
                     _hd122163122729_
                     _tl122162122731_
                     ___splice126513126514_
                     _target122165122734_
                     _tl122167122736_)))
              (___match126552126553_
               _e122164122726_
               _hd122163122729_
               _tl122162122731_
               ___splice126513126514_
               _target122165122734_
               _tl122167122736_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop122192122803_
                                     _target122189122798_
                                     '())))
                                (___match126552126553_
                                 _e122164122726_
                                 _hd122163122729_
                                 _tl122162122731_
                                 ___splice126513126514_
                                 _target122165122734_
                                 _tl122167122736_))))
                        (___match126552126553_
                         _e122164122726_
                         _hd122163122729_
                         _tl122162122731_
                         ___splice126513126514_
                         _target122165122734_
                         _tl122167122736_))
                    (___match126552126553_
                     _e122164122726_
                     _hd122163122729_
                     _tl122162122731_
                     ___splice126513126514_
                     _target122165122734_
                     _tl122167122736_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126552126553_
                                                     _e122164122726_
                                                     _hd122163122729_
                                                     _tl122162122731_
                                                     ___splice126513126514_
                                                     _target122165122734_
                                                     _tl122167122736_))
                                                (___match126552126553_
                                                 _e122164122726_
                                                 _hd122163122729_
                                                 _tl122162122731_
                                                 ___splice126513126514_
                                                 _target122165122734_
                                                 _tl122167122736_))
                                            (___match126552126553_
                                             _e122164122726_
                                             _hd122163122729_
                                             _tl122162122731_
                                             ___splice126513126514_
                                             _target122165122734_
                                             _tl122167122736_))))
                                    (___match126552126553_
                                     _e122164122726_
                                     _hd122163122729_
                                     _tl122162122731_
                                     ___splice126513126514_
                                     _target122165122734_
                                     _tl122167122736_))))
                            (___match126552126553_
                             _e122164122726_
                             _hd122163122729_
                             _tl122162122731_
                             ___splice126513126514_
                             _target122165122734_
                             _tl122167122736_))
                        (___match126552126553_
                         _e122164122726_
                         _hd122163122729_
                         _tl122162122731_
                         ___splice126513126514_
                         _target122165122734_
                         _tl122167122736_))
                    (___match126552126553_
                     _e122164122726_
                     _hd122163122729_
                     _tl122162122731_
                     ___splice126513126514_
                     _target122165122734_
                     _tl122167122736_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126552126553_
                                                     _e122164122726_
                                                     _hd122163122729_
                                                     _tl122162122731_
                                                     ___splice126513126514_
                                                     _target122165122734_
                                                     _tl122167122736_))))
                                            (___match126552126553_
                                             _e122164122726_
                                             _hd122163122729_
                                             _tl122162122731_
                                             ___splice126513126514_
                                             _target122165122734_
                                             _tl122167122736_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122168122739_ _target122165122734_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126509126510_))
                  (let ((_e122164122726_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126509126510_))))
                    (let ((_tl122162122731_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122164122726_)))
                          (_hd122163122729_
                           (let ()
                             (declare (not safe))
                             (##car _e122164122726_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd122163122729_))
                          (let ((___splice126513126514_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd122163122729_
                                    '0))))
                            (let ((_tl122167122736_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126513126514_ '1)))
                                  (_target122165122734_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126513126514_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122167122736_))
                                  (___match126540126541_
                                   _e122164122726_
                                   _hd122163122729_
                                   _tl122162122731_
                                   ___splice126513126514_
                                   _target122165122734_
                                   _tl122167122736_)
                                  (___match126552126553_
                                   _e122164122726_
                                   _hd122163122729_
                                   _tl122162122731_
                                   ___splice126513126514_
                                   _target122165122734_
                                   _tl122167122736_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122162122731_))
                              (let ((_e122279122334_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122162122731_))))
                                (let ((_tl122277122339_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122279122334_)))
                                      (_hd122278122337_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122279122334_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122278122337_))
                                      (let ((_e122282122342_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122278122337_))))
                                        (let ((_tl122280122347_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122282122342_)))
                                              (_hd122281122345_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122282122342_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd122281122345_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd122281122345_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122280122347_))
                                                      (let ((_e122285122350_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122280122347_))))
                (let ((_tl122283122355_
                       (let () (declare (not safe)) (##cdr _e122285122350_)))
                      (_hd122284122353_
                       (let () (declare (not safe)) (##car _e122285122350_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122284122353_))
                      (let ((_e122288122358_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122284122353_))))
                        (let ((_tl122286122363_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122288122358_)))
                              (_hd122287122361_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122288122358_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122287122361_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122287122361_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122286122363_))
                                      (let ((_e122291122366_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122286122363_))))
                                        (let ((_tl122289122371_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122291122366_)))
                                              (_hd122290122369_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122291122366_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122289122371_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122283122355_))
                                                  (let ((_e122294122374_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122283122355_))))
                                                    (let ((_tl122292122379_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122294122374_)))
                                                          (_hd122293122377_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122294122374_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122293122377_))
                                                          (let ((_e122297122382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122293122377_))))
                    (let ((_tl122295122387_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122297122382_)))
                          (_hd122296122385_
                           (let ()
                             (declare (not safe))
                             (##car _e122297122382_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122296122385_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd122296122385_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122295122387_))
                                  (let ((_e122300122390_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122295122387_))))
                                    (let ((_tl122298122395_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122300122390_)))
                                          (_hd122299122393_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122300122390_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122298122395_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122292122379_))
                                              (let ((_e122303122398_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122292122379_))))
                                                (let ((_tl122301122403_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122303122398_)))
                                                      (_hd122302122401_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122303122398_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd122302122401_))
                                                      (let ((_e122306122406_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd122302122401_))))
                (let ((_tl122304122411_
                       (let () (declare (not safe)) (##cdr _e122306122406_)))
                      (_hd122305122409_
                       (let () (declare (not safe)) (##car _e122306122406_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd122305122409_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd122305122409_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122304122411_))
                              (let ((_e122309122414_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122304122411_))))
                                (let ((_tl122307122419_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122309122414_)))
                                      (_hd122308122417_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122309122414_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122307122419_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122301122403_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122277122339_))
                                              (___match126650126651_
                                               _e122164122726_
                                               _hd122163122729_
                                               _tl122162122731_
                                               _e122279122334_
                                               _hd122278122337_
                                               _tl122277122339_
                                               _e122282122342_
                                               _hd122281122345_
                                               _tl122280122347_
                                               _e122285122350_
                                               _hd122284122353_
                                               _tl122283122355_
                                               _e122288122358_
                                               _hd122287122361_
                                               _tl122286122363_
                                               _e122291122366_
                                               _hd122290122369_
                                               _tl122289122371_
                                               _e122294122374_
                                               _hd122293122377_
                                               _tl122292122379_
                                               _e122297122382_
                                               _hd122296122385_
                                               _tl122295122387_
                                               _e122300122390_
                                               _hd122299122393_
                                               _tl122298122395_
                                               _e122303122398_
                                               _hd122302122401_
                                               _tl122301122403_
                                               _e122306122406_
                                               _hd122305122409_
                                               _tl122304122411_
                                               _e122309122414_
                                               _hd122308122417_
                                               _tl122307122419_)
                                              (___kont126525126526_))
                                          (___kont126525126526_))
                                      (___kont126525126526_))))
                              (___kont126525126526_))
                          (___kont126525126526_))
                      (___kont126525126526_))))
              (___kont126525126526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont126525126526_))
                                          (___kont126525126526_))))
                                  (___kont126525126526_))
                              (___kont126525126526_))
                          (___kont126525126526_))))
                  (___kont126525126526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126525126526_))
                                              (___kont126525126526_))))
                                      (___kont126525126526_))
                                  (___kont126525126526_))
                              (___kont126525126526_))))
                      (___kont126525126526_))))
              (___kont126525126526_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126525126526_))
                                              (___kont126525126526_))))
                                      (___kont126525126526_))))
                              (___kont126525126526_)))))
                  (___kont126525126526_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form121620_)
        (let* ((___stx126653126654_ _form121620_)
               (_g121624121748_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126653126654_)))))
          (let ((___kont126655126656_
                 (lambda (_L122118_ _L122119_ _L122120_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122119_))))
                (___kont126661126662_
                 (lambda (_L121966_ _L121967_ _L121968_ _L121969_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L121966_))))
                (___kont126665126666_
                 (lambda (_L121833_ _L121834_ _L121835_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L121833_)))))
            (let* ((___match126762126763_
                    (lambda (_e121716121753_
                             _hd121715121756_
                             _tl121714121758_
                             _e121719121761_
                             _hd121718121764_
                             _tl121717121766_
                             _e121722121769_
                             _hd121721121772_
                             _tl121720121774_
                             _e121725121777_
                             _hd121724121780_
                             _tl121723121782_
                             _e121728121785_
                             _hd121727121788_
                             _tl121726121790_
                             _e121731121793_
                             _hd121730121796_
                             _tl121729121798_
                             _e121734121801_
                             _hd121733121804_
                             _tl121732121806_
                             _e121737121809_
                             _hd121736121812_
                             _tl121735121814_
                             _e121740121817_
                             _hd121739121820_
                             _tl121738121822_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl121732121806_))
                          (let ((_e121743121825_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl121732121806_))))
                            (let ((_tl121741121830_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121743121825_)))
                                  (_hd121742121828_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121743121825_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl121741121830_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121717121766_))
                                      (___kont126665126666_
                                       _hd121739121820_
                                       _hd121730121796_
                                       _hd121715121756_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121624121748_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g121624121748_)))))
                          (let () (declare (not safe)) (_g121624121748_)))))
                   (___match126692126693_
                    (lambda (_e121677121870_
                             _hd121676121873_
                             _tl121675121875_
                             ___splice126663126664_
                             _target121678121878_
                             _tl121680121880_)
                      (letrec ((_loop121681121883_
                                (lambda (_hd121679121886_ _arg121685121888_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121679121886_))
                                      (let ((_e121682121891_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121679121886_))))
                                        (let ((_lp-tl121684121896_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121682121891_)))
                                              (_lp-hd121683121894_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121682121891_))))
                                          (let ((__tmp127917
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd121683121894_
                                                         _arg121685121888_))))
                                            (declare (not safe))
                                            (_loop121681121883_
                                             _lp-tl121684121896_
                                             __tmp127917))))
                                      (let ((_arg121686121899_
                                             (reverse _arg121685121888_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121675121875_))
                                            (let ((_e121689121902_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121675121875_))))
                                              (let ((_tl121687121907_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121689121902_)))
                                                    (_hd121688121905_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121689121902_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121688121905_))
                                                    (let ((_e121692121910_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121688121905_))))
                                                      (let ((_tl121690121915_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121692121910_)))
                    (_hd121691121913_
                     (let () (declare (not safe)) (##car _e121692121910_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121691121913_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121691121913_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121690121915_))
                            (let ((_e121695121918_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121690121915_))))
                              (let ((_tl121693121923_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121695121918_)))
                                    (_hd121694121921_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121695121918_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121694121921_))
                                    (let ((_e121698121926_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121694121921_))))
                                      (let ((_tl121696121931_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121698121926_)))
                                            (_hd121697121929_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121698121926_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121697121929_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121697121929_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121696121931_))
                                                    (let ((_e121701121934_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121696121931_))))
                                                      (let ((_tl121699121939_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121701121934_)))
                    (_hd121700121937_
                     (let () (declare (not safe)) (##car _e121701121934_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121699121939_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121693121923_))
                        (let ((_e121704121942_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121693121923_))))
                          (let ((_tl121702121947_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121704121942_)))
                                (_hd121703121945_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121704121942_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121703121945_))
                                (let ((_e121707121950_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121703121945_))))
                                  (let ((_tl121705121955_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121707121950_)))
                                        (_hd121706121953_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121707121950_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121706121953_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd121706121953_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121705121955_))
                                                (let ((_e121710121958_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121705121955_))))
                                                  (let ((_tl121708121963_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121710121958_)))
                                                        (_hd121709121961_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121710121958_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121708121963_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl121687121907_))
                                                            (___kont126661126662_
                                                             _hd121709121961_
                                                             _hd121700121937_
                                                             _tl121680121880_
                                                             _arg121686121899_)
                                                            (___match126762126763_
                                                             _e121677121870_
                                                             _hd121676121873_
                                                             _tl121675121875_
                                                             _e121689121902_
                                                             _hd121688121905_
                                                             _tl121687121907_
                                                             _e121692121910_
                                                             _hd121691121913_
                                                             _tl121690121915_
                                                             _e121695121918_
                                                             _hd121694121921_
                                                             _tl121693121923_
                                                             _e121698121926_
                                                             _hd121697121929_
                                                             _tl121696121931_
                                                             _e121701121934_
                                                             _hd121700121937_
                                                             _tl121699121939_
                                                             _e121704121942_
                                                             _hd121703121945_
                                                             _tl121702121947_
                                                             _e121707121950_
                                                             _hd121706121953_
                                                             _tl121705121955_
                                                             _e121710121958_
                                                             _hd121709121961_
                                                             _tl121708121963_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g121624121748_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121624121748_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g121624121748_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g121624121748_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g121624121748_)))))
                        (let () (declare (not safe)) (_g121624121748_)))
                    (let () (declare (not safe)) (_g121624121748_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g121624121748_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121624121748_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g121624121748_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g121624121748_)))))
                            (let () (declare (not safe)) (_g121624121748_)))
                        (let () (declare (not safe)) (_g121624121748_)))
                    (let () (declare (not safe)) (_g121624121748_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g121624121748_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g121624121748_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop121681121883_ _target121678121878_ '())))))
                   (___match126680126681_
                    (lambda (_e121631122006_
                             _hd121630122009_
                             _tl121629122011_
                             ___splice126657126658_
                             _target121632122014_
                             _tl121634122016_)
                      (letrec ((_loop121635122019_
                                (lambda (_hd121633122022_ _arg121639122024_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121633122022_))
                                      (let ((_e121636122027_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121633122022_))))
                                        (let ((_lp-tl121638122032_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121636122027_)))
                                              (_lp-hd121637122030_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121636122027_))))
                                          (let ((__tmp127919
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd121637122030_
                                                         _arg121639122024_))))
                                            (declare (not safe))
                                            (_loop121635122019_
                                             _lp-tl121638122032_
                                             __tmp127919))))
                                      (let ((_arg121640122035_
                                             (reverse _arg121639122024_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121629122011_))
                                            (let ((_e121643122038_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121629122011_))))
                                              (let ((_tl121641122043_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121643122038_)))
                                                    (_hd121642122041_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121643122038_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121642122041_))
                                                    (let ((_e121646122046_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121642122041_))))
                                                      (let ((_tl121644122051_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121646122046_)))
                    (_hd121645122049_
                     (let () (declare (not safe)) (##car _e121646122046_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121645122049_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121645122049_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121644122051_))
                            (let ((_e121649122054_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121644122051_))))
                              (let ((_tl121647122059_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121649122054_)))
                                    (_hd121648122057_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121649122054_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121648122057_))
                                    (let ((_e121652122062_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121648122057_))))
                                      (let ((_tl121650122067_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121652122062_)))
                                            (_hd121651122065_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121652122062_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121651122065_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121651122065_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121650122067_))
                                                    (let ((_e121655122070_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121650122067_))))
                                                      (let ((_tl121653122075_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121655122070_)))
                    (_hd121654122073_
                     (let () (declare (not safe)) (##car _e121655122070_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121653122075_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl121647122059_))
                        (let ((___splice126659126660_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl121647122059_
                                  '0))))
                          (let ((_tl121658122080_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126659126660_ '1)))
                                (_target121656122078_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126659126660_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl121658122080_))
                                (letrec ((_loop121659122083_
                                          (lambda (_hd121657122086_
                                                   _xarg121663122088_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121657122086_))
                                                (let ((_e121660122091_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121657122086_))))
                                                  (let ((_lp-tl121662122096_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121660122091_)))
                                                        (_lp-hd121661122094_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121660122091_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd121661122094_))
                                                        (let ((_e121667122099_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd121661122094_))))
                  (let ((_tl121665122104_
                         (let () (declare (not safe)) (##cdr _e121667122099_)))
                        (_hd121666122102_
                         (let ()
                           (declare (not safe))
                           (##car _e121667122099_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121666122102_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd121666122102_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121665122104_))
                                (let ((_e121670122107_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121665122104_))))
                                  (let ((_tl121668122112_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121670122107_)))
                                        (_hd121669122110_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121670122107_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121668122112_))
                                        (let ((__tmp127918
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd121669122110_
                                                       _xarg121663122088_))))
                                          (declare (not safe))
                                          (_loop121659122083_
                                           _lp-tl121662122096_
                                           __tmp127918))
                                        (___match126692126693_
                                         _e121631122006_
                                         _hd121630122009_
                                         _tl121629122011_
                                         ___splice126657126658_
                                         _target121632122014_
                                         _tl121634122016_))))
                                (___match126692126693_
                                 _e121631122006_
                                 _hd121630122009_
                                 _tl121629122011_
                                 ___splice126657126658_
                                 _target121632122014_
                                 _tl121634122016_))
                            (___match126692126693_
                             _e121631122006_
                             _hd121630122009_
                             _tl121629122011_
                             ___splice126657126658_
                             _target121632122014_
                             _tl121634122016_))
                        (___match126692126693_
                         _e121631122006_
                         _hd121630122009_
                         _tl121629122011_
                         ___splice126657126658_
                         _target121632122014_
                         _tl121634122016_))))
                (___match126692126693_
                 _e121631122006_
                 _hd121630122009_
                 _tl121629122011_
                 ___splice126657126658_
                 _target121632122014_
                 _tl121634122016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg121664122115_
                                                       (reverse _xarg121663122088_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl121641122043_))
                                                      (___kont126655126656_
                                                       _xarg121664122115_
                                                       _hd121654122073_
                                                       _arg121640122035_)
                                                      (___match126692126693_
                                                       _e121631122006_
                                                       _hd121630122009_
                                                       _tl121629122011_
                                                       ___splice126657126658_
                                                       _target121632122014_
                                                       _tl121634122016_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop121659122083_
                                     _target121656122078_
                                     '())))
                                (___match126692126693_
                                 _e121631122006_
                                 _hd121630122009_
                                 _tl121629122011_
                                 ___splice126657126658_
                                 _target121632122014_
                                 _tl121634122016_))))
                        (___match126692126693_
                         _e121631122006_
                         _hd121630122009_
                         _tl121629122011_
                         ___splice126657126658_
                         _target121632122014_
                         _tl121634122016_))
                    (___match126692126693_
                     _e121631122006_
                     _hd121630122009_
                     _tl121629122011_
                     ___splice126657126658_
                     _target121632122014_
                     _tl121634122016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126692126693_
                                                     _e121631122006_
                                                     _hd121630122009_
                                                     _tl121629122011_
                                                     ___splice126657126658_
                                                     _target121632122014_
                                                     _tl121634122016_))
                                                (___match126692126693_
                                                 _e121631122006_
                                                 _hd121630122009_
                                                 _tl121629122011_
                                                 ___splice126657126658_
                                                 _target121632122014_
                                                 _tl121634122016_))
                                            (___match126692126693_
                                             _e121631122006_
                                             _hd121630122009_
                                             _tl121629122011_
                                             ___splice126657126658_
                                             _target121632122014_
                                             _tl121634122016_))))
                                    (___match126692126693_
                                     _e121631122006_
                                     _hd121630122009_
                                     _tl121629122011_
                                     ___splice126657126658_
                                     _target121632122014_
                                     _tl121634122016_))))
                            (___match126692126693_
                             _e121631122006_
                             _hd121630122009_
                             _tl121629122011_
                             ___splice126657126658_
                             _target121632122014_
                             _tl121634122016_))
                        (___match126692126693_
                         _e121631122006_
                         _hd121630122009_
                         _tl121629122011_
                         ___splice126657126658_
                         _target121632122014_
                         _tl121634122016_))
                    (___match126692126693_
                     _e121631122006_
                     _hd121630122009_
                     _tl121629122011_
                     ___splice126657126658_
                     _target121632122014_
                     _tl121634122016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126692126693_
                                                     _e121631122006_
                                                     _hd121630122009_
                                                     _tl121629122011_
                                                     ___splice126657126658_
                                                     _target121632122014_
                                                     _tl121634122016_))))
                                            (___match126692126693_
                                             _e121631122006_
                                             _hd121630122009_
                                             _tl121629122011_
                                             ___splice126657126658_
                                             _target121632122014_
                                             _tl121634122016_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop121635122019_ _target121632122014_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126653126654_))
                  (let ((_e121631122006_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126653126654_))))
                    (let ((_tl121629122011_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121631122006_)))
                          (_hd121630122009_
                           (let ()
                             (declare (not safe))
                             (##car _e121631122006_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd121630122009_))
                          (let ((___splice126657126658_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd121630122009_
                                    '0))))
                            (let ((_tl121634122016_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126657126658_ '1)))
                                  (_target121632122014_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126657126658_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl121634122016_))
                                  (___match126680126681_
                                   _e121631122006_
                                   _hd121630122009_
                                   _tl121629122011_
                                   ___splice126657126658_
                                   _target121632122014_
                                   _tl121634122016_)
                                  (___match126692126693_
                                   _e121631122006_
                                   _hd121630122009_
                                   _tl121629122011_
                                   ___splice126657126658_
                                   _target121632122014_
                                   _tl121634122016_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121629122011_))
                              (let ((_e121719121761_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121629122011_))))
                                (let ((_tl121717121766_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121719121761_)))
                                      (_hd121718121764_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121719121761_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121718121764_))
                                      (let ((_e121722121769_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121718121764_))))
                                        (let ((_tl121720121774_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121722121769_)))
                                              (_hd121721121772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121722121769_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd121721121772_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd121721121772_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl121720121774_))
                                                      (let ((_e121725121777_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl121720121774_))))
                (let ((_tl121723121782_
                       (let () (declare (not safe)) (##cdr _e121725121777_)))
                      (_hd121724121780_
                       (let () (declare (not safe)) (##car _e121725121777_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd121724121780_))
                      (let ((_e121728121785_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd121724121780_))))
                        (let ((_tl121726121790_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121728121785_)))
                              (_hd121727121788_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121728121785_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd121727121788_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd121727121788_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121726121790_))
                                      (let ((_e121731121793_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121726121790_))))
                                        (let ((_tl121729121798_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121731121793_)))
                                              (_hd121730121796_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121731121793_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121729121798_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl121723121782_))
                                                  (let ((_e121734121801_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl121723121782_))))
                                                    (let ((_tl121732121806_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121734121801_)))
                                                          (_hd121733121804_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121734121801_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd121733121804_))
                                                          (let ((_e121737121809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd121733121804_))))
                    (let ((_tl121735121814_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121737121809_)))
                          (_hd121736121812_
                           (let ()
                             (declare (not safe))
                             (##car _e121737121809_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd121736121812_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd121736121812_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl121735121814_))
                                  (let ((_e121740121817_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl121735121814_))))
                                    (let ((_tl121738121822_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121740121817_)))
                                          (_hd121739121820_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121740121817_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl121738121822_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl121732121806_))
                                              (let ((_e121743121825_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl121732121806_))))
                                                (let ((_tl121741121830_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e121743121825_)))
                                                      (_hd121742121828_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e121743121825_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl121741121830_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121717121766_))
                                                          (___kont126665126666_
                                                           _hd121739121820_
                                                           _hd121730121796_
                                                           _hd121630122009_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g121624121748_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g121624121748_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g121624121748_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g121624121748_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121624121748_)))
                              (let () (declare (not safe)) (_g121624121748_)))
                          (let () (declare (not safe)) (_g121624121748_)))))
                  (let () (declare (not safe)) (_g121624121748_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121624121748_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121624121748_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121624121748_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g121624121748_)))
                              (let ()
                                (declare (not safe))
                                (_g121624121748_)))))
                      (let () (declare (not safe)) (_g121624121748_)))))
              (let () (declare (not safe)) (_g121624121748_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121624121748_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121624121748_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121624121748_)))))
                              (let ()
                                (declare (not safe))
                                (_g121624121748_))))))
                  (let () (declare (not safe)) (_g121624121748_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form121424_)
        (let* ((_g121426121440_
                (lambda (_g121427121437_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g121427121437_))))
               (_g121425121617_
                (lambda (_g121427121443_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g121427121443_))
                      (let ((_e121432121445_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g121427121443_))))
                        (let ((_hd121431121448_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121432121445_)))
                              (_tl121430121450_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121432121445_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121430121450_))
                              (let ((_e121435121453_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121430121450_))))
                                (let ((_hd121434121456_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121435121453_)))
                                      (_tl121433121458_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121435121453_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121433121458_))
                                      ((lambda (_L121461_ _L121462_)
                                         (let* ((___stx126775126776_ _L121462_)
                                                (_g121477121505_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx126775126776_)))))
                                           (let ((___kont126777126778_
                                                  (lambda (_L121596_)
                                                    (length (let ((__tmp127920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g121606121609_ _g121607121611_)
                             (let ()
                               (declare (not safe))
                               (cons _g121606121609_ _g121607121611_)))))
                      (declare (not safe))
                      (foldr1 __tmp127920 '() _L121596_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont126781126782_
                                                  (lambda (_L121547_ _L121548_)
                                                    (let ((__tmp127921
                                                           (length (let ((__tmp127922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g121559121562_ _g121560121564_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g121559121562_
                                            _g121560121564_)))))
                             (declare (not safe))
                             (foldr1 __tmp127922 '() _L121548_)))))
              (declare (not safe))
              (cons __tmp127921 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont126785126786_
                                                  (lambda (_L121510_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match126800126801_
                                                     (lambda (___splice126783126784_
                                                              _target121491121523_
                                                              _tl121493121525_)
                                                       (letrec ((_loop121494121528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd121492121531_ _arg121498121533_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd121492121531_))
                               (let ((_e121495121536_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd121492121531_))))
                                 (let ((_lp-tl121497121541_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121495121536_)))
                                       (_lp-hd121496121539_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121495121536_))))
                                   (let ((__tmp127923
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd121496121539_
                                                  _arg121498121533_))))
                                     (declare (not safe))
                                     (_loop121494121528_
                                      _lp-tl121497121541_
                                      __tmp127923))))
                               (let ((_arg121499121544_
                                      (reverse _arg121498121533_)))
                                 (___kont126781126782_
                                  _tl121493121525_
                                  _arg121499121544_))))))
                 (let ()
                   (declare (not safe))
                   (_loop121494121528_ _target121491121523_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126794126795_
                                                     (lambda (___splice126779126780_
                                                              _target121480121572_
                                                              _tl121482121574_)
                                                       (letrec ((_loop121483121577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd121481121580_ _arg121487121582_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd121481121580_))
                               (let ((_e121484121585_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd121481121580_))))
                                 (let ((_lp-tl121486121590_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121484121585_)))
                                       (_lp-hd121485121588_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121484121585_))))
                                   (let ((__tmp127924
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd121485121588_
                                                  _arg121487121582_))))
                                     (declare (not safe))
                                     (_loop121483121577_
                                      _lp-tl121486121590_
                                      __tmp127924))))
                               (let ((_arg121488121593_
                                      (reverse _arg121487121582_)))
                                 (___kont126777126778_ _arg121488121593_))))))
                 (let ()
                   (declare (not safe))
                   (_loop121483121577_ _target121480121572_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx126775126776_))
                                                   (let ((___splice126779126780_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx126775126776_
                                                             '0))))
                                                     (let ((_tl121482121574_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice126779126780_
                                                               '1)))
                                                           (_target121480121572_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice126779126780_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121482121574_))
                                                           (___match126794126795_
                                                            ___splice126779126780_
                                                            _target121480121572_
                                                            _tl121482121574_)
                                                           (___match126800126801_
                                                            ___splice126779126780_
                                                            _target121480121572_
                                                            _tl121482121574_))))
                                                   (___kont126785126786_
                                                    ___stx126775126776_))))))
                                       _hd121434121456_
                                       _hd121431121448_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121426121440_ _g121427121443_)))))
                              (let ()
                                (declare (not safe))
                                (_g121426121440_ _g121427121443_)))))
                      (let ()
                        (declare (not safe))
                        (_g121426121440_ _g121427121443_))))))
          (declare (not safe))
          (_g121425121617_ _form121424_))))
    (define gxc#lambda-expr?
      (lambda (_expr121377_)
        (let* ((___stx126803126804_ _expr121377_)
               (_g121380121390_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126803126804_)))))
          (let ((___kont126805126806_ (lambda (_L121410_) '#t))
                (___kont126807126808_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126803126804_))
                (let ((_e121385121402_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126803126804_))))
                  (let ((_tl121383121407_
                         (let () (declare (not safe)) (##cdr _e121385121402_)))
                        (_hd121384121405_
                         (let ()
                           (declare (not safe))
                           (##car _e121385121402_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121384121405_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd121384121405_))
                            (___kont126805126806_ _tl121383121407_)
                            (___kont126807126808_))
                        (___kont126807126808_))))
                (___kont126807126808_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr121330_)
        (let* ((___stx126821126822_ _expr121330_)
               (_g121333121343_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126821126822_)))))
          (let ((___kont126823126824_ (lambda (_L121363_) '#t))
                (___kont126825126826_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126821126822_))
                (let ((_e121338121355_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126821126822_))))
                  (let ((_tl121336121360_
                         (let () (declare (not safe)) (##cdr _e121338121355_)))
                        (_hd121337121358_
                         (let ()
                           (declare (not safe))
                           (##car _e121338121355_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121337121358_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd121337121358_))
                            (___kont126823126824_ _tl121336121360_)
                            (___kont126825126826_))
                        (___kont126825126826_))))
                (___kont126825126826_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr121199_)
        (let* ((___stx126839126840_ _expr121199_)
               (_g121202121232_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126839126840_)))))
          (let ((___kont126841126842_
                 (lambda (_L121300_ _L121301_ _L121302_)
                   (if (let () (declare (not safe)) (gx#identifier? _L121302_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L121301_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L121300_))
                           '#f)
                       '#f)))
                (___kont126843126844_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126839126840_))
                (let ((_e121209121244_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126839126840_))))
                  (let ((_tl121207121249_
                         (let () (declare (not safe)) (##cdr _e121209121244_)))
                        (_hd121208121247_
                         (let ()
                           (declare (not safe))
                           (##car _e121209121244_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121208121247_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd121208121247_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121207121249_))
                                (let ((_e121212121252_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121207121249_))))
                                  (let ((_tl121210121257_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121212121252_)))
                                        (_hd121211121255_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121212121252_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd121211121255_))
                                        (let ((_e121215121260_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd121211121255_))))
                                          (let ((_tl121213121265_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121215121260_)))
                                                (_hd121214121263_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121215121260_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121214121263_))
                                                (let ((_e121218121268_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121214121263_))))
                                                  (let ((_tl121216121273_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121218121268_)))
                                                        (_hd121217121271_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121218121268_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121217121271_))
                                                        (let ((_e121221121276_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121217121271_))))
                  (let ((_tl121219121281_
                         (let () (declare (not safe)) (##cdr _e121221121276_)))
                        (_hd121220121279_
                         (let ()
                           (declare (not safe))
                           (##car _e121221121276_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl121219121281_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121216121273_))
                            (let ((_e121224121284_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121216121273_))))
                              (let ((_tl121222121289_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121224121284_)))
                                    (_hd121223121287_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121224121284_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121222121289_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121213121265_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121210121257_))
                                            (let ((_e121227121292_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121210121257_))))
                                              (let ((_tl121225121297_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121227121292_)))
                                                    (_hd121226121295_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121227121292_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121225121297_))
                                                    (___kont126841126842_
                                                     _hd121226121295_
                                                     _hd121223121287_
                                                     _hd121220121279_)
                                                    (___kont126843126844_))))
                                            (___kont126843126844_))
                                        (___kont126843126844_))
                                    (___kont126843126844_))))
                            (___kont126843126844_))
                        (___kont126843126844_))))
                (___kont126843126844_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126843126844_))))
                                        (___kont126843126844_))))
                                (___kont126843126844_))
                            (___kont126843126844_))
                        (___kont126843126844_))))
                (___kont126843126844_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr120524_)
        (let* ((___stx126901126902_ _expr120524_)
               (_g120527120685_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126901126902_)))))
          (let ((___kont126903126904_
                 (lambda (_L121073_
                          _L121074_
                          _L121075_
                          _L121076_
                          _L121077_
                          _L121078_
                          _L121079_
                          _L121080_
                          _L121081_
                          _L121082_
                          _L121083_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L121080_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L121076_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L121075_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L121083_
                                      _L121074_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L121082_
                                          _L121079_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L121077_
                                              _L121073_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L121081_
                                              _L121078_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont126905126906_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126901126902_))
                (let ((_e120542120697_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126901126902_))))
                  (let ((_tl120540120702_
                         (let () (declare (not safe)) (##cdr _e120542120697_)))
                        (_hd120541120700_
                         (let ()
                           (declare (not safe))
                           (##car _e120542120697_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd120541120700_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd120541120700_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl120540120702_))
                                (let ((_e120545120705_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl120540120702_))))
                                  (let ((_tl120543120710_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120545120705_)))
                                        (_hd120544120708_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120545120705_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd120544120708_))
                                        (let ((_e120548120713_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd120544120708_))))
                                          (let ((_tl120546120718_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120548120713_)))
                                                (_hd120547120716_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120548120713_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd120547120716_))
                                                (let ((_e120551120721_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd120547120716_))))
                                                  (let ((_tl120549120726_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120551120721_)))
                                                        (_hd120550120724_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120551120721_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd120550120724_))
                                                        (let ((_e120554120729_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd120550120724_))))
                  (let ((_tl120552120734_
                         (let () (declare (not safe)) (##cdr _e120554120729_)))
                        (_hd120553120732_
                         (let ()
                           (declare (not safe))
                           (##car _e120554120729_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl120552120734_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120549120726_))
                            (let ((_e120557120737_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120549120726_))))
                              (let ((_tl120555120742_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120557120737_)))
                                    (_hd120556120740_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120557120737_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120556120740_))
                                    (let ((_e120560120745_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120556120740_))))
                                      (let ((_tl120558120750_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120560120745_)))
                                            (_hd120559120748_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120560120745_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd120559120748_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd120559120748_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120558120750_))
                                                    (let ((_e120563120753_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120558120750_))))
                                                      (let ((_tl120561120758_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120563120753_)))
                    (_hd120562120756_
                     (let () (declare (not safe)) (##car _e120563120753_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd120562120756_))
                    (let ((_e120566120761_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd120562120756_))))
                      (let ((_tl120564120766_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120566120761_)))
                            (_hd120565120764_
                             (let ()
                               (declare (not safe))
                               (##car _e120566120761_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd120565120764_))
                            (let ((_e120569120769_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd120565120764_))))
                              (let ((_tl120567120774_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120569120769_)))
                                    (_hd120568120772_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120569120769_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120568120772_))
                                    (let ((_e120572120777_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120568120772_))))
                                      (let ((_tl120570120782_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120572120777_)))
                                            (_hd120571120780_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120572120777_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120570120782_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120567120774_))
                                                (let ((_e120575120785_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120567120774_))))
                                                  (let ((_tl120573120790_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120575120785_)))
                                                        (_hd120574120788_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120575120785_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120573120790_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl120564120766_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl120561120758_))
                        (let ((_e120578120793_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120561120758_))))
                          (let ((_tl120576120798_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120578120793_)))
                                (_hd120577120796_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120578120793_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120577120796_))
                                (let ((_e120581120801_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120577120796_))))
                                  (let ((_tl120579120806_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120581120801_)))
                                        (_hd120580120804_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120581120801_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120580120804_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd120580120804_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120579120806_))
                                                (let ((_e120584120809_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120579120806_))))
                                                  (let ((_tl120582120814_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120584120809_)))
                                                        (_hd120583120812_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120584120809_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd120583120812_))
                                                        (let ((_e120587120817_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd120583120812_))))
                  (let ((_tl120585120822_
                         (let () (declare (not safe)) (##cdr _e120587120817_)))
                        (_hd120586120820_
                         (let ()
                           (declare (not safe))
                           (##car _e120587120817_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl120582120814_))
                        (let ((_e120590120825_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120582120814_))))
                          (let ((_tl120588120830_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120590120825_)))
                                (_hd120589120828_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120590120825_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120589120828_))
                                (let ((_e120593120833_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120589120828_))))
                                  (let ((_tl120591120838_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120593120833_)))
                                        (_hd120592120836_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120593120833_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120592120836_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd120592120836_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120591120838_))
                                                (let ((_e120596120841_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120591120838_))))
                                                  (let ((_tl120594120846_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120596120841_)))
                                                        (_hd120595120844_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120596120841_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd120595120844_))
                                                        (let ((_e120599120849_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd120595120844_))))
                  (let ((_tl120597120854_
                         (let () (declare (not safe)) (##cdr _e120599120849_)))
                        (_hd120598120852_
                         (let ()
                           (declare (not safe))
                           (##car _e120599120849_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd120598120852_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd120598120852_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl120597120854_))
                                (let ((_e120602120857_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl120597120854_))))
                                  (let ((_tl120600120862_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120602120857_)))
                                        (_hd120601120860_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120602120857_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl120600120862_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120594120846_))
                                            (let ((_e120605120865_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120594120846_))))
                                              (let ((_tl120603120870_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120605120865_)))
                                                    (_hd120604120868_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120605120865_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd120604120868_))
                                                    (let ((_e120608120873_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd120604120868_))))
                                                      (let ((_tl120606120878_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120608120873_)))
                    (_hd120607120876_
                     (let () (declare (not safe)) (##car _e120608120873_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd120607120876_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd120607120876_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120606120878_))
                            (let ((_e120611120881_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120606120878_))))
                              (let ((_tl120609120886_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120611120881_)))
                                    (_hd120610120884_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120611120881_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl120609120886_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120603120870_))
                                        (let ((_e120614120889_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120603120870_))))
                                          (let ((_tl120612120894_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120614120889_)))
                                                (_hd120613120892_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120614120889_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd120613120892_))
                                                (let ((_e120617120897_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd120613120892_))))
                                                  (let ((_tl120615120902_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120617120897_)))
                                                        (_hd120616120900_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120617120897_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd120616120900_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd120616120900_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl120615120902_))
                        (let ((_e120620120905_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120615120902_))))
                          (let ((_tl120618120910_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120620120905_)))
                                (_hd120619120908_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120620120905_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl120618120910_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl120588120830_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl120576120798_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120555120742_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120546120718_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120543120710_))
                                                    (let ((_e120623120913_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120543120710_))))
                                                      (let ((_tl120621120918_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120623120913_)))
                    (_hd120622120916_
                     (let () (declare (not safe)) (##car _e120623120913_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd120622120916_))
                    (let ((_e120626120921_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd120622120916_))))
                      (let ((_tl120624120926_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120626120921_)))
                            (_hd120625120924_
                             (let ()
                               (declare (not safe))
                               (##car _e120626120921_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd120625120924_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd120625120924_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl120624120926_))
                                    (let ((_e120629120929_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl120624120926_))))
                                      (let ((_tl120627120934_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120629120929_)))
                                            (_hd120628120932_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120629120929_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120627120934_))
                                            (let ((_e120632120937_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120627120934_))))
                                              (let ((_tl120630120942_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120632120937_)))
                                                    (_hd120631120940_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120632120937_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd120631120940_))
                                                    (let ((_e120635120945_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd120631120940_))))
                                                      (let ((_tl120633120950_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120635120945_)))
                    (_hd120634120948_
                     (let () (declare (not safe)) (##car _e120635120945_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd120634120948_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd120634120948_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120633120950_))
                            (let ((_e120638120953_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120633120950_))))
                              (let ((_tl120636120958_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120638120953_)))
                                    (_hd120637120956_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120638120953_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120637120956_))
                                    (let ((_e120641120961_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120637120956_))))
                                      (let ((_tl120639120966_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120641120961_)))
                                            (_hd120640120964_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120641120961_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd120640120964_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd120640120964_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120639120966_))
                                                    (let ((_e120644120969_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120639120966_))))
                                                      (let ((_tl120642120974_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120644120969_)))
                    (_hd120643120972_
                     (let () (declare (not safe)) (##car _e120644120969_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl120642120974_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl120636120958_))
                        (let ((_e120647120977_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120636120958_))))
                          (let ((_tl120645120982_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120647120977_)))
                                (_hd120646120980_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120647120977_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120646120980_))
                                (let ((_e120650120985_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120646120980_))))
                                  (let ((_tl120648120990_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120650120985_)))
                                        (_hd120649120988_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120650120985_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120649120988_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd120649120988_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120648120990_))
                                                (let ((_e120653120993_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120648120990_))))
                                                  (let ((_tl120651120998_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120653120993_)))
                                                        (_hd120652120996_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120653120993_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120651120998_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl120645120982_))
                                                            (let ((_e120656121001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl120645120982_))))
                      (let ((_tl120654121006_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120656121001_)))
                            (_hd120655121004_
                             (let ()
                               (declare (not safe))
                               (##car _e120656121001_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd120655121004_))
                            (let ((_e120659121009_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd120655121004_))))
                              (let ((_tl120657121014_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120659121009_)))
                                    (_hd120658121012_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120659121009_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd120658121012_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd120658121012_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120657121014_))
                                            (let ((_e120662121017_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120657121014_))))
                                              (let ((_tl120660121022_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120662121017_)))
                                                    (_hd120661121020_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120662121017_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl120660121022_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl120654121006_))
                                                        (let ((_e120665121025_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl120654121006_))))
                  (let ((_tl120663121030_
                         (let () (declare (not safe)) (##cdr _e120665121025_)))
                        (_hd120664121028_
                         (let ()
                           (declare (not safe))
                           (##car _e120665121025_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd120664121028_))
                        (let ((_e120668121033_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd120664121028_))))
                          (let ((_tl120666121038_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120668121033_)))
                                (_hd120667121036_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120668121033_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd120667121036_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd120667121036_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120666121038_))
                                        (let ((_e120671121041_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120666121038_))))
                                          (let ((_tl120669121046_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120671121041_)))
                                                (_hd120670121044_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120671121041_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120669121046_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120663121030_))
                                                    (let ((_e120674121049_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120663121030_))))
                                                      (let ((_tl120672121054_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120674121049_)))
                    (_hd120673121052_
                     (let () (declare (not safe)) (##car _e120674121049_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd120673121052_))
                    (let ((_e120677121057_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd120673121052_))))
                      (let ((_tl120675121062_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120677121057_)))
                            (_hd120676121060_
                             (let ()
                               (declare (not safe))
                               (##car _e120677121057_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd120676121060_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd120676121060_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl120675121062_))
                                    (let ((_e120680121065_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl120675121062_))))
                                      (let ((_tl120678121070_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120680121065_)))
                                            (_hd120679121068_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120680121065_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120678121070_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120672121054_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl120630120942_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120621120918_))
                                                        (___kont126903126904_
                                                         _hd120679121068_
                                                         _hd120670121044_
                                                         _hd120652120996_
                                                         _hd120643120972_
                                                         _hd120628120932_
                                                         _hd120619120908_
                                                         _hd120610120884_
                                                         _hd120601120860_
                                                         _hd120586120820_
                                                         _hd120571120780_
                                                         _hd120553120732_)
                                                        (___kont126905126906_))
                                                    (___kont126905126906_))
                                                (___kont126905126906_))
                                            (___kont126905126906_))))
                                    (___kont126905126906_))
                                (___kont126905126906_))
                            (___kont126905126906_))))
                    (___kont126905126906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126905126906_))
                                                (___kont126905126906_))))
                                        (___kont126905126906_))
                                    (___kont126905126906_))
                                (___kont126905126906_))))
                        (___kont126905126906_))))
                (___kont126905126906_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126905126906_))))
                                            (___kont126905126906_))
                                        (___kont126905126906_))
                                    (___kont126905126906_))))
                            (___kont126905126906_))))
                    (___kont126905126906_))
                (___kont126905126906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126905126906_))
                                            (___kont126905126906_))
                                        (___kont126905126906_))))
                                (___kont126905126906_))))
                        (___kont126905126906_))
                    (___kont126905126906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126905126906_))
                                                (___kont126905126906_))
                                            (___kont126905126906_))))
                                    (___kont126905126906_))))
                            (___kont126905126906_))
                        (___kont126905126906_))
                    (___kont126905126906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126905126906_))))
                                            (___kont126905126906_))))
                                    (___kont126905126906_))
                                (___kont126905126906_))
                            (___kont126905126906_))))
                    (___kont126905126906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126905126906_))
                                                (___kont126905126906_))
                                            (___kont126905126906_))
                                        (___kont126905126906_))
                                    (___kont126905126906_))
                                (___kont126905126906_))))
                        (___kont126905126906_))
                    (___kont126905126906_))
                (___kont126905126906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126905126906_))))
                                        (___kont126905126906_))
                                    (___kont126905126906_))))
                            (___kont126905126906_))
                        (___kont126905126906_))
                    (___kont126905126906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126905126906_))))
                                            (___kont126905126906_))
                                        (___kont126905126906_))))
                                (___kont126905126906_))
                            (___kont126905126906_))
                        (___kont126905126906_))))
                (___kont126905126906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126905126906_))
                                            (___kont126905126906_))
                                        (___kont126905126906_))))
                                (___kont126905126906_))))
                        (___kont126905126906_))))
                (___kont126905126906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126905126906_))
                                            (___kont126905126906_))
                                        (___kont126905126906_))))
                                (___kont126905126906_))))
                        (___kont126905126906_))
                    (___kont126905126906_))
                (___kont126905126906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126905126906_))
                                            (___kont126905126906_))))
                                    (___kont126905126906_))))
                            (___kont126905126906_))))
                    (___kont126905126906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126905126906_))
                                                (___kont126905126906_))
                                            (___kont126905126906_))))
                                    (___kont126905126906_))))
                            (___kont126905126906_))
                        (___kont126905126906_))))
                (___kont126905126906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126905126906_))))
                                        (___kont126905126906_))))
                                (___kont126905126906_))
                            (___kont126905126906_))
                        (___kont126905126906_))))
                (___kont126905126906_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx120266_ _id120267_ _clauses120268_ _gensym?120269_)
        (let _lp120271_ ((_rest120273_ _clauses120268_)
                         (_ids120274_ '())
                         (_impls120275_ '())
                         (_clauses120276_ '()))
          (let* ((_rest120277120285_ _rest120273_)
                 (_else120279120293_
                  (lambda ()
                    (values (reverse _ids120274_)
                            (reverse _impls120275_)
                            (reverse _clauses120276_))))
                 (_K120281120498_
                  (lambda (_rest120296_ _clause120297_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause120297_))
                        (let ((__tmp127980
                               (let ()
                                 (declare (not safe))
                                 (cons _clause120297_ _clauses120276_))))
                          (declare (not safe))
                          (_lp120271_
                           _rest120296_
                           _ids120274_
                           _impls120275_
                           __tmp127980))
                        (let* ((_g120299120310_
                                (lambda (_g120300120307_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g120300120307_))))
                               (_g120298120495_
                                (lambda (_g120300120313_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g120300120313_))
                                      (let ((_e120305120315_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g120300120313_))))
                                        (let ((_hd120304120318_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120305120315_)))
                                              (_tl120303120320_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120305120315_))))
                                          ((lambda (_L120323_ _L120324_)
                                             (let* ((_id120341_
                                                     (let ((__tmp127927
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id120267_)))
                                                           (__tmp127926
                                                            (length _clauses120276_))
                                                           (__tmp127925
                                                            (if _gensym?120269_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp127927
                                                        '"__"
                                                        __tmp127926
                                                        __tmp127925)))
                                                    (_id120343_
                                                     (let ((__tmp127928
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx120266_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id120341_
                                                        __tmp127928)))
                                                    (_impl120345_
                                                     (let ((__tmp127929
                                                            (let ((__tmp127931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp127930
                           (let ()
                             (declare (not safe))
                             (cons _L120324_ _L120323_))))
                      (declare (not safe))
                      (cons __tmp127931 __tmp127930))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp127929 _stx120266_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause120492_
                                                     (let* ((___stx127285127286_
                                                             _L120324_)
                                                            (_g120349120377_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx127285127286_)))))
               (let ((___kont127287127288_
                      (lambda (_L120471_)
                        (let ((__tmp127932
                               (let ((__tmp127933
                                      (let ((__tmp127934
                                             (let ((__tmp127935
                                                    (let ((__tmp127941
                                                           (let ((__tmp127942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id120343_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp127942)))
                  (__tmp127936
                   (let ((__tmp127937
                          (lambda (_g120481120484_ _g120482120486_)
                            (let ((__tmp127938
                                   (let ((__tmp127940
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp127939
                                          (let ()
                                            (declare (not safe))
                                            (cons _g120481120484_ '()))))
                                     (declare (not safe))
                                     (cons __tmp127940 __tmp127939))))
                              (declare (not safe))
                              (cons __tmp127938 _g120482120486_)))))
                     (declare (not safe))
                     (foldr1 __tmp127937 '() _L120471_))))
              (declare (not safe))
              (cons __tmp127941 __tmp127936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp127935))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp127934
                                         _stx120266_))))
                                 (declare (not safe))
                                 (cons __tmp127933 '()))))
                          (declare (not safe))
                          (cons _L120324_ __tmp127932))))
                     (___kont127291127292_
                      (lambda (_L120422_ _L120423_)
                        (let ((__tmp127943
                               (let ((__tmp127944
                                      (let ((__tmp127945
                                             (let ((__tmp127946
                                                    (let ((__tmp127960
                                                           (let ((__tmp127961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp127961)))
                  (__tmp127947
                   (let ((__tmp127958
                          (let ((__tmp127959
                                 (let ()
                                   (declare (not safe))
                                   (cons _id120343_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp127959)))
                         (__tmp127948
                          (let ((__tmp127954
                                 (let ((__tmp127955
                                        (let ((__tmp127957
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp127956
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L120422_ '()))))
                                          (declare (not safe))
                                          (cons __tmp127957 __tmp127956))))
                                   (declare (not safe))
                                   (cons __tmp127955 '())))
                                (__tmp127949
                                 (let ((__tmp127950
                                        (lambda (_g120434120437_
                                                 _g120435120439_)
                                          (let ((__tmp127951
                                                 (let ((__tmp127953
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp127952
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g120434120437_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp127953
                                                         __tmp127952))))
                                            (declare (not safe))
                                            (cons __tmp127951
                                                  _g120435120439_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp127950 '() _L120423_))))
                            (declare (not safe))
                            (foldr1 cons __tmp127954 __tmp127949))))
                     (declare (not safe))
                     (cons __tmp127958 __tmp127948))))
              (declare (not safe))
              (cons __tmp127960 __tmp127947))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp127946))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp127945
                                         _stx120266_))))
                                 (declare (not safe))
                                 (cons __tmp127944 '()))))
                          (declare (not safe))
                          (cons _L120324_ __tmp127943))))
                     (___kont127295127296_
                      (lambda (_L120382_)
                        (let ((__tmp127962
                               (let ((__tmp127963
                                      (let ((__tmp127964
                                             (let ((__tmp127965
                                                    (let ((__tmp127973
                                                           (let ((__tmp127974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp127974)))
                  (__tmp127966
                   (let ((__tmp127971
                          (let ((__tmp127972
                                 (let ()
                                   (declare (not safe))
                                   (cons _id120343_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp127972)))
                         (__tmp127967
                          (let ((__tmp127968
                                 (let ((__tmp127970
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp127969
                                        (let ()
                                          (declare (not safe))
                                          (cons _L120382_ '()))))
                                   (declare (not safe))
                                   (cons __tmp127970 __tmp127969))))
                            (declare (not safe))
                            (cons __tmp127968 '()))))
                     (declare (not safe))
                     (cons __tmp127971 __tmp127967))))
              (declare (not safe))
              (cons __tmp127973 __tmp127966))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp127965))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp127964
                                         _stx120266_))))
                                 (declare (not safe))
                                 (cons __tmp127963 '()))))
                          (declare (not safe))
                          (cons _L120324_ __tmp127962)))))
                 (let* ((___match127310127311_
                         (lambda (___splice127293127294_
                                  _target120363120398_
                                  _tl120365120400_)
                           (letrec ((_loop120366120403_
                                     (lambda (_hd120364120406_
                                              _arg120370120408_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd120364120406_))
                                           (let ((_e120367120411_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd120364120406_))))
                                             (let ((_lp-tl120369120416_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120367120411_)))
                                                   (_lp-hd120368120414_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120367120411_))))
                                               (let ((__tmp127975
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd120368120414_
                                                              _arg120370120408_))))
                                                 (declare (not safe))
                                                 (_loop120366120403_
                                                  _lp-tl120369120416_
                                                  __tmp127975))))
                                           (let ((_arg120371120419_
                                                  (reverse _arg120370120408_)))
                                             (___kont127291127292_
                                              _tl120365120400_
                                              _arg120371120419_))))))
                             (let ()
                               (declare (not safe))
                               (_loop120366120403_
                                _target120363120398_
                                '())))))
                        (___match127304127305_
                         (lambda (___splice127289127290_
                                  _target120352120447_
                                  _tl120354120449_)
                           (letrec ((_loop120355120452_
                                     (lambda (_hd120353120455_
                                              _arg120359120457_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd120353120455_))
                                           (let ((_e120356120460_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd120353120455_))))
                                             (let ((_lp-tl120358120465_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120356120460_)))
                                                   (_lp-hd120357120463_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120356120460_))))
                                               (let ((__tmp127976
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd120357120463_
                                                              _arg120359120457_))))
                                                 (declare (not safe))
                                                 (_loop120355120452_
                                                  _lp-tl120358120465_
                                                  __tmp127976))))
                                           (let ((_arg120360120468_
                                                  (reverse _arg120359120457_)))
                                             (___kont127287127288_
                                              _arg120360120468_))))))
                             (let ()
                               (declare (not safe))
                               (_loop120355120452_
                                _target120352120447_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx127285127286_))
                       (let ((___splice127289127290_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx127285127286_
                                 '0))))
                         (let ((_tl120354120449_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice127289127290_ '1)))
                               (_target120352120447_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice127289127290_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120354120449_))
                               (___match127304127305_
                                ___splice127289127290_
                                _target120352120447_
                                _tl120354120449_)
                               (___match127310127311_
                                ___splice127289127290_
                                _target120352120447_
                                _tl120354120449_))))
                       (___kont127295127296_ ___stx127285127286_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp127979
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id120343_
                                                              _ids120274_)))
                                                     (__tmp127978
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl120345_
                                                              _impls120275_)))
                                                     (__tmp127977
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause120492_
                                                              _clauses120276_))))
                                                 (declare (not safe))
                                                 (_lp120271_
                                                  _rest120296_
                                                  __tmp127979
                                                  __tmp127978
                                                  __tmp127977))))
                                           _tl120303120320_
                                           _hd120304120318_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g120299120310_ _g120300120313_))))))
                          (declare (not safe))
                          (_g120298120495_ _clause120297_))))))
            (if (let () (declare (not safe)) (##pair? _rest120277120285_))
                (let ((_hd120282120501_
                       (let ()
                         (declare (not safe))
                         (##car _rest120277120285_)))
                      (_tl120283120503_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest120277120285_))))
                  (let* ((_clause120506_ _hd120282120501_)
                         (_rest120508_ _tl120283120503_))
                    (declare (not safe))
                    (_K120281120498_ _rest120508_ _clause120506_)))
                (let () (declare (not safe)) (_else120279120293_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx120513_ _id120514_ _clauses120515_)
        (let ((_gensym?120517_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx120513_
           _id120514_
           _clauses120515_
           _gensym?120517_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g127982_
        (let ((_g127981_ (let () (declare (not safe)) (##length _g127982_))))
          (cond ((let () (declare (not safe)) (##fx= _g127981_ 3))
                 (apply (lambda (_stx120513_ _id120514_ _clauses120515_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx120513_
                             _id120514_
                             _clauses120515_)))
                        _g127982_))
                ((let () (declare (not safe)) (##fx= _g127981_ 4))
                 (apply (lambda (_stx120519_
                                 _id120520_
                                 _clauses120521_
                                 _gensym?120522_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx120519_
                             _id120520_
                             _clauses120521_
                             _gensym?120522_)))
                        _g127982_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g127982_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx119543_)
        (letrec ((_case-lambda-clause-def119545_
                  (lambda (_id120262_ _impl120263_)
                    (let ((__tmp127983
                           (let ((__tmp127984
                                  (let ((__tmp127987
                                         (let ()
                                           (declare (not safe))
                                           (cons _id120262_ '())))
                                        (__tmp127985
                                         (let ((__tmp127986
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl120263_))))
                                           (declare (not safe))
                                           (cons __tmp127986 '()))))
                                    (declare (not safe))
                                    (cons __tmp127987 __tmp127985))))
                             (declare (not safe))
                             (cons '%#define-values __tmp127984))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp127983 _stx119543_))))
                 (_opt-lambda-dispatch-name119546_
                  (lambda (_id120258_)
                    (if (uninterned-symbol? _id120258_)
                        (let ((_str120260_ (symbol->string _id120258_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str120260_))
                              '"%"
                              _id120258_))
                        _id120258_)))
                 (_kw-lambda-dispatch-name119547_
                  (lambda (_id120253_ _name120254_)
                    (if (uninterned-symbol? _id120253_)
                        (let ((_str120256_ (symbol->string _id120253_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str120256_))
                              _name120254_
                              _id120253_))
                        _id120253_))))
          (let* ((___stx127333127334_ _stx119543_)
                 (_g119552119611_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx127333127334_)))))
            (let ((___kont127335127336_
                   (lambda (_L120162_ _L120163_)
                     (let* ((___stx127313127314_ _L120162_)
                            (_g120180120194_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx127313127314_)))))
                       (let ((___kont127315127316_
                              (lambda (_L120238_) _stx119543_))
                             (___kont127317127318_
                              (lambda (_L120207_)
                                (let ((_g127988_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx119543_
                                          _L120163_
                                          _L120207_))))
                                  (begin
                                    (let ((_g127989_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g127988_)
                                                 (##vector-length _g127988_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g127989_ 3)))
                                          (error "Context expects 3 values"
                                                 _g127989_)))
                                    (let ((_ids120217_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g127988_ 0)))
                                          (_impls120218_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g127988_ 1)))
                                          (_clauses120219_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g127988_ 2))))
                                      (let* ((_g127990_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids120217_))
                                             (_defs120222_
                                              (map _case-lambda-clause-def119545_
                                                   _ids120217_
                                                   _impls120218_)))
                                        (let ((__tmp127992
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L120163_)))
                                              (__tmp127991
                                               (map gxc#identifier-symbol
                                                    _ids120217_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp127992
                                           '" => "
                                           __tmp127991))
                                        (let ((__tmp127993
                                               (let ((__tmp127994
                                                      (let ((__tmp127995
                                                             (let ((__tmp127996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp127997
                                   (let ((__tmp127998
                                          (let ((__tmp128003
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L120163_ '())))
                                                (__tmp127999
                                                 (let ((__tmp128000
                                                        (let ((__tmp128002
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses120219_)))
                      (__tmp128001
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp128002 __tmp128001))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp128000 '()))))
                                            (declare (not safe))
                                            (cons __tmp128003 __tmp127999))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp127998))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp127997
                               _stx119543_))))
                       (declare (not safe))
                       (cons __tmp127996 '()))))
                (declare (not safe))
                (foldr1 cons __tmp127995 _defs120222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp127994))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp127993
                                           _stx119543_)))))))))
                         (let ((___match127324127325_
                                (lambda (_e120185120230_
                                         _hd120184120233_
                                         _tl120183120235_)
                                  (let ((_L120238_ _tl120183120235_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L120238_))
                                        (___kont127315127316_ _L120238_)
                                        (___kont127317127318_
                                         _tl120183120235_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx127313127314_))
                               (let ((_e120185120230_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx127313127314_))))
                                 (let ((_tl120183120235_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e120185120230_)))
                                       (_hd120184120233_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e120185120230_))))
                                   (___match127324127325_
                                    _e120185120230_
                                    _hd120184120233_
                                    _tl120183120235_)))
                               (let ()
                                 (declare (not safe))
                                 (_g120180120194_))))))))
                  (___kont127337127338_
                   (lambda (_L119980_ _L119981_)
                     (let* ((_g119997120027_
                             (lambda (_g119998120024_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g119998120024_))))
                            (_g119996120122_
                             (lambda (_g119998120030_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g119998120030_))
                                   (let ((_e120004120032_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g119998120030_))))
                                     (let ((_hd120003120035_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e120004120032_)))
                                           (_tl120002120037_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e120004120032_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl120002120037_))
                                           (let ((_e120007120040_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl120002120037_))))
                                             (let ((_hd120006120043_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120007120040_)))
                                                   (_tl120005120045_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120007120040_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120006120043_))
                                                   (let ((_e120010120048_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120006120043_))))
                                                     (let ((_hd120009120051_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120010120048_)))
                                                           (_tl120008120053_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120010120048_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd120009120051_))
                                                           (let ((_e120013120056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd120009120051_))))
                     (let ((_hd120012120059_
                            (let ()
                              (declare (not safe))
                              (##car _e120013120056_)))
                           (_tl120011120061_
                            (let ()
                              (declare (not safe))
                              (##cdr _e120013120056_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd120012120059_))
                           (let ((_e120016120064_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd120012120059_))))
                             (let ((_hd120015120067_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120016120064_)))
                                   (_tl120014120069_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120016120064_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120014120069_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl120011120061_))
                                       (let ((_e120019120072_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl120011120061_))))
                                         (let ((_hd120018120075_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120019120072_)))
                                               (_tl120017120077_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120019120072_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl120017120077_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl120008120053_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120005120045_))
                                                       (let ((_e120022120080_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120005120045_))))
                 (let ((_hd120021120083_
                        (let () (declare (not safe)) (##car _e120022120080_)))
                       (_tl120020120085_
                        (let () (declare (not safe)) (##cdr _e120022120080_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120020120085_))
                       ((lambda (_L120088_ _L120089_ _L120090_)
                          (let* ((_lambda-id120114_
                                  (let ((__tmp128006
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L119981_)))
                                        (__tmp128004
                                         (let ((__tmp128005
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L120090_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name119546_
                                            __tmp128005))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp128006
                                     '"__"
                                     __tmp128004)))
                                 (_lambda-id120116_
                                  (let ((__tmp128007
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx119543_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id120114_
                                     __tmp128007)))
                                 (_g128008_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id120116_)))
                                 (_new-case-lambda-expr120119_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L120088_
                                     _L120090_
                                     _lambda-id120116_))))
                            (let ((__tmp128010
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L119981_)))
                                  (__tmp128009
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id120116_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp128010
                               '" => "
                               __tmp128009))
                            (let ((__tmp128011
                                   (let ((__tmp128012
                                          (let ((__tmp128020
                                                 (let ((__tmp128021
                                                        (let ((__tmp128022
                                                               (let ((__tmp128025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id120116_ '())))
                             (__tmp128023
                              (let ((__tmp128024
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L120089_))))
                                (declare (not safe))
                                (cons __tmp128024 '()))))
                         (declare (not safe))
                         (cons __tmp128025 __tmp128023))))
                  (declare (not safe))
                  (cons '%#define-values __tmp128022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp128021
                                                    _stx119543_)))
                                                (__tmp128013
                                                 (let ((__tmp128014
                                                        (let ((__tmp128015
                                                               (let ((__tmp128016
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp128017
                                     (let ((__tmp128019
                                            (let ()
                                              (declare (not safe))
                                              (cons _L119981_ '())))
                                           (__tmp128018
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr120119_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp128019 __tmp128018))))
                                (declare (not safe))
                                (cons '%#define-values __tmp128017))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp128016 _stx119543_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp128015))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp128014 '()))))
                                            (declare (not safe))
                                            (cons __tmp128020 __tmp128013))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp128012))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp128011
                               _stx119543_))))
                        _hd120021120083_
                        _hd120018120075_
                        _hd120015120067_)
                       (let ()
                         (declare (not safe))
                         (_g119997120027_ _g119998120030_)))))
               (let () (declare (not safe)) (_g119997120027_ _g119998120030_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119997120027_
                                                      _g119998120030_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119997120027_
                                                  _g119998120030_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g119997120027_ _g119998120030_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g119997120027_ _g119998120030_)))))
                           (let ()
                             (declare (not safe))
                             (_g119997120027_ _g119998120030_)))))
                   (let ()
                     (declare (not safe))
                     (_g119997120027_ _g119998120030_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119997120027_
                                                      _g119998120030_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g119997120027_
                                              _g119998120030_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g119997120027_ _g119998120030_))))))
                       (declare (not safe))
                       (_g119996120122_ _L119980_))))
                  (___kont127339127340_
                   (lambda (_L119694_ _L119695_)
                     (let* ((_g119711119764_
                             (lambda (_g119712119761_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g119712119761_))))
                            (_g119710119940_
                             (lambda (_g119712119767_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g119712119767_))
                                   (let ((_e119720119769_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g119712119767_))))
                                     (let ((_hd119719119772_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e119720119769_)))
                                           (_tl119718119774_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e119720119769_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl119718119774_))
                                           (let ((_e119723119777_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl119718119774_))))
                                             (let ((_hd119722119780_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119723119777_)))
                                                   (_tl119721119782_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119723119777_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119722119780_))
                                                   (let ((_e119726119785_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119722119780_))))
                                                     (let ((_hd119725119788_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119726119785_)))
                                                           (_tl119724119790_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119726119785_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd119725119788_))
                                                           (let ((_e119729119793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd119725119788_))))
                     (let ((_hd119728119796_
                            (let ()
                              (declare (not safe))
                              (##car _e119729119793_)))
                           (_tl119727119798_
                            (let ()
                              (declare (not safe))
                              (##cdr _e119729119793_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd119728119796_))
                           (let ((_e119732119801_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd119728119796_))))
                             (let ((_hd119731119804_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e119732119801_)))
                                   (_tl119730119806_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e119732119801_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl119730119806_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl119727119798_))
                                       (let ((_e119735119809_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl119727119798_))))
                                         (let ((_hd119734119812_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119735119809_)))
                                               (_tl119733119814_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119735119809_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd119734119812_))
                                               (let ((_e119738119817_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd119734119812_))))
                                                 (let ((_hd119737119820_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e119738119817_)))
                                                       (_tl119736119822_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e119738119817_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119736119822_))
                                                       (let ((_e119741119825_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119736119822_))))
                 (let ((_hd119740119828_
                        (let () (declare (not safe)) (##car _e119741119825_)))
                       (_tl119739119830_
                        (let () (declare (not safe)) (##cdr _e119741119825_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd119740119828_))
                       (let ((_e119744119833_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd119740119828_))))
                         (let ((_hd119743119836_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119744119833_)))
                               (_tl119742119838_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119744119833_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd119743119836_))
                               (let ((_e119747119841_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd119743119836_))))
                                 (let ((_hd119746119844_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e119747119841_)))
                                       (_tl119745119846_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e119747119841_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd119746119844_))
                                       (let ((_e119750119849_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd119746119844_))))
                                         (let ((_hd119749119852_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119750119849_)))
                                               (_tl119748119854_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119750119849_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl119748119854_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl119745119846_))
                                                   (let ((_e119753119857_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl119745119846_))))
                                                     (let ((_hd119752119860_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119753119857_)))
                                                           (_tl119751119862_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119753119857_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119751119862_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl119742119838_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl119739119830_))
                           (let ((_e119756119865_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl119739119830_))))
                             (let ((_hd119755119868_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e119756119865_)))
                                   (_tl119754119870_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e119756119865_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl119754119870_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl119733119814_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl119724119790_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl119721119782_))
                                               (let ((_e119759119873_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl119721119782_))))
                                                 (let ((_hd119758119876_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e119759119873_)))
                                                       (_tl119757119878_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e119759119873_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl119757119878_))
                                                       ((lambda (_L119881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L119882_
                         _L119883_
                         _L119884_
                         _L119885_)
                  (let* ((_get-kws-id119925_
                          (let ((__tmp128028
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L119695_)))
                                (__tmp128026
                                 (let ((__tmp128027
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L119885_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name119547_
                                    __tmp128027
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp128028 '"__" __tmp128026)))
                         (_get-kws-id119927_
                          (let ((__tmp128029
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx119543_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id119925_
                             __tmp128029)))
                         (_main-id119929_
                          (let ((__tmp128032
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L119695_)))
                                (__tmp128030
                                 (let ((__tmp128031
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L119884_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name119547_
                                    __tmp128031
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp128032 '"__" __tmp128030)))
                         (_main-id119931_
                          (let ((__tmp128033
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx119543_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id119929_
                             __tmp128033)))
                         (_g128034_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id119927_)))
                         (_g128035_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id119931_)))
                         (_new-kw-dispatch119935_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L119881_
                             _L119885_
                             _get-kws-id119927_)))
                         (_new-get-kws119937_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L119882_
                             _L119884_
                             _main-id119931_))))
                    (let ((__tmp128038
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L119695_)))
                          (__tmp128037
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id119927_)))
                          (__tmp128036
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id119931_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp128038
                       '" => "
                       __tmp128037
                       '" => "
                       __tmp128036))
                    (let ((__tmp128039
                           (let ((__tmp128040
                                  (let ((__tmp128053
                                         (let ((__tmp128054
                                                (let ((__tmp128055
                                                       (let ((__tmp128056
                                                              (let ((__tmp128058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id119931_ '())))
                            (__tmp128057
                             (let ()
                               (declare (not safe))
                               (cons _L119883_ '()))))
                        (declare (not safe))
                        (cons __tmp128058 __tmp128057))))
                 (declare (not safe))
                 (cons '%#define-values __tmp128056))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128055
                                                   _stx119543_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp128054)))
                                        (__tmp128041
                                         (let ((__tmp128048
                                                (let ((__tmp128049
                                                       (let ((__tmp128050
                                                              (let ((__tmp128052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id119927_ '())))
                            (__tmp128051
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws119937_ '()))))
                        (declare (not safe))
                        (cons __tmp128052 __tmp128051))))
                 (declare (not safe))
                 (cons '%#define-values __tmp128050))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128049
                                                   _stx119543_)))
                                               (__tmp128042
                                                (let ((__tmp128043
                                                       (let ((__tmp128044
                                                              (let ((__tmp128045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp128047
                                    (let ()
                                      (declare (not safe))
                                      (cons _L119695_ '())))
                                   (__tmp128046
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch119935_ '()))))
                               (declare (not safe))
                               (cons __tmp128047 __tmp128046))))
                        (declare (not safe))
                        (cons '%#define-values __tmp128045))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp128044 _stx119543_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp128043 '()))))
                                           (declare (not safe))
                                           (cons __tmp128048 __tmp128042))))
                                    (declare (not safe))
                                    (cons __tmp128053 __tmp128041))))
                             (declare (not safe))
                             (cons '%#begin __tmp128040))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp128039 _stx119543_))))
                _hd119758119876_
                _hd119755119868_
                _hd119752119860_
                _hd119749119852_
                _hd119731119804_)
               (let ()
                 (declare (not safe))
                 (_g119711119764_ _g119712119767_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119711119764_
                                                  _g119712119767_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g119711119764_
                                              _g119712119767_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g119711119764_ _g119712119767_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g119711119764_ _g119712119767_)))))
                           (let ()
                             (declare (not safe))
                             (_g119711119764_ _g119712119767_)))
                       (let ()
                         (declare (not safe))
                         (_g119711119764_ _g119712119767_)))
                   (let ()
                     (declare (not safe))
                     (_g119711119764_ _g119712119767_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119711119764_
                                                      _g119712119767_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119711119764_
                                                  _g119712119767_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g119711119764_ _g119712119767_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g119711119764_ _g119712119767_)))))
                       (let ()
                         (declare (not safe))
                         (_g119711119764_ _g119712119767_)))))
               (let ()
                 (declare (not safe))
                 (_g119711119764_ _g119712119767_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119711119764_
                                                  _g119712119767_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g119711119764_ _g119712119767_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g119711119764_ _g119712119767_)))))
                           (let ()
                             (declare (not safe))
                             (_g119711119764_ _g119712119767_)))))
                   (let ()
                     (declare (not safe))
                     (_g119711119764_ _g119712119767_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119711119764_
                                                      _g119712119767_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g119711119764_
                                              _g119712119767_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g119711119764_ _g119712119767_))))))
                       (declare (not safe))
                       (_g119710119940_ _L119694_))))
                  (___kont127341127342_
                   (lambda (_L119640_ _L119641_)
                     (let ((__tmp128059
                            (let ((__tmp128060
                                   (let ((__tmp128061
                                          (let ((__tmp128062
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L119640_))))
                                            (declare (not safe))
                                            (cons __tmp128062 '()))))
                                     (declare (not safe))
                                     (cons _L119641_ __tmp128061))))
                              (declare (not safe))
                              (cons '%#define-values __tmp128060))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp128059 _stx119543_)))))
              (let* ((___match127426127427_
                      (lambda (_e119586119662_
                               _hd119585119665_
                               _tl119584119667_
                               _e119589119670_
                               _hd119588119673_
                               _tl119587119675_
                               _e119592119678_
                               _hd119591119681_
                               _tl119590119683_
                               _e119595119686_
                               _hd119594119689_
                               _tl119593119691_)
                        (let ((_L119694_ _hd119594119689_)
                              (_L119695_ _hd119591119681_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L119695_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L119694_)))
                              (___kont127339127340_ _L119694_ _L119695_)
                              (___kont127341127342_
                               _hd119594119689_
                               _hd119588119673_)))))
                     (___match127398127399_
                      (lambda (_e119572119948_
                               _hd119571119951_
                               _tl119570119953_
                               _e119575119956_
                               _hd119574119959_
                               _tl119573119961_
                               _e119578119964_
                               _hd119577119967_
                               _tl119576119969_
                               _e119581119972_
                               _hd119580119975_
                               _tl119579119977_)
                        (let ((_L119980_ _hd119580119975_)
                              (_L119981_ _hd119577119967_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L119981_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L119980_)))
                              (___kont127337127338_ _L119980_ _L119981_)
                              (___match127426127427_
                               _e119572119948_
                               _hd119571119951_
                               _tl119570119953_
                               _e119575119956_
                               _hd119574119959_
                               _tl119573119961_
                               _e119578119964_
                               _hd119577119967_
                               _tl119576119969_
                               _e119581119972_
                               _hd119580119975_
                               _tl119579119977_)))))
                     (___match127370127371_
                      (lambda (_e119558120130_
                               _hd119557120133_
                               _tl119556120135_
                               _e119561120138_
                               _hd119560120141_
                               _tl119559120143_
                               _e119564120146_
                               _hd119563120149_
                               _tl119562120151_
                               _e119567120154_
                               _hd119566120157_
                               _tl119565120159_)
                        (let ((_L120162_ _hd119566120157_)
                              (_L120163_ _hd119563120149_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120163_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L120162_)))
                              (___kont127335127336_ _L120162_ _L120163_)
                              (___match127398127399_
                               _e119558120130_
                               _hd119557120133_
                               _tl119556120135_
                               _e119561120138_
                               _hd119560120141_
                               _tl119559120143_
                               _e119564120146_
                               _hd119563120149_
                               _tl119562120151_
                               _e119567120154_
                               _hd119566120157_
                               _tl119565120159_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx127333127334_))
                    (let ((_e119558120130_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx127333127334_))))
                      (let ((_tl119556120135_
                             (let ()
                               (declare (not safe))
                               (##cdr _e119558120130_)))
                            (_hd119557120133_
                             (let ()
                               (declare (not safe))
                               (##car _e119558120130_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119556120135_))
                            (let ((_e119561120138_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119556120135_))))
                              (let ((_tl119559120143_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119561120138_)))
                                    (_hd119560120141_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119561120138_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd119560120141_))
                                    (let ((_e119564120146_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd119560120141_))))
                                      (let ((_tl119562120151_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e119564120146_)))
                                            (_hd119563120149_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e119564120146_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119562120151_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl119559120143_))
                                                (let ((_e119567120154_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl119559120143_))))
                                                  (let ((_tl119565120159_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e119567120154_)))
                                                        (_hd119566120157_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e119567120154_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl119565120159_))
                                                        (___match127370127371_
                                                         _e119558120130_
                                                         _hd119557120133_
                                                         _tl119556120135_
                                                         _e119561120138_
                                                         _hd119560120141_
                                                         _tl119559120143_
                                                         _e119564120146_
                                                         _hd119563120149_
                                                         _tl119562120151_
                                                         _e119567120154_
                                                         _hd119566120157_
                                                         _tl119565120159_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g119552119611_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119552119611_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl119559120143_))
                                                (let ((_e119606119632_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl119559120143_))))
                                                  (let ((_tl119604119637_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e119606119632_)))
                                                        (_hd119605119635_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e119606119632_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl119604119637_))
                                                        (___kont127341127342_
                                                         _hd119605119635_
                                                         _hd119560120141_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g119552119611_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119552119611_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl119559120143_))
                                        (let ((_e119606119632_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl119559120143_))))
                                          (let ((_tl119604119637_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e119606119632_)))
                                                (_hd119605119635_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e119606119632_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl119604119637_))
                                                (___kont127341127342_
                                                 _hd119605119635_
                                                 _hd119560120141_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119552119611_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g119552119611_))))))
                            (let () (declare (not safe)) (_g119552119611_)))))
                    (let () (declare (not safe)) (_g119552119611_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx118475_)
        (letrec* ((_bind-e__125729125730_
                   (lambda (_id119527_ _expr119528_ _compile?119529_)
                     (let ((__tmp128065
                            (let ()
                              (declare (not safe))
                              (cons _id119527_ '())))
                           (__tmp128063
                            (let ((__tmp128064
                                   (if _compile?119529_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr119528_))
                                       _expr119528_)))
                              (declare (not safe))
                              (cons __tmp128064 '()))))
                       (declare (not safe))
                       (cons __tmp128065 __tmp128063))))
                  (_bind-e__0__125731125732_
                   (lambda (_id119534_ _expr119535_)
                     (let ((_compile?119537_ '#t))
                       (declare (not safe))
                       (_bind-e__125729125730_
                        _id119534_
                        _expr119535_
                        _compile?119537_))))
                  (_bind-e118477_
                   (lambda _g128067_
                     (let ((_g128066_
                            (let ()
                              (declare (not safe))
                              (##length _g128067_))))
                       (cond ((let () (declare (not safe)) (##fx= _g128066_ 2))
                              (apply (lambda (_id119534_ _expr119535_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__125731125732_
                                          _id119534_
                                          _expr119535_)))
                                     _g128067_))
                             ((let () (declare (not safe)) (##fx= _g128066_ 3))
                              (apply (lambda (_id119539_
                                              _expr119540_
                                              _compile?119541_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__125729125730_
                                          _id119539_
                                          _expr119540_
                                          _compile?119541_)))
                                     _g128067_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g128067_))))))
                  (_compile-bindings118478_
                   (lambda (_bindings119111_)
                     (let _lp119113_ ((_rest119115_ _bindings119111_)
                                      (_lift1119116_ '())
                                      (_lift2119117_ '())
                                      (_bind119118_ '()))
                       (let* ((_rest119119119127_ _rest119115_)
                              (_else119121119135_
                               (lambda ()
                                 (values (reverse _lift1119116_)
                                         (reverse _lift2119117_)
                                         (reverse _bind119118_))))
                              (_K119123119514_
                               (lambda (_rest119138_ _hd119139_)
                                 (let* ((___stx127469127470_ _hd119139_)
                                        (_g119143119179_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx127469127470_)))))
                                   (let ((___kont127471127472_
                                          (lambda (_L119421_ _L119422_)
                                            (let* ((___stx127449127450_
                                                    _L119421_)
                                                   (_g119437119451_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx127449127450_)))))
                                              (let ((___kont127451127452_
                                                     (lambda (_L119499_)
                                                       (let ((__tmp128068
                                                              (let ((__tmp128069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__125729125730_
                                _L119422_
                                _L119421_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp128069 _bind119118_))))
                 (declare (not safe))
                 (_lp119113_
                  _rest119138_
                  _lift1119116_
                  _lift2119117_
                  __tmp128068))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127453127454_
                                                     (lambda (_L119464_)
                                                       (let ((_g128070_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx118475_
                         _L119422_
                         _L119464_
                         '#t))))
                 (begin
                   (let ((_g128071_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g128070_)
                                (##vector-length _g128070_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g128071_ 3)))
                         (error "Context expects 3 values" _g128071_)))
                   (let ((_ids119474_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128070_ 0)))
                         (_impls119475_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128070_ 1)))
                         (_clauses119476_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128070_ 2))))
                     (let* ((_g128072_
                             (for-each gx#core-bind-runtime! _ids119474_))
                            (_xbind119479_
                             (map _bind-e118477_ _ids119474_ _impls119475_))
                            (_expr*119481_
                             (let ((__tmp128074
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses119476_)))
                                   (__tmp128073
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp128074
                                __tmp128073)))
                            (_bind*119483_
                             (let ()
                               (declare (not safe))
                               (_bind-e__125729125730_
                                _L119422_
                                _expr*119481_
                                '#f))))
                       (let ((__tmp128076
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L119422_)))
                             (__tmp128075
                              (map gxc#identifier-symbol _ids119474_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp128076
                          '" => "
                          __tmp128075))
                       (let ((__tmp128078
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2119117_ _xbind119479_)))
                             (__tmp128077
                              (let ()
                                (declare (not safe))
                                (cons _bind*119483_ _bind119118_))))
                         (declare (not safe))
                         (_lp119113_
                          _rest119138_
                          _lift1119116_
                          __tmp128078
                          __tmp128077)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match127460127461_
                                                       (lambda (_e119442119491_
                                                                _hd119441119494_
                                                                _tl119440119496_)
                                                         (let ((_L119499_
                                                                _tl119440119496_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L119499_))
                       (___kont127451127452_ _L119499_)
                       (___kont127453127454_ _tl119440119496_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx127449127450_))
                                                      (let ((_e119442119491_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx127449127450_))))
                (let ((_tl119440119496_
                       (let () (declare (not safe)) (##cdr _e119442119491_)))
                      (_hd119441119494_
                       (let () (declare (not safe)) (##car _e119442119491_))))
                  (___match127460127461_
                   _e119442119491_
                   _hd119441119494_
                   _tl119440119496_)))
              (let () (declare (not safe)) (_g119437119451_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont127473127474_
                                          (lambda (_L119249_ _L119250_)
                                            (let* ((_g119264119294_
                                                    (lambda (_g119265119291_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119265119291_))))
                                                   (_g119263119389_
                                                    (lambda (_g119265119297_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119265119297_))
                                                          (let ((_e119271119299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119265119297_))))
                    (let ((_hd119270119302_
                           (let ()
                             (declare (not safe))
                             (##car _e119271119299_)))
                          (_tl119269119304_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119271119299_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119269119304_))
                          (let ((_e119274119307_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119269119304_))))
                            (let ((_hd119273119310_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119274119307_)))
                                  (_tl119272119312_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119274119307_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119273119310_))
                                  (let ((_e119277119315_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119273119310_))))
                                    (let ((_hd119276119318_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119277119315_)))
                                          (_tl119275119320_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119277119315_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119276119318_))
                                          (let ((_e119280119323_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119276119318_))))
                                            (let ((_hd119279119326_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119280119323_)))
                                                  (_tl119278119328_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119280119323_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119279119326_))
                                                  (let ((_e119283119331_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119279119326_))))
                                                    (let ((_hd119282119334_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119283119331_)))
                                                          (_tl119281119336_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119283119331_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119281119336_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119278119328_))
                      (let ((_e119286119339_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119278119328_))))
                        (let ((_hd119285119342_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119286119339_)))
                              (_tl119284119344_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119286119339_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119284119344_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119275119320_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119272119312_))
                                      (let ((_e119289119347_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119272119312_))))
                                        (let ((_hd119288119350_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119289119347_)))
                                              (_tl119287119352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119289119347_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119287119352_))
                                              ((lambda (_L119355_
                                                        _L119356_
                                                        _L119357_)
                                                 (let* ((_lambda-id119381_
                                                         (let ((__tmp128080
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L119250_)))
                       (__tmp128079 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp128080 __tmp128079)))
                (_lambda-id119383_
                 (let ((__tmp128081
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx118475_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id119381_ __tmp128081)))
                (_g128082_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id119383_)))
                (_new-case-lambda-expr119386_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L119355_
                    _L119357_
                    _lambda-id119383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp128084
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L119250_)))
                                                         (__tmp128083
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id119383_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp128084
                                                      '" => "
                                                      __tmp128083))
                                                   (let ((__tmp128087
                                                          (let ((__tmp128088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__125729125730_
                            _L119250_
                            _new-case-lambda-expr119386_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp128088 _rest119138_)))
                 (__tmp128085
                  (let ((__tmp128086
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__125731125732_
                            _lambda-id119383_
                            _L119356_))))
                    (declare (not safe))
                    (cons __tmp128086 _lift1119116_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp119113_
                                                      __tmp128087
                                                      __tmp128085
                                                      _lift2119117_
                                                      _bind119118_))))
                                               _hd119288119350_
                                               _hd119285119342_
                                               _hd119282119334_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119264119294_
                                                 _g119265119297_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119264119294_ _g119265119297_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119264119294_ _g119265119297_)))
                              (let ()
                                (declare (not safe))
                                (_g119264119294_ _g119265119297_)))))
                      (let ()
                        (declare (not safe))
                        (_g119264119294_ _g119265119297_)))
                  (let ()
                    (declare (not safe))
                    (_g119264119294_ _g119265119297_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119264119294_
                                                     _g119265119297_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119264119294_
                                             _g119265119297_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119264119294_ _g119265119297_)))))
                          (let ()
                            (declare (not safe))
                            (_g119264119294_ _g119265119297_)))))
                  (let ()
                    (declare (not safe))
                    (_g119264119294_ _g119265119297_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119263119389_ _L119249_))))
                                         (___kont127475127476_
                                          (lambda (_L119200_ _L119201_)
                                            (let ((__tmp128089
                                                   (let ((__tmp128090
                                                          (let ((__tmp128091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128092
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L119200_))))
                           (declare (not safe))
                           (cons __tmp128092 '()))))
                    (declare (not safe))
                    (cons _L119201_ __tmp128091))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128090
                                                           _bind119118_))))
                                              (declare (not safe))
                                              (_lp119113_
                                               _rest119138_
                                               _lift1119116_
                                               _lift2119117_
                                               __tmp128089)))))
                                     (let* ((___match127520127521_
                                             (lambda (_e119160119225_
                                                      _hd119159119228_
                                                      _tl119158119230_
                                                      _e119163119233_
                                                      _hd119162119236_
                                                      _tl119161119238_
                                                      _e119166119241_
                                                      _hd119165119244_
                                                      _tl119164119246_)
                                               (let ((_L119249_
                                                      _hd119165119244_)
                                                     (_L119250_
                                                      _hd119162119236_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119250_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L119249_)))
                                                     (___kont127473127474_
                                                      _L119249_
                                                      _L119250_)
                                                     (___kont127475127476_
                                                      _hd119165119244_
                                                      _hd119159119228_)))))
                                            (___match127498127499_
                                             (lambda (_e119149119397_
                                                      _hd119148119400_
                                                      _tl119147119402_
                                                      _e119152119405_
                                                      _hd119151119408_
                                                      _tl119150119410_
                                                      _e119155119413_
                                                      _hd119154119416_
                                                      _tl119153119418_)
                                               (let ((_L119421_
                                                      _hd119154119416_)
                                                     (_L119422_
                                                      _hd119151119408_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119422_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L119421_)))
                                                     (___kont127471127472_
                                                      _L119421_
                                                      _L119422_)
                                                     (___match127520127521_
                                                      _e119149119397_
                                                      _hd119148119400_
                                                      _tl119147119402_
                                                      _e119152119405_
                                                      _hd119151119408_
                                                      _tl119150119410_
                                                      _e119155119413_
                                                      _hd119154119416_
                                                      _tl119153119418_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx127469127470_))
                                           (let ((_e119149119397_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx127469127470_))))
                                             (let ((_tl119147119402_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119149119397_)))
                                                   (_hd119148119400_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119149119397_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119148119400_))
                                                   (let ((_e119152119405_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119148119400_))))
                                                     (let ((_tl119150119410_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119152119405_)))
                                                           (_hd119151119408_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119152119405_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119150119410_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119147119402_))
                       (let ((_e119155119413_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119147119402_))))
                         (let ((_tl119153119418_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119155119413_)))
                               (_hd119154119416_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119155119413_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119153119418_))
                               (___match127498127499_
                                _e119149119397_
                                _hd119148119400_
                                _tl119147119402_
                                _e119152119405_
                                _hd119151119408_
                                _tl119150119410_
                                _e119155119413_
                                _hd119154119416_
                                _tl119153119418_)
                               (let ()
                                 (declare (not safe))
                                 (_g119143119179_)))))
                       (let () (declare (not safe)) (_g119143119179_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119147119402_))
                       (let ((_e119174119192_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119147119402_))))
                         (let ((_tl119172119197_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119174119192_)))
                               (_hd119173119195_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119174119192_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119172119197_))
                               (___kont127475127476_
                                _hd119173119195_
                                _hd119148119400_)
                               (let ()
                                 (declare (not safe))
                                 (_g119143119179_)))))
                       (let () (declare (not safe)) (_g119143119179_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119147119402_))
                                                       (let ((_e119174119192_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119147119402_))))
                 (let ((_tl119172119197_
                        (let () (declare (not safe)) (##cdr _e119174119192_)))
                       (_hd119173119195_
                        (let () (declare (not safe)) (##car _e119174119192_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119172119197_))
                       (___kont127475127476_ _hd119173119195_ _hd119148119400_)
                       (let () (declare (not safe)) (_g119143119179_)))))
               (let () (declare (not safe)) (_g119143119179_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119143119179_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest119119119127_))
                             (let ((_hd119124119517_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest119119119127_)))
                                   (_tl119125119519_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest119119119127_))))
                               (let* ((_hd119522_ _hd119124119517_)
                                      (_rest119524_ _tl119125119519_))
                                 (declare (not safe))
                                 (_K119123119514_ _rest119524_ _hd119522_)))
                             (let ()
                               (declare (not safe))
                               (_else119121119135_)))))))
                  (_lift-kw-lambda?118479_
                   (lambda (_bind119035_)
                     (let* ((___stx127537127538_ _bind119035_)
                            (_g119038119055_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx127537127538_)))))
                       (let ((___kont127539127540_
                              (lambda (_L119091_ _L119092_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L119092_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L119091_))
                                    '#f)))
                             (___kont127541127542_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx127537127538_))
                             (let ((_e119044119067_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx127537127538_))))
                               (let ((_tl119042119072_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e119044119067_)))
                                     (_hd119043119070_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e119044119067_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd119043119070_))
                                     (let ((_e119047119075_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd119043119070_))))
                                       (let ((_tl119045119080_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e119047119075_)))
                                             (_hd119046119078_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e119047119075_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl119045119080_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl119042119072_))
                                                 (let ((_e119050119083_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl119042119072_))))
                                                   (let ((_tl119048119088_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e119050119083_)))
                                                         (_hd119049119086_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e119050119083_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl119048119088_))
                                                         (___kont127539127540_
                                                          _hd119049119086_
                                                          _hd119046119078_)
                                                         (___kont127541127542_))))
                                                 (___kont127541127542_))
                                             (___kont127541127542_))))
                                     (___kont127541127542_))))
                             (___kont127541127542_))))))
                  (_lift-kw-lambda-bindings118480_
                   (lambda (_bindings118647_)
                     (let _lp118649_ ((_rest118651_ _bindings118647_)
                                      (_lift1118652_ '())
                                      (_lift2118653_ '())
                                      (_bind118654_ '()))
                       (let* ((_rest118655118663_ _rest118651_)
                              (_else118657118671_
                               (lambda ()
                                 (values (reverse _lift1118652_)
                                         (reverse _lift2118653_)
                                         (reverse _bind118654_))))
                              (_K118659119023_
                               (lambda (_rest118674_ _hd118675_)
                                 (let* ((___stx127567127568_ _hd118675_)
                                        (_g118678118703_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx127567127568_)))))
                                   (let ((___kont127569127570_
                                          (lambda (_L118773_ _L118774_)
                                            (let* ((_g118788118841_
                                                    (lambda (_g118789118838_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118789118838_))))
                                                   (_g118787119017_
                                                    (lambda (_g118789118844_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118789118844_))
                                                          (let ((_e118797118846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118789118844_))))
                    (let ((_hd118796118849_
                           (let ()
                             (declare (not safe))
                             (##car _e118797118846_)))
                          (_tl118795118851_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118797118846_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118795118851_))
                          (let ((_e118800118854_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118795118851_))))
                            (let ((_hd118799118857_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118800118854_)))
                                  (_tl118798118859_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118800118854_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118799118857_))
                                  (let ((_e118803118862_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118799118857_))))
                                    (let ((_hd118802118865_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118803118862_)))
                                          (_tl118801118867_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118803118862_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118802118865_))
                                          (let ((_e118806118870_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118802118865_))))
                                            (let ((_hd118805118873_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118806118870_)))
                                                  (_tl118804118875_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118806118870_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd118805118873_))
                                                  (let ((_e118809118878_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd118805118873_))))
                                                    (let ((_hd118808118881_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118809118878_)))
                                                          (_tl118807118883_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118809118878_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118807118883_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118804118875_))
                      (let ((_e118812118886_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118804118875_))))
                        (let ((_hd118811118889_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118812118886_)))
                              (_tl118810118891_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118812118886_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118811118889_))
                              (let ((_e118815118894_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118811118889_))))
                                (let ((_hd118814118897_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118815118894_)))
                                      (_tl118813118899_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118815118894_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118813118899_))
                                      (let ((_e118818118902_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118813118899_))))
                                        (let ((_hd118817118905_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118818118902_)))
                                              (_tl118816118907_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118818118902_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd118817118905_))
                                              (let ((_e118821118910_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd118817118905_))))
                                                (let ((_hd118820118913_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118821118910_)))
                                                      (_tl118819118915_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118821118910_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118820118913_))
                                                      (let ((_e118824118918_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd118820118913_))))
                (let ((_hd118823118921_
                       (let () (declare (not safe)) (##car _e118824118918_)))
                      (_tl118822118923_
                       (let () (declare (not safe)) (##cdr _e118824118918_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118823118921_))
                      (let ((_e118827118926_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118823118921_))))
                        (let ((_hd118826118929_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118827118926_)))
                              (_tl118825118931_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118827118926_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118825118931_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118822118923_))
                                  (let ((_e118830118934_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118822118923_))))
                                    (let ((_hd118829118937_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118830118934_)))
                                          (_tl118828118939_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118830118934_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118828118939_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118819118915_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118816118907_))
                                                  (let ((_e118833118942_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118816118907_))))
                                                    (let ((_hd118832118945_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118833118942_)))
                                                          (_tl118831118947_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118833118942_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118831118947_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl118810118891_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl118801118867_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118798118859_))
                              (let ((_e118836118950_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118798118859_))))
                                (let ((_hd118835118953_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118836118950_)))
                                      (_tl118834118955_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118836118950_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118834118955_))
                                      ((lambda (_L118958_
                                                _L118959_
                                                _L118960_
                                                _L118961_
                                                _L118962_)
                                         (let* ((_get-kws-id119002_
                                                 (let ((__tmp128094
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118774_)))
                                                       (__tmp128093
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128094
                                                    __tmp128093)))
                                                (_get-kws-id119004_
                                                 (let ((__tmp128095
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118475_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id119002_
                                                    __tmp128095)))
                                                (_main-id119006_
                                                 (let ((__tmp128097
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118774_)))
                                                       (__tmp128096
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128097
                                                    __tmp128096)))
                                                (_main-id119008_
                                                 (let ((__tmp128098
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118475_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id119006_
                                                    __tmp128098)))
                                                (_g128099_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id119004_)))
                                                (_g128100_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id119008_)))
                                                (_new-kw-dispatch119012_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118958_
                                                    _L118962_
                                                    _get-kws-id119004_)))
                                                (_new-get-kws119014_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118959_
                                                    _L118961_
                                                    _main-id119008_))))
                                           (let ((__tmp128103
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L118774_)))
                                                 (__tmp128102
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id119004_)))
                                                 (__tmp128101
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id119008_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp128103
                                              '" => "
                                              __tmp128102
                                              '" => "
                                              __tmp128101))
                                           (let ((__tmp128108
                                                  (let ((__tmp128109
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125729125730_
                                                            _main-id119008_
                                                            _L118960_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp128109
                                                          _lift1118652_)))
                                                 (__tmp128106
                                                  (let ((__tmp128107
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125729125730_
                                                            _get-kws-id119004_
                                                            _new-get-kws119014_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp128107
                                                          _lift2118653_)))
                                                 (__tmp128104
                                                  (let ((__tmp128105
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125729125730_
                                                            _L118774_
                                                            _new-kw-dispatch119012_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp128105
                                                          _bind118654_))))
                                             (declare (not safe))
                                             (_lp118649_
                                              _rest118674_
                                              __tmp128108
                                              __tmp128106
                                              __tmp128104))))
                                       _hd118835118953_
                                       _hd118832118945_
                                       _hd118829118937_
                                       _hd118826118929_
                                       _hd118808118881_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118788118841_ _g118789118844_)))))
                              (let ()
                                (declare (not safe))
                                (_g118788118841_ _g118789118844_)))
                          (let ()
                            (declare (not safe))
                            (_g118788118841_ _g118789118844_)))
                      (let ()
                        (declare (not safe))
                        (_g118788118841_ _g118789118844_)))
                  (let ()
                    (declare (not safe))
                    (_g118788118841_ _g118789118844_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118788118841_
                                                     _g118789118844_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g118788118841_
                                                 _g118789118844_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g118788118841_
                                             _g118789118844_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118788118841_ _g118789118844_)))
                              (let ()
                                (declare (not safe))
                                (_g118788118841_ _g118789118844_)))))
                      (let ()
                        (declare (not safe))
                        (_g118788118841_ _g118789118844_)))))
              (let ()
                (declare (not safe))
                (_g118788118841_ _g118789118844_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g118788118841_
                                                 _g118789118844_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118788118841_ _g118789118844_)))))
                              (let ()
                                (declare (not safe))
                                (_g118788118841_ _g118789118844_)))))
                      (let ()
                        (declare (not safe))
                        (_g118788118841_ _g118789118844_)))
                  (let ()
                    (declare (not safe))
                    (_g118788118841_ _g118789118844_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118788118841_
                                                     _g118789118844_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118788118841_
                                             _g118789118844_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118788118841_ _g118789118844_)))))
                          (let ()
                            (declare (not safe))
                            (_g118788118841_ _g118789118844_)))))
                  (let ()
                    (declare (not safe))
                    (_g118788118841_ _g118789118844_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118787119017_ _L118773_))))
                                         (___kont127571127572_
                                          (lambda (_L118724_ _L118725_)
                                            (let ((__tmp128110
                                                   (let ((__tmp128111
                                                          (let ((__tmp128112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L118724_ '()))))
                    (declare (not safe))
                    (cons _L118725_ __tmp128112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128111
                                                           _bind118654_))))
                                              (declare (not safe))
                                              (_lp118649_
                                               _rest118674_
                                               _lift1118652_
                                               _lift2118653_
                                               __tmp128110)))))
                                     (let ((___match127594127595_
                                            (lambda (_e118684118749_
                                                     _hd118683118752_
                                                     _tl118682118754_
                                                     _e118687118757_
                                                     _hd118686118760_
                                                     _tl118685118762_
                                                     _e118690118765_
                                                     _hd118689118768_
                                                     _tl118688118770_)
                                              (let ((_L118773_
                                                     _hd118689118768_)
                                                    (_L118774_
                                                     _hd118686118760_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L118774_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L118773_)))
                                                    (___kont127569127570_
                                                     _L118773_
                                                     _L118774_)
                                                    (___kont127571127572_
                                                     _hd118689118768_
                                                     _hd118683118752_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx127567127568_))
                                           (let ((_e118684118749_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx127567127568_))))
                                             (let ((_tl118682118754_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e118684118749_)))
                                                   (_hd118683118752_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e118684118749_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd118683118752_))
                                                   (let ((_e118687118757_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd118683118752_))))
                                                     (let ((_tl118685118762_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e118687118757_)))
                                                           (_hd118686118760_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e118687118757_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl118685118762_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl118682118754_))
                       (let ((_e118690118765_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118682118754_))))
                         (let ((_tl118688118770_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118690118765_)))
                               (_hd118689118768_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118690118765_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118688118770_))
                               (___match127594127595_
                                _e118684118749_
                                _hd118683118752_
                                _tl118682118754_
                                _e118687118757_
                                _hd118686118760_
                                _tl118685118762_
                                _e118690118765_
                                _hd118689118768_
                                _tl118688118770_)
                               (let ()
                                 (declare (not safe))
                                 (_g118678118703_)))))
                       (let () (declare (not safe)) (_g118678118703_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl118682118754_))
                       (let ((_e118698118716_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118682118754_))))
                         (let ((_tl118696118721_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118698118716_)))
                               (_hd118697118719_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118698118716_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118696118721_))
                               (___kont127571127572_
                                _hd118697118719_
                                _hd118683118752_)
                               (let ()
                                 (declare (not safe))
                                 (_g118678118703_)))))
                       (let () (declare (not safe)) (_g118678118703_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl118682118754_))
                                                       (let ((_e118698118716_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl118682118754_))))
                 (let ((_tl118696118721_
                        (let () (declare (not safe)) (##cdr _e118698118716_)))
                       (_hd118697118719_
                        (let () (declare (not safe)) (##car _e118698118716_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl118696118721_))
                       (___kont127571127572_ _hd118697118719_ _hd118683118752_)
                       (let () (declare (not safe)) (_g118678118703_)))))
               (let () (declare (not safe)) (_g118678118703_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g118678118703_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest118655118663_))
                             (let ((_hd118660119026_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest118655118663_)))
                                   (_tl118661119028_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest118655118663_))))
                               (let* ((_hd119031_ _hd118660119026_)
                                      (_rest119033_ _tl118661119028_))
                                 (declare (not safe))
                                 (_K118659119023_ _rest119033_ _hd119031_)))
                             (let ()
                               (declare (not safe))
                               (_else118657118671_))))))))
          (let* ((___stx127611127612_ _stx118475_)
                 (_g118483118509_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx127611127612_)))))
            (let ((___kont127613127614_
                   (lambda (_L118569_ _L118570_)
                     (let ((__tmp128114
                            (lambda ()
                              (if (let ((__tmp128141
                                         (let ((__tmp128142
                                                (lambda (_g118598118601_
                                                         _g118599118603_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g118598118601_
                                                          _g118599118603_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp128142
                                                   '()
                                                   _L118570_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?118479_
                                            __tmp128141))
                                  (let ((_g128128_
                                         (let ((__tmp128130
                                                (let ((__tmp128131
                                                       (lambda (_g118605118608_
                                                                _g118606118610_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g118605118608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g118606118610_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp128131
                                                          '()
                                                          _L118570_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings118480_
                                            __tmp128130))))
                                    (begin
                                      (let ((_g128129_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g128128_)
                                                   (##vector-length _g128128_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g128129_ 3)))
                                            (error "Context expects 3 values"
                                                   _g128129_)))
                                      (let ((_lift1118613_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128128_ 0)))
                                            (_lift2118614_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128128_ 1)))
                                            (_hd118615_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128128_ 2))))
                                        (let* ((_expr118617_
                                                (let ((__tmp128132
                                                       (let ((__tmp128133
                                                              (let ((__tmp128134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L118569_ '()))))
                        (declare (not safe))
                        (cons _hd118615_ __tmp128134))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128132
                                                   _stx118475_)))
                                               (_expr118619_
                                                (let ((__tmp128135
                                                       (let ((__tmp128136
                                                              (let ((__tmp128137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr118617_ '()))))
                        (declare (not safe))
                        (cons _lift2118614_ __tmp128137))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128135
                                                   _stx118475_)))
                                               (_expr118621_
                                                (let ((__tmp128138
                                                       (let ((__tmp128139
                                                              (let ((__tmp128140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr118619_ '()))))
                        (declare (not safe))
                        (cons _lift1118613_ __tmp128140))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128139))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128138
                                                   _stx118475_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr118621_))))))
                                  (let ((_g128115_
                                         (let ((__tmp128117
                                                (let ((__tmp128118
                                                       (lambda (_g118623118626_
                                                                _g118624118628_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g118623118626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g118624118628_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp128118
                                                          '()
                                                          _L118570_))))
                                           (declare (not safe))
                                           (_compile-bindings118478_
                                            __tmp128117))))
                                    (begin
                                      (let ((_g128116_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g128115_)
                                                   (##vector-length _g128115_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g128116_ 3)))
                                            (error "Context expects 3 values"
                                                   _g128116_)))
                                      (let ((_lift1118631_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128115_ 0)))
                                            (_lift2118632_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128115_ 1)))
                                            (_hd118633_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128115_ 2))))
                                        (let* ((_body118635_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L118569_)))
                                               (_expr118637_
                                                (let ((__tmp128119
                                                       (let ((__tmp128120
                                                              (let ((__tmp128121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body118635_ '()))))
                        (declare (not safe))
                        (cons _hd118633_ __tmp128121))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128120))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128119
                                                   _stx118475_)))
                                               (_expr118639_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2118632_))
                                                    _expr118637_
                                                    (let ((__tmp128122
                                                           (let ((__tmp128123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128124
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr118637_ '()))))
                            (declare (not safe))
                            (cons _lift2118632_ __tmp128124))))
                     (declare (not safe))
                     (cons '%#let-values __tmp128123))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp128122 _stx118475_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr118641_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1118631_))
                                                    _expr118639_
                                                    (let ((__tmp128125
                                                           (let ((__tmp128126
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128127
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr118639_ '()))))
                            (declare (not safe))
                            (cons _lift1118631_ __tmp128127))))
                     (declare (not safe))
                     (cons '%#let-values __tmp128126))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp128125 _stx118475_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr118641_)))))))
                           (__tmp128113
                            (let ((__obj127817
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj127817)
                              __obj127817)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp128114
                        gx#current-expander-context
                        __tmp128113))))
                  (___kont127617127618_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx118475_)))))
              (let ((___match127638127639_
                     (lambda (_e118489118521_
                              _hd118488118524_
                              _tl118487118526_
                              _e118492118529_
                              _hd118491118532_
                              _tl118490118534_
                              ___splice127615127616_
                              _target118493118537_
                              _tl118495118539_)
                       (letrec ((_loop118496118542_
                                 (lambda (_hd118494118545_ _bind118500118547_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd118494118545_))
                                       (let ((_e118497118550_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd118494118545_))))
                                         (let ((_lp-tl118499118555_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e118497118550_)))
                                               (_lp-hd118498118553_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e118497118550_))))
                                           (let ((__tmp128145
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd118498118553_
                                                          _bind118500118547_))))
                                             (declare (not safe))
                                             (_loop118496118542_
                                              _lp-tl118499118555_
                                              __tmp128145))))
                                       (let ((_bind118501118558_
                                              (reverse _bind118500118547_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl118490118534_))
                                             (let ((_e118504118561_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl118490118534_))))
                                               (let ((_tl118502118566_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e118504118561_)))
                                                     (_hd118503118564_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e118504118561_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl118502118566_))
                                                     (let ((_L118569_
                                                            _hd118503118564_)
                                                           (_L118570_
                                                            _bind118501118558_))
                                                       (if (let ((__tmp128143
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128144
                                 (lambda (_g118590118593_ _g118591118595_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g118590118593_ _g118591118595_)))))
                            (declare (not safe))
                            (foldr1 __tmp128144 '() _L118570_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp128143))
                   (___kont127613127614_ _L118569_ _L118570_)
                   (___kont127617127618_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont127617127618_))))
                                             (___kont127617127618_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop118496118542_ _target118493118537_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx127611127612_))
                    (let ((_e118489118521_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx127611127612_))))
                      (let ((_tl118487118526_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118489118521_)))
                            (_hd118488118524_
                             (let ()
                               (declare (not safe))
                               (##car _e118489118521_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118487118526_))
                            (let ((_e118492118529_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118487118526_))))
                              (let ((_tl118490118534_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118492118529_)))
                                    (_hd118491118532_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118492118529_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd118491118532_))
                                    (let ((___splice127615127616_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd118491118532_
                                              '0))))
                                      (let ((_tl118495118539_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127615127616_
                                                '1)))
                                            (_target118493118537_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127615127616_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118495118539_))
                                            (___match127638127639_
                                             _e118489118521_
                                             _hd118488118524_
                                             _tl118487118526_
                                             _e118492118529_
                                             _hd118491118532_
                                             _tl118490118534_
                                             ___splice127615127616_
                                             _target118493118537_
                                             _tl118495118539_)
                                            (___kont127617127618_))))
                                    (___kont127617127618_))))
                            (___kont127617127618_))))
                    (___kont127617127618_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx117619_)
        (letrec* ((_bind-e__125734125735_
                   (lambda (_id118459_ _expr118460_ _compile?118461_)
                     (let ((__tmp128148
                            (let ()
                              (declare (not safe))
                              (cons _id118459_ '())))
                           (__tmp128146
                            (let ((__tmp128147
                                   (if _compile?118461_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr118460_))
                                       _expr118460_)))
                              (declare (not safe))
                              (cons __tmp128147 '()))))
                       (declare (not safe))
                       (cons __tmp128148 __tmp128146))))
                  (_bind-e__0__125736125737_
                   (lambda (_id118466_ _expr118467_)
                     (let ((_compile?118469_ '#t))
                       (declare (not safe))
                       (_bind-e__125734125735_
                        _id118466_
                        _expr118467_
                        _compile?118469_))))
                  (_bind-e117621_
                   (lambda _g128150_
                     (let ((_g128149_
                            (let ()
                              (declare (not safe))
                              (##length _g128150_))))
                       (cond ((let () (declare (not safe)) (##fx= _g128149_ 2))
                              (apply (lambda (_id118466_ _expr118467_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__125736125737_
                                          _id118466_
                                          _expr118467_)))
                                     _g128150_))
                             ((let () (declare (not safe)) (##fx= _g128149_ 3))
                              (apply (lambda (_id118471_
                                              _expr118472_
                                              _compile?118473_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__125734125735_
                                          _id118471_
                                          _expr118472_
                                          _compile?118473_)))
                                     _g128150_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g128150_))))))
                  (_compile-bindings117622_
                   (lambda (_rest117757_)
                     (let _lp117759_ ((_rest117761_ _rest117757_)
                                      (_bind117762_ '()))
                       (let* ((_rest117763117771_ _rest117761_)
                              (_else117765117779_
                               (lambda () (reverse _bind117762_)))
                              (_K117767118446_
                               (lambda (_rest117782_ _hd117783_)
                                 (let* ((___stx127661127662_ _hd117783_)
                                        (_g117788117835_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx127661127662_)))))
                                   (let ((___kont127663127664_
                                          (lambda (_L118353_ _L118354_)
                                            (let* ((___stx127641127642_
                                                    _L118353_)
                                                   (_g118369118383_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx127641127642_)))))
                                              (let ((___kont127643127644_
                                                     (lambda (_L118431_)
                                                       (let ((__tmp128151
                                                              (let ((__tmp128152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__125734125735_
                                _L118354_
                                _L118353_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp128152 _bind117762_))))
                 (declare (not safe))
                 (_lp117759_ _rest117782_ __tmp128151))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127645127646_
                                                     (lambda (_L118396_)
                                                       (let ((_g128153_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx117619_
                         _L118354_
                         _L118396_
                         '#t))))
                 (begin
                   (let ((_g128154_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g128153_)
                                (##vector-length _g128153_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g128154_ 3)))
                         (error "Context expects 3 values" _g128154_)))
                   (let ((_ids118406_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128153_ 0)))
                         (_impls118407_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128153_ 1)))
                         (_clauses118408_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128153_ 2))))
                     (let* ((_g128155_
                             (for-each gx#core-bind-runtime! _ids118406_))
                            (_xbind118411_
                             (map _bind-e117621_ _ids118406_ _impls118407_))
                            (_expr*118413_
                             (let ((__tmp128157
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses118408_)))
                                   (__tmp128156
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp128157
                                __tmp128156)))
                            (_bind*118415_
                             (let ()
                               (declare (not safe))
                               (_bind-e__125734125735_
                                _L118354_
                                _expr*118413_
                                '#f))))
                       (let ((__tmp128159
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L118354_)))
                             (__tmp128158
                              (map gxc#identifier-symbol _ids118406_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp128159
                          '" => "
                          __tmp128158))
                       (let ((__tmp128160
                              (let ((__tmp128161
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind117762_
                                               _xbind118411_))))
                                (declare (not safe))
                                (cons _bind*118415_ __tmp128161))))
                         (declare (not safe))
                         (_lp117759_ _rest117782_ __tmp128160)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match127652127653_
                                                       (lambda (_e118374118423_
                                                                _hd118373118426_
                                                                _tl118372118428_)
                                                         (let ((_L118431_
                                                                _tl118372118428_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L118431_))
                       (___kont127643127644_ _L118431_)
                       (___kont127645127646_ _tl118372118428_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx127641127642_))
                                                      (let ((_e118374118423_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx127641127642_))))
                (let ((_tl118372118428_
                       (let () (declare (not safe)) (##cdr _e118374118423_)))
                      (_hd118373118426_
                       (let () (declare (not safe)) (##car _e118374118423_))))
                  (___match127652127653_
                   _e118374118423_
                   _hd118373118426_
                   _tl118372118428_)))
              (let () (declare (not safe)) (_g118369118383_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont127665127666_
                                          (lambda (_L118181_ _L118182_)
                                            (let* ((_g118196118226_
                                                    (lambda (_g118197118223_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118197118223_))))
                                                   (_g118195118321_
                                                    (lambda (_g118197118229_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118197118229_))
                                                          (let ((_e118203118231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118197118229_))))
                    (let ((_hd118202118234_
                           (let ()
                             (declare (not safe))
                             (##car _e118203118231_)))
                          (_tl118201118236_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118203118231_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118201118236_))
                          (let ((_e118206118239_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118201118236_))))
                            (let ((_hd118205118242_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118206118239_)))
                                  (_tl118204118244_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118206118239_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118205118242_))
                                  (let ((_e118209118247_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118205118242_))))
                                    (let ((_hd118208118250_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118209118247_)))
                                          (_tl118207118252_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118209118247_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118208118250_))
                                          (let ((_e118212118255_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118208118250_))))
                                            (let ((_hd118211118258_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118212118255_)))
                                                  (_tl118210118260_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118212118255_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd118211118258_))
                                                  (let ((_e118215118263_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd118211118258_))))
                                                    (let ((_hd118214118266_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118215118263_)))
                                                          (_tl118213118268_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118215118263_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118213118268_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118210118260_))
                      (let ((_e118218118271_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118210118260_))))
                        (let ((_hd118217118274_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118218118271_)))
                              (_tl118216118276_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118218118271_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118216118276_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl118207118252_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118204118244_))
                                      (let ((_e118221118279_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118204118244_))))
                                        (let ((_hd118220118282_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118221118279_)))
                                              (_tl118219118284_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118221118279_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118219118284_))
                                              ((lambda (_L118287_
                                                        _L118288_
                                                        _L118289_)
                                                 (let* ((_lambda-id118313_
                                                         (let ((__tmp128163
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L118182_)))
                       (__tmp128162 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp128163 __tmp128162)))
                (_lambda-id118315_
                 (let ((__tmp128164
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx117619_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id118313_ __tmp128164)))
                (_g128165_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id118315_)))
                (_new-case-lambda-expr118318_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L118287_
                    _L118289_
                    _lambda-id118315_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp128167
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L118182_)))
                                                         (__tmp128166
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id118315_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp128167
                                                      '" => "
                                                      __tmp128166))
                                                   (let ((__tmp128170
                                                          (let ((__tmp128171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__125734125735_
                            _L118182_
                            _new-case-lambda-expr118318_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp128171 _rest117782_)))
                 (__tmp128168
                  (let ((__tmp128169
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__125736125737_
                            _lambda-id118315_
                            _L118288_))))
                    (declare (not safe))
                    (cons __tmp128169 _bind117762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp117759_
                                                      __tmp128170
                                                      __tmp128168))))
                                               _hd118220118282_
                                               _hd118217118274_
                                               _hd118214118266_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118196118226_
                                                 _g118197118229_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118196118226_ _g118197118229_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g118196118226_ _g118197118229_)))
                              (let ()
                                (declare (not safe))
                                (_g118196118226_ _g118197118229_)))))
                      (let ()
                        (declare (not safe))
                        (_g118196118226_ _g118197118229_)))
                  (let ()
                    (declare (not safe))
                    (_g118196118226_ _g118197118229_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118196118226_
                                                     _g118197118229_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118196118226_
                                             _g118197118229_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118196118226_ _g118197118229_)))))
                          (let ()
                            (declare (not safe))
                            (_g118196118226_ _g118197118229_)))))
                  (let ()
                    (declare (not safe))
                    (_g118196118226_ _g118197118229_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118195118321_ _L118181_))))
                                         (___kont127667127668_
                                          (lambda (_L117905_ _L117906_)
                                            (let* ((_g117920117973_
                                                    (lambda (_g117921117970_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g117921117970_))))
                                                   (_g117919118149_
                                                    (lambda (_g117921117976_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g117921117976_))
                                                          (let ((_e117929117978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g117921117976_))))
                    (let ((_hd117928117981_
                           (let ()
                             (declare (not safe))
                             (##car _e117929117978_)))
                          (_tl117927117983_
                           (let ()
                             (declare (not safe))
                             (##cdr _e117929117978_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl117927117983_))
                          (let ((_e117932117986_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl117927117983_))))
                            (let ((_hd117931117989_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e117932117986_)))
                                  (_tl117930117991_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e117932117986_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd117931117989_))
                                  (let ((_e117935117994_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd117931117989_))))
                                    (let ((_hd117934117997_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117935117994_)))
                                          (_tl117933117999_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117935117994_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd117934117997_))
                                          (let ((_e117938118002_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd117934117997_))))
                                            (let ((_hd117937118005_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e117938118002_)))
                                                  (_tl117936118007_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e117938118002_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd117937118005_))
                                                  (let ((_e117941118010_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd117937118005_))))
                                                    (let ((_hd117940118013_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e117941118010_)))
                                                          (_tl117939118015_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e117941118010_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl117939118015_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl117936118007_))
                      (let ((_e117944118018_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl117936118007_))))
                        (let ((_hd117943118021_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117944118018_)))
                              (_tl117942118023_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117944118018_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd117943118021_))
                              (let ((_e117947118026_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd117943118021_))))
                                (let ((_hd117946118029_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117947118026_)))
                                      (_tl117945118031_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117947118026_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117945118031_))
                                      (let ((_e117950118034_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117945118031_))))
                                        (let ((_hd117949118037_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117950118034_)))
                                              (_tl117948118039_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117950118034_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd117949118037_))
                                              (let ((_e117953118042_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd117949118037_))))
                                                (let ((_hd117952118045_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e117953118042_)))
                                                      (_tl117951118047_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e117953118042_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd117952118045_))
                                                      (let ((_e117956118050_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd117952118045_))))
                (let ((_hd117955118053_
                       (let () (declare (not safe)) (##car _e117956118050_)))
                      (_tl117954118055_
                       (let () (declare (not safe)) (##cdr _e117956118050_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd117955118053_))
                      (let ((_e117959118058_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd117955118053_))))
                        (let ((_hd117958118061_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117959118058_)))
                              (_tl117957118063_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117959118058_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl117957118063_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl117954118055_))
                                  (let ((_e117962118066_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl117954118055_))))
                                    (let ((_hd117961118069_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117962118066_)))
                                          (_tl117960118071_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117962118066_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl117960118071_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117951118047_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl117948118039_))
                                                  (let ((_e117965118074_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl117948118039_))))
                                                    (let ((_hd117964118077_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e117965118074_)))
                                                          (_tl117963118079_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e117965118074_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl117963118079_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl117942118023_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl117933117999_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117930117991_))
                              (let ((_e117968118082_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117930117991_))))
                                (let ((_hd117967118085_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117968118082_)))
                                      (_tl117966118087_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117968118082_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117966118087_))
                                      ((lambda (_L118090_
                                                _L118091_
                                                _L118092_
                                                _L118093_
                                                _L118094_)
                                         (let* ((_get-kws-id118134_
                                                 (let ((__tmp128173
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L117906_)))
                                                       (__tmp128172
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128173
                                                    __tmp128172)))
                                                (_get-kws-id118136_
                                                 (let ((__tmp128174
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx117619_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id118134_
                                                    __tmp128174)))
                                                (_main-id118138_
                                                 (let ((__tmp128176
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L117906_)))
                                                       (__tmp128175
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128176
                                                    __tmp128175)))
                                                (_main-id118140_
                                                 (let ((__tmp128177
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx117619_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id118138_
                                                    __tmp128177)))
                                                (_g128178_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id118136_)))
                                                (_g128179_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id118140_)))
                                                (_new-kw-dispatch118144_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118090_
                                                    _L118094_
                                                    _get-kws-id118136_)))
                                                (_new-get-kws118146_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118091_
                                                    _L118093_
                                                    _main-id118140_))))
                                           (let ((__tmp128182
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L117906_)))
                                                 (__tmp128181
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id118136_)))
                                                 (__tmp128180
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id118140_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp128182
                                              '" => "
                                              __tmp128181
                                              '" => "
                                              __tmp128180))
                                           (let ((__tmp128183
                                                  (let ((__tmp128188
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125734125735_
                                                            _main-id118140_
                                                            _L118092_
                                                            '#f)))
                                                        (__tmp128184
                                                         (let ((__tmp128187
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__125734125735_
                           _get-kws-id118136_
                           _new-get-kws118146_
                           '#f)))
                       (__tmp128185
                        (let ((__tmp128186
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__125734125735_
                                  _L117906_
                                  _new-kw-dispatch118144_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp128186 _rest117782_))))
                   (declare (not safe))
                   (cons __tmp128187 __tmp128185))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp128188
                                                          __tmp128184))))
                                             (declare (not safe))
                                             (_lp117759_
                                              __tmp128183
                                              _bind117762_))))
                                       _hd117967118085_
                                       _hd117964118077_
                                       _hd117961118069_
                                       _hd117958118061_
                                       _hd117940118013_)
                                      (let ()
                                        (declare (not safe))
                                        (_g117920117973_ _g117921117976_)))))
                              (let ()
                                (declare (not safe))
                                (_g117920117973_ _g117921117976_)))
                          (let ()
                            (declare (not safe))
                            (_g117920117973_ _g117921117976_)))
                      (let ()
                        (declare (not safe))
                        (_g117920117973_ _g117921117976_)))
                  (let ()
                    (declare (not safe))
                    (_g117920117973_ _g117921117976_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g117920117973_
                                                     _g117921117976_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g117920117973_
                                                 _g117921117976_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g117920117973_
                                             _g117921117976_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g117920117973_ _g117921117976_)))
                              (let ()
                                (declare (not safe))
                                (_g117920117973_ _g117921117976_)))))
                      (let ()
                        (declare (not safe))
                        (_g117920117973_ _g117921117976_)))))
              (let ()
                (declare (not safe))
                (_g117920117973_ _g117921117976_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g117920117973_
                                                 _g117921117976_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117920117973_ _g117921117976_)))))
                              (let ()
                                (declare (not safe))
                                (_g117920117973_ _g117921117976_)))))
                      (let ()
                        (declare (not safe))
                        (_g117920117973_ _g117921117976_)))
                  (let ()
                    (declare (not safe))
                    (_g117920117973_ _g117921117976_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g117920117973_
                                                     _g117921117976_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g117920117973_
                                             _g117921117976_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g117920117973_ _g117921117976_)))))
                          (let ()
                            (declare (not safe))
                            (_g117920117973_ _g117921117976_)))))
                  (let ()
                    (declare (not safe))
                    (_g117920117973_ _g117921117976_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g117919118149_ _L117905_))))
                                         (___kont127669127670_
                                          (lambda (_L117856_ _L117857_)
                                            (let ((__tmp128189
                                                   (let ((__tmp128190
                                                          (let ((__tmp128191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128192
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L117856_))))
                           (declare (not safe))
                           (cons __tmp128192 '()))))
                    (declare (not safe))
                    (cons _L117857_ __tmp128191))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128190
                                                           _bind117762_))))
                                              (declare (not safe))
                                              (_lp117759_
                                               _rest117782_
                                               __tmp128189)))))
                                     (let* ((___match127736127737_
                                             (lambda (_e117816117881_
                                                      _hd117815117884_
                                                      _tl117814117886_
                                                      _e117819117889_
                                                      _hd117818117892_
                                                      _tl117817117894_
                                                      _e117822117897_
                                                      _hd117821117900_
                                                      _tl117820117902_)
                                               (let ((_L117905_
                                                      _hd117821117900_)
                                                     (_L117906_
                                                      _hd117818117892_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L117906_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L117905_)))
                                                     (___kont127667127668_
                                                      _L117905_
                                                      _L117906_)
                                                     (___kont127669127670_
                                                      _hd117821117900_
                                                      _hd117815117884_)))))
                                            (___match127714127715_
                                             (lambda (_e117805118157_
                                                      _hd117804118160_
                                                      _tl117803118162_
                                                      _e117808118165_
                                                      _hd117807118168_
                                                      _tl117806118170_
                                                      _e117811118173_
                                                      _hd117810118176_
                                                      _tl117809118178_)
                                               (let ((_L118181_
                                                      _hd117810118176_)
                                                     (_L118182_
                                                      _hd117807118168_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118182_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L118181_)))
                                                     (___kont127665127666_
                                                      _L118181_
                                                      _L118182_)
                                                     (___match127736127737_
                                                      _e117805118157_
                                                      _hd117804118160_
                                                      _tl117803118162_
                                                      _e117808118165_
                                                      _hd117807118168_
                                                      _tl117806118170_
                                                      _e117811118173_
                                                      _hd117810118176_
                                                      _tl117809118178_)))))
                                            (___match127692127693_
                                             (lambda (_e117794118329_
                                                      _hd117793118332_
                                                      _tl117792118334_
                                                      _e117797118337_
                                                      _hd117796118340_
                                                      _tl117795118342_
                                                      _e117800118345_
                                                      _hd117799118348_
                                                      _tl117798118350_)
                                               (let ((_L118353_
                                                      _hd117799118348_)
                                                     (_L118354_
                                                      _hd117796118340_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118354_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L118353_)))
                                                     (___kont127663127664_
                                                      _L118353_
                                                      _L118354_)
                                                     (___match127714127715_
                                                      _e117794118329_
                                                      _hd117793118332_
                                                      _tl117792118334_
                                                      _e117797118337_
                                                      _hd117796118340_
                                                      _tl117795118342_
                                                      _e117800118345_
                                                      _hd117799118348_
                                                      _tl117798118350_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx127661127662_))
                                           (let ((_e117794118329_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx127661127662_))))
                                             (let ((_tl117792118334_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e117794118329_)))
                                                   (_hd117793118332_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e117794118329_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd117793118332_))
                                                   (let ((_e117797118337_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd117793118332_))))
                                                     (let ((_tl117795118342_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e117797118337_)))
                                                           (_hd117796118340_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e117797118337_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl117795118342_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl117792118334_))
                       (let ((_e117800118345_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl117792118334_))))
                         (let ((_tl117798118350_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e117800118345_)))
                               (_hd117799118348_
                                (let ()
                                  (declare (not safe))
                                  (##car _e117800118345_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl117798118350_))
                               (___match127692127693_
                                _e117794118329_
                                _hd117793118332_
                                _tl117792118334_
                                _e117797118337_
                                _hd117796118340_
                                _tl117795118342_
                                _e117800118345_
                                _hd117799118348_
                                _tl117798118350_)
                               (let ()
                                 (declare (not safe))
                                 (_g117788117835_)))))
                       (let () (declare (not safe)) (_g117788117835_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl117792118334_))
                       (let ((_e117830117848_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl117792118334_))))
                         (let ((_tl117828117853_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e117830117848_)))
                               (_hd117829117851_
                                (let ()
                                  (declare (not safe))
                                  (##car _e117830117848_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl117828117853_))
                               (___kont127669127670_
                                _hd117829117851_
                                _hd117793118332_)
                               (let ()
                                 (declare (not safe))
                                 (_g117788117835_)))))
                       (let () (declare (not safe)) (_g117788117835_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl117792118334_))
                                                       (let ((_e117830117848_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl117792118334_))))
                 (let ((_tl117828117853_
                        (let () (declare (not safe)) (##cdr _e117830117848_)))
                       (_hd117829117851_
                        (let () (declare (not safe)) (##car _e117830117848_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl117828117853_))
                       (___kont127669127670_ _hd117829117851_ _hd117793118332_)
                       (let () (declare (not safe)) (_g117788117835_)))))
               (let () (declare (not safe)) (_g117788117835_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g117788117835_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest117763117771_))
                             (let ((_hd117768118449_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest117763117771_)))
                                   (_tl117769118451_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest117763117771_))))
                               (let* ((_hd118454_ _hd117768118449_)
                                      (_rest118456_ _tl117769118451_))
                                 (declare (not safe))
                                 (_K117767118446_ _rest118456_ _hd118454_)))
                             (let ()
                               (declare (not safe))
                               (_else117765117779_))))))))
          (let* ((___stx127753127754_ _stx117619_)
                 (_g117625117652_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx127753127754_)))))
            (let ((___kont127755127756_
                   (lambda (_L117712_ _L117713_ _L117714_)
                     (let ((__tmp128194
                            (lambda ()
                              (let ((_hd117751_
                                     (let ((__tmp128195
                                            (let ((__tmp128196
                                                   (lambda (_g117743117746_
                                                            _g117744117748_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g117743117746_
                                                             _g117744117748_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128196
                                                      '()
                                                      _L117713_))))
                                       (declare (not safe))
                                       (_compile-bindings117622_ __tmp128195)))
                                    (_body117752_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L117712_))))
                                (let ((__tmp128197
                                       (let ((__tmp128198
                                              (let ((__tmp128199
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body117752_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd117751_
                                                      __tmp128199))))
                                         (declare (not safe))
                                         (cons _L117714_ __tmp128198))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp128197
                                   _stx117619_)))))
                           (__tmp128193
                            (let ((__obj127818
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj127818)
                              __obj127818)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp128194
                        gx#current-expander-context
                        __tmp128193))))
                  (___kont127759127760_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx117619_)))))
              (let ((___match127780127781_
                     (lambda (_e117632117664_
                              _hd117631117667_
                              _tl117630117669_
                              _e117635117672_
                              _hd117634117675_
                              _tl117633117677_
                              ___splice127757127758_
                              _target117636117680_
                              _tl117638117682_)
                       (letrec ((_loop117639117685_
                                 (lambda (_hd117637117688_ _bind117643117690_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd117637117688_))
                                       (let ((_e117640117693_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd117637117688_))))
                                         (let ((_lp-tl117642117698_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e117640117693_)))
                                               (_lp-hd117641117696_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e117640117693_))))
                                           (let ((__tmp128202
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd117641117696_
                                                          _bind117643117690_))))
                                             (declare (not safe))
                                             (_loop117639117685_
                                              _lp-tl117642117698_
                                              __tmp128202))))
                                       (let ((_bind117644117701_
                                              (reverse _bind117643117690_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl117633117677_))
                                             (let ((_e117647117704_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl117633117677_))))
                                               (let ((_tl117645117709_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e117647117704_)))
                                                     (_hd117646117707_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e117647117704_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl117645117709_))
                                                     (let ((_L117712_
                                                            _hd117646117707_)
                                                           (_L117713_
                                                            _bind117644117701_)
                                                           (_L117714_
                                                            _hd117631117667_))
                                                       (if (let ((__tmp128200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128201
                                 (lambda (_g117735117738_ _g117736117740_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g117735117738_ _g117736117740_)))))
                            (declare (not safe))
                            (foldr1 __tmp128201 '() _L117713_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp128200))
                   (___kont127755127756_ _L117712_ _L117713_ _L117714_)
                   (___kont127759127760_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont127759127760_))))
                                             (___kont127759127760_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop117639117685_ _target117636117680_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx127753127754_))
                    (let ((_e117632117664_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx127753127754_))))
                      (let ((_tl117630117669_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117632117664_)))
                            (_hd117631117667_
                             (let ()
                               (declare (not safe))
                               (##car _e117632117664_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl117630117669_))
                            (let ((_e117635117672_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl117630117669_))))
                              (let ((_tl117633117677_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e117635117672_)))
                                    (_hd117634117675_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e117635117672_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd117634117675_))
                                    (let ((___splice127757127758_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd117634117675_
                                              '0))))
                                      (let ((_tl117638117682_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127757127758_
                                                '1)))
                                            (_target117636117680_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127757127758_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl117638117682_))
                                            (___match127780127781_
                                             _e117632117664_
                                             _hd117631117667_
                                             _tl117630117669_
                                             _e117635117672_
                                             _hd117634117675_
                                             _tl117633117677_
                                             ___splice127757127758_
                                             _target117636117680_
                                             _tl117638117682_)
                                            (___kont127759127760_))))
                                    (___kont127759127760_))))
                            (___kont127759127760_))))
                    (___kont127759127760_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind117537_)
        (let* ((___stx127783127784_ _bind117537_)
               (_g117540117557_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127783127784_)))))
          (let ((___kont127785127786_
                 (lambda (_L117593_ _L117594_)
                   (if (let () (declare (not safe)) (gx#identifier? _L117594_))
                       (let ((_$e117610_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L117593_))))
                         (if _$e117610_
                             _$e117610_
                             (let ((_$e117613_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L117593_))))
                               (if _$e117613_
                                   _$e117613_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L117593_))))))
                       '#f)))
                (___kont127787127788_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127783127784_))
                (let ((_e117546117569_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127783127784_))))
                  (let ((_tl117544117574_
                         (let () (declare (not safe)) (##cdr _e117546117569_)))
                        (_hd117545117572_
                         (let ()
                           (declare (not safe))
                           (##car _e117546117569_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd117545117572_))
                        (let ((_e117549117577_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd117545117572_))))
                          (let ((_tl117547117582_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117549117577_)))
                                (_hd117548117580_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117549117577_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl117547117582_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl117544117574_))
                                    (let ((_e117552117585_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl117544117574_))))
                                      (let ((_tl117550117590_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e117552117585_)))
                                            (_hd117551117588_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e117552117585_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl117550117590_))
                                            (___kont127785127786_
                                             _hd117551117588_
                                             _hd117548117580_)
                                            (___kont127787127788_))))
                                    (___kont127787127788_))
                                (___kont127787127788_))))
                        (___kont127787127788_))))
                (___kont127787127788_))))))))
